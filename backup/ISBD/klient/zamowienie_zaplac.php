<!DOCTYPE HTML>
<html lang="pl">
<head>
	<meta charset="utf-8" />
	<title>Projekt Restauracja</title>
	<script type="text/javascript">
		<?php
			require_once "zamowienie_akceptowane.php";
			require_once "zamowienie_kod.php";
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