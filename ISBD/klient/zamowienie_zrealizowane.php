<!DOCTYPE HTML>
<html lang="pl">
<head>
	<meta charset="utf-8" />
	<title>Zatwierdzone</title>
	<script type="text/javascript">
		<?php
			require_once "zamowienie_kod.php";
			require_once "zamowienie_akceptowane.php";
		?>
		var suA = 0;
		var su = 0;

		function AnZamDodEd(){}

		function myMain()
		{
			zegar();
			document.getElementById("pZaA").innerHTML = zamowieniaA();
		}

		window.onload = myMain;
	</script>
	<script type="text/javascript" src="zamowienie.js"></script>
	<link rel="stylesheet" href="css.css">
	<style>

		.cBattonNavKat
		{
		    width: 42%;
		    height: 10%;
		}

		.f1Batton
		{
			background-color: green;
		}

		.boix > .zam
		{
			width: 100%;
		}

		.pZam
		{
			height: 538px;
		}

	</style>
</head>
<body>
	<div class="boix">
		<div class="zam">
			<button class="cBattonNavKat" onclick="zamDod()">Kategorie</button>
			<div class="pZam">
				<div id="pZaA" ></div>
				<div id="pZam"></div>
			</div>
		</div>
 	</div>
 	
	<div>
		<div id="zeg" class="zeg"></div>
		<button class="f1Batton" onclick="zamDod()">Zamówienie dodatkowe</button>
		<button class="f2Batton" onclick="zamZaplac()">Zapłać</button>
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