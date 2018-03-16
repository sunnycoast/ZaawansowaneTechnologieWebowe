var alpha = "99";

function greetings()
{
	var inscription = window.prompt("Proszę podaj swoje imię");
	window.alert("Witaj serdecznie "+inscription+"! Teraz będziesz mógł skompletować swoje zamówienie.");
}

function zegar()
{
	var data = new Date();

	document.getElementById("zeg").innerHTML = FI(data.getHours(), 2)+":"+FI(data.getMinutes(), 2)+":"+FI(data.getSeconds(), 2)+"<br/>"+FI(data.getDate(), 2)+"/"+FI(data.getMonth()+1, 2)+"/"+data.getFullYear();

	setTimeout("zegar()", 1000)
}

function getTime()
{
	var data = new Date();
	return FI(data.getHours(), 2)+":"+FI(data.getMinutes(), 2)+":"+FI(data.getSeconds(), 2);
}

function FD(num)
{
	num = ""+num.toFixed(2);
	var sqr = "";
	if(num.length>6)
		for(var i=num.length-1; i>=0; i--)
		{
			if( i%3==0 && (i+4)<num.length )
				sqr = num.charAt(i)+" "+sqr;
			else sqr = num.charAt(i)+sqr;
		}
	else sqr = num;
	return sqr
}

function FI(num, size)
{
	var sqr = ""+num;
	while(sqr.length < size)
	{
		sqr="0"+num;
	}
	return sqr;
}

function kafelki(kaf)
{
	document.getElementById("pKat").innerHTML = kaf;
}

function otwKat(kat)
{
	document.getElementById("pKat").innerHTML = pozycjeMenu(kat);
	if(tZak[kat]==undefined)
	{
		cZak=kat;
		tZak[kat] = tKat[kat]["nazw"];
		document.getElementById("nKat").innerHTML = zaklatki();
	}
}

function zaklatki()
{
	var sqr = "";
	var przes= 0;
	tZak.forEach(function(el, i) 
		{
			if(el!=undefined)
			{
				sqr += '<button onclick="zaklatkiDel('+i+')" class="X" style="background-color: #'+tKat[i]["kol"]+alpha+'">X</button>';
				sqr += '<button class="cBattonZak" onclick="otwKat('+i+')" style="background-color: #'+tKat[i]["kol"]+alpha+'">'+el+'</button>';
			}
		});
	return sqr;
}

function zaklatki()
{
	var sqr = "";
	var przes= 0;
	tZak.forEach(function(el, i) 
		{
			if(el!=undefined)
			{
				sqr += '<button onclick="zaklatkiDel('+i+')" class="X" style="background-color: #'+tKat[i]["kol"]+alpha+'">X</button>';
				sqr += '<button class="cBattonZak" onclick="otwKat('+i+')" style="background-color: #'+tKat[i]["kol"]+alpha+'">'+el+'</button>';
			}
		});
	return sqr;
}

function zaklatkiDel(i)
{
	tZak[i]= undefined;
	if(cZak==i)
		kafelki(kategorie());
	document.getElementById("nKat").innerHTML = zaklatki();
}

function kategorie()
{
	var sqr = "";
	tKat.forEach(function(el, i) 
		{
			sqr += '<button class="cBattonKat", onclick="otwKat('+i+')", style="background-color: #'+el["kol"]+alpha+';">'+el["nazw"]+'</button>';
		});
	return sqr;
}

function pozycjeMenu(kat)
{
	var sqr = "";
	tPMe.forEach(function(el, i) 
		{
			if(tKat[kat]["id"]==el["kat"])
			{
				//*
				sqr += '<div class="cKategoria">';
				sqr += '<div class="cKateg" onclick="dodajProdukt('+i+')" style="background-color: #'+tKat[kat]["kol"]+alpha+';">';
				sqr += el["nazw"]+'<br/>'+FD(el["cena"])+' zł</div>';
				sqr += '<div class="cDivOp">'+el["opis"]+'</div>';
				sqr += '</div>';
			}
		});
	return sqr;
}

