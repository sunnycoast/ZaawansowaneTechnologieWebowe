<!DOCTYPE HTML>
<html lang="pl">
<head>
	<meta charset="utf-8" />
	<title>Projekt Restauracja</title>
	<script type="text/javascript" src="zamowienie.js"></script>
	<script type="text/javascript">
		<?php
			require_once "zamowienie_akceptowane.php";
			require_once "zamowienie_kod.php";
		?>
		var suA = 0;
		var su = 0;

		function zamowieniaA()
		{
			var sqr = "";
			if(tZaA.length>0)
			{
				var cl;
				var lp = 0;
				suA = 0;
				var suVat = 0;
				tZaA.forEach(function(el, i) 
				{
					if(lp++%2==1)
						 {    cl = "cListP";   }
					else {    cl = "cListN";   }
						var rz = el["cena"]*el["ilosc"];
						suA+=rz;
						sqr+='<tr class="'+cl+'">';
						sqr+='<td class="cListNa  ">'+el["nazw"]+'</td>';
						sqr+='<td class="cListCn r">'+el["cena"].toFixed(2)+' zł</td>';
						sqr+='<td class="cListIl r">'+el["ilosc"]+'</td>';
						sqr+='<td class="cListRz r">'+rz.toFixed(2)+' zł</td>';
						var vat = ""+el["vat"];
						if(vat.charAt(2)==0)
							vat = vat.charAt(3);
						else
							vat = vat.charAt(2)+vat.charAt(3);
						suVat+=el["vat"]*rz;
						sqr+='<td class="cListRz r">'+vat+' %</td>';
						sqr+='<td class="cListRz r">'+(el["vat"]*rz).toFixed(2)+' zł</td>';
						sqr+='<td class="cListSt c">'+"Przyjęte do realizacji."+' </td>';
						sqr+='<td class="cListOp">'+el["opis"]+'</td></tr>';
				});
				sqr= '</tr>'+sqr;
				sqr= '<td class="c cListOp" >Opis</td>'+sqr;
				sqr= '<td class="c cListSt" >Stan realizacji</td>'+sqr;
				sqr= '<td class="c cListRz" >Razem VAT</td>'+sqr;
				sqr= '<td class="c cListIl" >VAT</td>'+sqr;
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
					sqr+= '<td class="r">'+(suA).toFixed(2)+' zł</td>';
					sqr+= '<td class="r">Suma VAT: </td>';
					sqr+= '<td class="r">'+(suVat).toFixed(2)+' zł</td>';
					sqr+= '</tr>';
				}

				sqr+= '</table>';
				AnZamDodEd();
			}
			return sqr;
		}

		function AnZamDodEd(){}

		function myMain()
		{
			zegar();
			document.getElementById("pZaA").innerHTML = zamowieniaA();
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
			width: 575px;
			overflow: hidden;;
		}

		.cListN
		{
			background-color: #CCCCCC;
		}

		.cListP
		{
			background-color: #EEEEEE;
		}

		.cListNa
		{
			width: 100px;
		}

		.cListCn
		{
			width: 65px;
		}

		.cListIl
		{
			width: 35px;
		}

		.cListRz
		{
			width: 85px;
		}

		.cListBt
		{
			width: 75px;
		}
		.smButton
		{
			width:  25px;
			height: 25px;
		}

		.boix > .zam
		{
			width: 100%;
			overflow: hidden;
		}

		.pZam
		{
			height: 538px;
		}

		.f1Batton 
		{
		    background-color: silver;
		}

		.f2Batton 
		{
		    background-color: yellow;
		}

		.cBattonNavKat
		{
			width: 50%;
		}

	</style>
</head>
<body>
	<div class="boix">
		<div class="zam">
			<button id="sub1" class="cBattonNavZam" onclick="zamPods()" disabled>Zamówienie</button>
			<button class="cBattonNavKat" onclick="zamDod()">Kategorie</button>
			<div class="pZam">
				<div id="pZaA" ></div>
				<div id="pZam"></div>
			</div>
		</div>
 	</div>
 	
	<div>
		<div id="zeg" class="zeg"></div>
		<button class="f1Batton" onclick="karta()">Karta</button>
		<button class="f2Batton" onclick="gotowka()">Gotówka</button>
		<button class="f3Batton" onclick="zamZatwB()">Powrót</button>
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