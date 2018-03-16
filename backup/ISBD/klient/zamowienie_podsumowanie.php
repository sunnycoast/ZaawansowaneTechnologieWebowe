<!DOCTYPE HTML>
<html lang="pl">
<head>
	<meta charset="utf-8" />
	<title>Podsumowanie</title>
	<script type="text/javascript">
		<?php
			require_once "zamowienie.php";
			require_once "zamowienie_akceptowane.php";
			require_once "zamowienie_kod.php";
		?>
		var suA = 0;
		var su  = 0;

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

		function myMain()
		{
			zegar();
			document.getElementById("pZaA").innerHTML = zamowieniaA();
			document.getElementById("pZam").innerHTML = zamowienia();
		}

		window.onload = myMain;
	</script>
	<script type="text/javascript" src="zamowienie.js"></script>
	<link rel="stylesheet" href="css.css">
	<style>

		.cBattonNavKat
		{
		    width: 40%;
		    height: 10%;
		}

		.boix > .zam
		{     width: 100%;    }

		.pZam
		{    height: 538px;    }

	</style>
</head>
<body>
	<div class="boix">
		<div class="zam">
			<button class="cBattonNavKat" onclick="back()">Kategorie</button>
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