function sort(tab)
{
	var temp = [];
	temp[0] = tab[0];
	for(var i =1; i<tab.length; i++)
	{
		var j=0;
	}
	return temp;
}

function dodajProdukt(poz)
{
	document.getElementById("pZam").innerHTML = poz;
	if(tZam[poz] == undefined)
	{
	    tZam[poz] = { "id":tPMe[poz]["id"], "nazw":tPMe[poz]["nazw"], "cena":tPMe[poz]["cena"], "vat":tPMe[poz]["vat"], "ilosc":1, "czas":getTime() };
	}
	else 
	{
		tZam[poz]["ilosc"]++;
	}
	document.getElementById("pZam").innerHTML = zamowienia();
}

function zamowieniaA()
{
	var sqr = "";
	if(tZaA.length>0)
	{
		var cl;
		var lp = 0;
		suA = 0;
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
				sqr+= '<td class="cListBt"></td></tr>';
		});
		sqr= '</tr>'+sqr;
		sqr= '<td class="cListBt"></td>'+sqr;
		sqr= '<td class="c cListRz" >Razem</td>'+sqr;
		sqr= '<td class="c cListIl" >Ilość</td>'+sqr;
		sqr= '<td class="c cListCn" >Cena</td>'+sqr;
		sqr= '<td class="c cListNa" >Nazwa</td>'+sqr;
		sqr= '<tr>'+sqr;

		sqr= '</tr>'+sqr;
		sqr= '<td colspan="5" class="c" >Twoje zamówienie:</td>'+sqr;
		sqr= '<tr>'+sqr;

		sqr= '<table style="margin-left: 2px">'+sqr;

		if(su==0)
		{
			sqr+= '<tr>';
			sqr+= '<td class="r" colspan="3">Suma: </td>';
			sqr+= '<td class="r">'+FD(suA)+' zł</td>';
			sqr+= '</tr>';
		}

		sqr+= '</table>';
		AnZamDodEd();
	}
	return sqr;
}

function tZamtZaASend()
{
	var sqr = [];
	sqr[0] = '<input name="zkod" type="nymber" class="nv" value="'+zkod+'"/><br><br>';
	sqr[1] = '<input name="zkod" type="nymber" class="nv" value="'+zkod+'"/><br><br>';
	var ii=0;
	tZam.forEach(function(el, i) 
	{
		if(el!=undefined)
		{
			sqr[0]+='<input name="id'+ii+'" type="nymber" class="nv" value="'+el["id"] 	 +'"/>';
			sqr[0]+='<input name="nz'+ii+'" type="text"   class="nv" value="'+el["nazw"] +'"/>';
			sqr[0]+='<input name="cn'+ii+'" type="number" class="nv" value="'+el["cena"] +'"/>';
			sqr[0]+='<input name="il'+ii+'" type="number" class="nv" value="'+el["ilosc"]+'"/>';
			sqr[0]+='<input name="cz'+ii+'" type="text"   class="nv" value="'+el["czas"]+'"/><br>';
			ii++;
		}
	});
	if(ii>0)
		sqr[0]+='<input name="i" type="nymber" class="nv" value="'+(ii)+'"/><br>';
	if(tZaA.length>0)
	{
		var zz=0;
		tZaA.forEach(function(el, i) 
		{
			sqr[1]+='<input name="zid'+zz+'" type="nymber" class="nv" value="'+el["id"]	  +'"/>';
			sqr[1]+='<input name="znz'+zz+'" type="text"   class="nv" value="'+el["nazw"] +'"/>';
			sqr[1]+='<input name="zcn'+zz+'" type="number" class="nv" value="'+el["cena"] +'"/>';
			sqr[1]+='<input name="zil'+zz+'" type="number" class="nv" value="'+el["ilosc"]+'"/><br>';
			zz++;
		});
		sqr[1]+='<input name="z" type="nymber" class="nv" value="'+(zz)+'"/><br>';
	}
	return sqr;
}

