/*h_kasjer_menu.php*/

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

function FI(num, size)
{
	var sqr = ""+num;
	while(sqr.length < size)
	{
		sqr="0"+num;
	}
	return sqr;
}

function idzDo(strona)
{
	var link =document.getElementById("link");
	link.setAttribute("action", strona);
	link.submit();
}

function fBilety()
{
	idzDo("kasjer_bilety.php");
}

function rezerwacje()
{
	idzDo("kasjer_rezerwacje.php");
}

function wyloguj()
{
	idzDo("pracownik_logowanie.php");
}

/*h_kasjer_menu.php*/
/*h_kasjer_bilety.php*/

function powrot()
{
	window.history.back();
}

function podglad(i)
{
	var link = document.getElementById("link");
	var sqr = link.innerHTML;
	sqr += "<input name=\"dkod\" type=\"hidden\" value="+i+">";
	link.innerHTML=sqr;
	link.setAttribute("action", "kasjer_podglad.php");
	link.submit();
}

/*h_kasjer_bilety.php*/
/*h_kasjer_podglad.php*/

function zatwierdzPog()
{
	var link = document.getElementById("link");

	var min=371;
	var max=634;
	var sqr=link.innerHTML;
	var i=0;
	for(min; min<=max; min++)
	{
		var checkbox = document.getElementById("box"+min);
		if(checkbox.checked)
		{
			sqr+="<input name=\"IdM"+i+"\" type=\"hidden\" value="+min+">\n"
			i++;
		}
	}
	sqr+="<input name=\"i\" type=\"hidden\" value="+i+">\n"
	if(i>0)
	{
		link.innerHTML = sqr;
		link.setAttribute("action", "kasjer_podsumowanie.php");
		link.submit();
	}
	else
	{
		var err = document.getElementById("err");
		err.innerHTML="Proszę wybrać miejsce";
	}
}

/*h_kasjer_podglad.php*/
/*h_kasjer_podsumowanie.php*/

function usunBilet(us)
{
	var link = document.getElementById("link");
	var sqr=link.innerHTML;

	var i=0
	while(i!=us)
	{
		sqr+="<input name=\"IdM"+i+"\" type=\"hidden\" value="+bilety[i]+">\n";
		i++;
	}
	i++;
	while(i<bilety.length)
	{
		sqr+="<input name=\"IdM"+(i-1)+"\" type=\"hidden\" value="+bilety[i]+">\n";
		i++;
	}
	sqr+="<input name=\"i\" type=\"hidden\" value="+(bilety.length-1)+">\n";
	link.innerHTML = sqr;
	link.setAttribute("action", "kasjer_podsumowanie.php");
	link.submit();
}

function zatwierdzKarta()
{
	if(window.confirm("Potwierdzasz  przyjęcie opłaty kartą?"))
	{
		zapis("Karta");
	}
}

function zatwierdzGotow()
{
	if(window.confirm("Potwierdzasz  przyjęcie opłaty gotówką?"))
	{
		zapis("Gotówka");
	}
}

function zapis(mPlat)
{
	var link = document.getElementById("link");
	var sqr=link.innerHTML;

	var i=0;
	for(i; i<bilety.length;i++)
	{
		sqr+="<input name=\"IdM"+i+"\" type=\"hidden\" value="+bilety[i]+">\n";
	}
	sqr+="<input name=\"i\" type=\"hidden\" value="+i+">\n";
	link.innerHTML = sqr;
	link.setAttribute("action", "kasjer_zakoncz.php");
	link.submit();

	//window.alert("Drukowanie biletów.")
}

/*h_kasjer_podsumowanie.php*/