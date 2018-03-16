<!DOCTYPE html>
<html lang="pl">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
  	<meta name="description" content="System pozwalający na zamawianie przez internet.">
  	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Zakończenie</title>
	<script type="text/javascript" src="zamowienie.js"></script>
	<script type="text/javascript">
		<?php
			require_once "zamowienie_zapis.php";
		?>

		function myMain()
		{
			document.getElementById("platnosc").innerHTML = "Łączna watość rachunku wyniosła <div id=\"suma\">"+FD(wart)+" zł</div>, prosimy przygotować "+platnosc+"." ;
			zegar();
		}

		function zakonc()
		{
			if(window.confirm("Uwaga do tego okna już nie będzie można powrócić, czy chcesz kontynuować?"))
			{
				var link = document.getElementById("link");
				link.setAttribute("action", "zamowienie_start.php");
				link.submit();
			}
		}

		window.onload = myMain;
	</script>
	<style>

		#suma
		{
			display: inline;
			white-space:nowrap;
			font-size: 26px;
		}

		body
		{
			margin: 0;
			padding: 0;
			font-size: 16px;
			box-sizing: border-box;
			background: lightgray; /* For browsers that do not support gradients */
		    background: -webkit-linear-gradient(lightgray, steelblue); /* For Safari 5.1 to 6.0 */
		    background: -o-linear-gradient(lightgray, steelblue); /* For Opera 11.1 to 12.0 */
		    background: -moz-linear-gradient(lightgray, steelblue); /* For Firefox 3.6 to 15 */
		    background: linear-gradient(lightgray, steelblue); /* Standard syntax */
		}

		@font-face	

		{
			font-family: 'MyFont';
			src: url(RemachineScript.ttf);
		}

		p
		{
			text-align: center;
			font-family: 'MyFont', times new roman;
			font-size: 100px;
			color: red;
			font-weight: bold;
			text-shadow: 5px 5px #AA000088;
		}

		form
		{
			text-align: center;
		}

		input 
		{
			margin-top: 10px;
			position: relative;
		    background-color: yellow;
		    color: black;
		    font-size: 22px;
		    height: 30px;
		    width: 200px;
		    cursor: pointer;
		    border-radius: 5px;
		}

		input:hover
		{
		    background-color: #FFFF44;
		}

		footer
		{
			position: relative;
			bottom: 0px;
			width: 99%;
			text-align: center;
			font-size: 0.8em;
			background: steelblue;
		}

		.f2Batton 
		{
			margin-top: 50px; 
			margin-left: 35%;
			width: 30%;
			position: relative;
		    background-color: red;
		    color: black;
		    padding: 12px;
		    font-size: 20px;
		    height: 50px;
		    cursor: pointer;
		    border-radius: 25px;
		    border-style: none;
			box-shadow: 5px 5px #AA000088;
		}

		.nf
		{
			text-align: left;
			width: 100px;
			position: relative;
			display: inline;
		}

		.b20px
		{
			display: block;
			margin-left: 35%;
			text-align: justify;
			width: 30%;
			font-size: 20px;
			font-weight: bold;
		}

		input
		{
			position: relative;
			display: inline;
		}

		form
		{
			padding-bottom: 0%;
			text-align: center;
			visibility: hidden;
		}

		.zeg
		{
			margin-top: 70px;
			margin-bottom: 74px; 
			text-align: center;
			position: relative;
		    color: black;
		    font-size: 20px;
		}

	</style>
</head>
<body>
	<header>
		<p>Projekt Restauracja</p>
	</header>
	<div class="b20px">
		Dziękujemy za wizytę w naszej restauracji. Mamy nadzieję, że wszystko Państwu smakowało, zaraz do Państwa podejdzie kelner z rachunkiem.
	</div>
	<br>
	<div id="platnosc" class="b20px"></div>
	<button class="f2Batton" onclick="zakonc()">Zakończ</button>
	<div id="zeg" class="zeg"></div>

	<form id="link" method="POST"></form>

	<footer id="cOrder">
		<details>
		  <summary>Copyright 2017. All Rights Reserved &copy;</summary>
		  <p>Śledź Kacper, Projektowanie Oprogramowania - lab zima 2017/2018<p>
		</details>
	</footer>
</body>
</html>