function tZaASend()
{
	var sqr ='<input name="zkod" type="nymber" class="nv" value="'+zkod+'"/><br><br>';
	if(tZaA.length>0)
	{
		var zz=0;
		tZaA.forEach(function(el, i) 
		{
			sqr+='<input name="zid'+zz+'" type="nymber" class="nv" value="'+el["id"]   +'"/>';
			sqr+='<input name="znz'+zz+'" type="text"   class="nv" value="'+el["nazw"] +'"/>';
			sqr+='<input name="zcn'+zz+'" type="number" class="nv" value="'+el["cena"] +'"/>';
			sqr+='<input name="zil'+zz+'" type="number" class="nv" value="'+el["ilosc"]+'"/><br>';
			zz++;
		});
		sqr+='<input name="z" type="nymber" class="nv" value="'+(zz)+'"/><br>';
	}
	return sqr;
}

function zamKom()
{
	var link =document.getElementById("link");
	link.setAttribute("action", "zamowienie_kompletowanie.php");
	var sqr = tZamtZaASend();
	link.innerHTML = sqr[0]+sqr[1];
	link.submit();
}

function zamPods()
{
	var el = document.getElementById("link");
	el.setAttribute("action", "zamowienie_podsumowanie.php");
	var sqr = tZamtZaASend();
	link.innerHTML = sqr[0]+sqr[1];
	el.submit();
}

function zamDod()
{
	var link =document.getElementById("link");
	link.innerHTML = tZaASend();
	link.setAttribute("action", "zamowienie_kompletowanie.php");
	link.submit();
}

function zamZaplac()
{
	var link =document.getElementById("link");
	link.innerHTML = tZaASend();
	link.setAttribute("action", "zamowienie_zaplac.php");
	link.submit();
}

function zamZatwB()
{
	var link =document.getElementById("link");
	link.innerHTML = tZaASend();
	link.setAttribute("action", "zamowienie_zrealizowane.php");
	link.submit();
}

function zamZatw()
{
	if(window.confirm("Uwaga po tej akcji Twoje zamówienie zostanie przekazane do realizacji, nie będzie mogło one już zostać anulowane.\nCzy chcesz kontynuować?"))
	{
		var sqr = '<input name="zkod" type="nymber" class="nv" value="'+zkod+'"/><br><br>';
		var zz=0;
		if(tZaA.length>0)
		{
			tZaA.forEach(function(el, i) 
			{
				sqr+='<input name="zid'+zz+'" type="nymber" class="nv" value="'+el["id"]   +'"/>';
				sqr+='<input name="znz'+zz+'" type="text"   class="nv" value="'+el["nazw"] +'"/>';
				sqr+='<input name="zcn'+zz+'" type="number" class="nv" value="'+el["cena"] +'"/>';
				if(tZam[i]==undefined)
					sqr+='<input name="zil'+zz+'" type="number" class="nv" value="'+el["ilosc"]+'"/><br>';
				else
				{
					sqr+='<input name="zil'+zz+'" type="number" class="nv" value="'+(el["ilosc"]+tZam[i]["ilosc"])+'"/><br>';
					tZam[i]=undefined;
				}
				zz++;
			});
		}
		var ii=0;
		tZam.forEach(function(el, i) 
		{
			if(tZam[i]!=undefined)
			{
				sqr+='<input name="zid'+(zz+ii)+'" type="nymber" class="nv" value="'+el["id"]   +'"/>';
				sqr+='<input name="znz'+(zz+ii)+'" type="text"   class="nv" value="'+el["nazw"] +'"/>';
				sqr+='<input name="zcn'+(zz+ii)+'" type="number" class="nv" value="'+el["cena"] +'"/>';
				sqr+='<input name="zil'+(zz+ii)+'" type="number" class="nv" value="'+el["ilosc"]+'"/><br>';
				ii++;
			}
		});
		sqr='<input name="z" type="nymber" class="nv" value="'+(ii+zz)+'"/><br>'+sqr;
		var link =document.getElementById("link");
		link.setAttribute("action", "zamowienie_zrealizowane.php");
		link.innerHTML = sqr;
		link.submit();
	}
}

