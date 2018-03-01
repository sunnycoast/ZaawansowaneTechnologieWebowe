<!DOCTYPE HTML>
<html lang="pl">
<head>
	<meta charset="utf-8" />
	<title>Podsumowanie</title>
	<script type="text/javascript" src="zamowienie.js"></script>
	<script type="text/javascript">
		<?php
			require_once "zamowienie.php";
			require_once "zamowienie_akceptowane.php";
			require_once "zamowienie_kod.php";
		?>
		var suA = 0;
		var suVat = 0;
		var su = 0;

		function isZam()
		{
			document.getElementById("zamZatw").setAttribute("style", "background-color: green");
			document.getElementById("zamZatw").disabled = false;
		}

		function noZam()
		{
			document.getElementById("zamZatw").setAttribute("style", "background-color: gray");
			document.getElementById("zamZatw").disabled = true;
		}

		function AnZamDodEd()
		{
			var el = document.getElementById("zamStart");
			el.innerText = "Anuluj zamówienie dodatkowe";
			el.setAttribute("onclick", "AnZamDod()");
		}

		function zamowieniaA()
		{
			var sqr = "";
			if(tZaA.length>0)
			{
				var cl;
				var lp = 0;
				suA = 0;
				suVat = 0;
				tZaA.forEach(function(el, i) 
				{
					if(lp++%2==1)
						 {    cl = "cListP";   }
					else {    cl = "cListN";   }
						var rz = el["cena"]*el["ilosc"];
						suA+=rz;
						sqr+='<tr class="'+cl+'">';
						sqr+='<td class="cListNa  ">'+el["nazw"]+'</td>';
						sqr+='<td class="cListCn r">'+FD(el["cena"])+' zł</td>';
						sqr+='<td class="cListIl r">'+el["ilosc"]+'</td>';
						sqr+='<td class="cListRz r">'+FD(rz)+' zł</td>';
						sqr+= '<td class="cListBt"></td>';
						var vat = ""+el["vat"];
						if(vat.charAt(2)==0)
							vat = vat.charAt(3);
						else
							vat = vat.charAt(2)+vat.charAt(3);
						suVat+=el["vat"]*rz;
						sqr+='<td class="cListRz r">'+vat+' %</td>';
						sqr+='<td class="cListRz r">'+FD(el["vat"]*rz)+' zł</td>';
						sqr+='<td class="cListSt c">'+"Przyjęte do realizacji."+' </td>';
						sqr+='<td class="cListOp">'+el["opis"]+' </td></tr>';
				});
				sqr= '</tr>'+sqr;
				sqr= '<td class="c cListOp" >Opis</td>'+sqr;
				sqr= '<td class="c cListSt" >Stan realizacji</td>'+sqr;
				sqr= '<td class="c cListRz" >Razem VAT</td>'+sqr;
				sqr= '<td class="c cListRz" >VAT</td>'+sqr;
				sqr= '<td class="cListBt"></td>'+sqr;
				sqr= '<td class="c cListRz" >Razem</td>'+sqr;
				sqr= '<td class="c cListIl" >Ilość</td>'+sqr;
				sqr= '<td class="c cListCn" >Cena</td>'+sqr;
				sqr= '<td class="c cListNa" >Nazwa</td>'+sqr;
				sqr= '<tr>'+sqr;

				sqr= '</tr>'+sqr;
				sqr= '<td colspan="9" class="c" >Twoje zamówienie:</td>'+sqr;
				sqr= '<tr>'+sqr;

				sqr= '<table style="margin-left: 2px">'+sqr;

				if(su==0)
				{
					sqr+= '<tr>';
					sqr+= '<td class="r" colspan="3">Suma: </td>';
					sqr+= '<td class="r">'+FD(suA)+' zł</td>';
					sqr+= '<td class="r" colspan="2">Suma VAT: </td>';
					sqr+= '<td class="r">'+FD(suVat)+' zł</td>';
					sqr+= '</tr>';
				}

				sqr+= '</table>';
				AnZamDodEd();
			}
			return sqr;
		}

		function zamowienia()
		{
			var sqr = "";
			var cl;
			var lp = 0;
			su = 0;
			var suVatT = 0;
			tZam.forEach(function(el, i) 
			{
				if(tZam[i]!=undefined)
				{
					if(lp++%2==1)
						 {    cl = "cListP";   }
					else {    cl = "cListN";   }
						var rz = el["cena"]*el["ilosc"];
						su+=rz;
						sqr+='<tr class="'+cl+'">';
						sqr+='<td class="cListNa  ">'+el["nazw"]+'</td>';
						sqr+='<td class="cListCn r">'+FD(el["cena"])+' zł</td>';
						sqr+='<td class="cListIl r">'+el["ilosc"]+'</td>';
						sqr+='<td class="cListRz r">'+FD(rz)+' zł</td>';
						sqr+='<td>';
						sqr+='<button onclick="inc('+i+')" class="'+cl+' smButton">+</button>';
						sqr+='<button onclick="dec('+i+')" class="'+cl+' smButton">-</button>';
						sqr+='<button onclick="del('+i+')" class="'+cl+' smButton">X</button>';
						sqr+='</td>';
						var vat = ""+el["vat"];
						if(vat.charAt(2)==0)
							vat = vat.charAt(3);
						else
							vat = vat.charAt(2)+vat.charAt(3);
						suVatT+=el["vat"]*rz;
						sqr+='<td class="cListRz r">'+vat+' %</td>';
						sqr+='<td class="cListRz r">'+FD(el["vat"]*rz)+' zł</td>';
						sqr+='<td class="cListSt c">'+"W trakcie kompletowania."+' </td>';
						sqr+='<td class="cListOp">'+el["opis"]+' </td></tr>';
				}
			});
			if(su>0)
			{
				sqr+= '<tr>';
				sqr+= '<td class="r" colspan="3">Suma: </td>';
				sqr+= '<td class="r">'+FD(su+suA)+' zł</td>';
				sqr+= '<td class="r" colspan="2">Suma VAT: </td>';
				sqr+= '<td class="r">'+FD(suVatT+suVat)+' zł</td>';
				sqr+= '</tr>';

				sqr= '</tr>'+sqr;
				sqr= '<td class="c cListOp" >Opis</td>'+sqr;
				sqr= '<td class="c cListSt" >Stan realizacji</td>'+sqr;
				sqr= '<td class="c cListRz" >Razem VAT</td>'+sqr;
				sqr= '<td class="c cListRz" >VAT</td>'+sqr;
				sqr= '<td class="cListBt"></td>'+sqr;
				sqr= '<td class="c cListRz" >Razem</td>'+sqr;
				sqr= '<td class="c cListIl" >Ilość</td>'+sqr;
				sqr= '<td class="c cListCn" >Cena</td>'+sqr;
				sqr= '<td class="c cListNa" >Nazwa</td>'+sqr;
				sqr= '<tr>'+sqr;
				if(tZaA.length>0)
				{
					sqr= '</tr>'+sqr;
					sqr= '<td colspan="9" class="c" >Dodatkowe zamówienie:</td>'+sqr;
					sqr= '<tr>'+sqr;
				}
				sqr= '<table style="margin-left: 2px">'+sqr;
				sqr += '</table>';
				isZam();
			}
			else noZam();
			document.getElementById("pZaA").innerHTML = zamowieniaA();
			return sqr;
		}

		function myMain()
		{
			zegar();
			document.getElementById("pZaA").innerHTML = zamowieniaA();
			document.getElementById("pZam").innerHTML = zamowienia();
		}

		window.onload = myMain;
	</script>
	<link rel="stylesheet" href="css.css">
	<style>


		.cListSt
		{
			width: 200px;
		}

		.cListOp
		{
			padding-left: 10px;
			padding-right: 10px;
			width: 490px;
			overflow: hidden;;
		}

		.cBattonNavKat
		{
		    width: 49.5%;
		    height: 10%;
		}

		.boix > .zam
		{     width: 100%;    }

		.pZam
		{    height: 538px;    }

		.cBattonNavZam
		{
			width: 50%;
			background-color: gray;
		}

	</style>
</head>
<body>
	<div class="boix">
		<div class="zam">
			<button id="sub1" class="cBattonNavZam" onclick="zamPods()" disabled>Zamówienie</button>
			<button class="cBattonNavKat" onclick="zamKom()">Kategorie</button>
			<div class="pZam">
				<div id="pZaA" ></div>
				<div id="pZam"></div>
			</div>
		</div>
 	</div>
 	
	<div>
		<div id="zeg" class="zeg"></div>
		<button id="zamZatw" class="f1Batton" onclick="zamZatw()">Zamawiam</button>
		<button id="zamStart" class="f2Batton" onclick="zamStart()">Anuluj zamówienie</button>
		<button class="f3Batton" onclick="zamKom()">Powrót</button>
	</div>

	<form id="link" method="POST"></form>

	<footer id="cOrder">
		<details>
		  <summary>Copyright 2018. All Rights Reserved &copy;</summary>
		  <p>Adamus Mateusz, Śledź Kacper - Politechnika Wrocławsk ISBD Projekt <p>
		</details>
	</footer>

</body>
</html>