function PowZamDod()
{
	var link =document.getElementById("link");
	link.innerHTML = tZaASend();
	link.setAttribute("action", "zamowienie_zrealizowane.php");
	link.submit();
}

function AnZamDod()
{
	var sqr = tZamtZaASend();
	confText = "Czy na pewno chcesz anulować zamówienie dodatkowe?\n";
	if(sqr[0]!="")
		confText+="Spowoduje to usunięcie nowo dodanych pozycji z menu i powrót do okna zamówienia.";
	if( window.confirm(confText) )
	{
		var link =document.getElementById("link");
		link.setAttribute("action", "zamowienie_zrealizowane.php");
		link.innerHTML = sqr[1];
		link.submit();
	}
}

function zamowienia()
{
	var sqr = "";
	var cl;
	var lp = 0;
	su = 0;
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
				sqr+='</td></tr>';
		}
	});
	if(su>0)
	{
		sqr+= '<tr>';
		sqr+= '<td class="r" colspan="3">Suma: </td>';
		sqr+= '<td class="r">'+FD(su+suA)+' zł</td>';
		sqr+= '</tr>';

		sqr= '</tr>'+sqr;
		sqr= '<td class="cListBt"></td>'+sqr;
		sqr= '<td class="c cListRz" >Razem</td>'+sqr;
		sqr= '<td class="c cListIl" >Ilość</td>'+sqr;
		sqr= '<td class="c cListCn" >Cena</td>'+sqr;
		sqr= '<td class="c cListNa" >Nazwa</td>'+sqr;
		sqr= '<tr>'+sqr;
		if(tZaA.length>0)
		{
			sqr= '</tr>'+sqr;
			sqr= '<td colspan="5" class="c" >Dodatkowe zamówienie:</td>'+sqr;
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

function zakladki()
{
	var sqr = "";
	var cl;
	var lp = 0;
	var su = 0;
	tZak.forEach(function(el, i) 
	{
		if(lp++%2==1)
			 {    cl = "cListP";   }
		else {    cl = "cListN";   }
			sqr+='<button onclick="dec('+i+')" class="'+cl+' smButton">-</button>';
			sqr+='<button onclick="wył('+i+')" class="'+cl+' smButton">X</button>';
			sqr+='</td></tr>';
	});
	return sqr;
}

function inc(id)
{
	tZam[id]["ilosc"]++;
	document.getElementById("pZam").innerHTML = zamowienia();
}

function dec(id)
{
	tZam[id]["ilosc"]--;
	if(tZam[id]["ilosc"] == 0)
		tZam.splice(id, 1);
	document.getElementById("pZam").innerHTML = zamowienia();
}

function del(id)
{
	tZam[id]= undefined;
	document.getElementById("pZam").innerHTML = zamowienia();
}

function zamStart()
{
	var sqr="Czy na pewno chcesz anulować zamówienie?\n";
	var ii=0;
	tZam.forEach(function(el) 
	{
		if(el!=undefined)
		{ ii++; }
	});
	if(ii>0)
		sqr+="Spowoduje to usunięcie wszystkich pozycji wybranych z menu i powrót do okna startowego.";
	if(window.confirm(sqr))
	{
		var link =document.getElementById("link");
		link.setAttribute("action", "zamowienie_start.php");
		link.submit();
	}
}

function zamZak(platnosc)
{
	var link =document.getElementById("link");
	link.innerHTML = platnosc+tZaASend();
	link.setAttribute("action", "zamowienie_zakonc.php");
	link.submit();
}

function karta()
{
	zamZak('<input name="platK" type="text" class="nv" value="karta"/><br>');
}

function gotowka()
{
	zamZak('<input name="platK" type="text" class="nv" value="gotowka"/><br>');
}