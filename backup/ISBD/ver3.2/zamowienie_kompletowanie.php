<!DOCTYPE HTML>
<html lang="pl">
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8-ci-general">
	<title>Kompletowanie</title>
	<script type="text/javascript">
		<?php
			require_once "zamowienie_kod.php";
			require_once "menu.php";
			require_once "zamowienie.php";
			require_once "zamowienie_akceptowane.php";
		?>
		var tZak =[];
		var cZak =-1;
		var suA = 0;
		var su  = 0;

		function isZam()
		{
			document.getElementById("sub1").setAttribute("style", "background-color: green");
			document.getElementById("sub2").setAttribute("style", "background-color: green");
			document.getElementById("sub1").disabled = false;
			document.getElementById("sub2").disabled = false;
		}

		function noZam()
		{
			document.getElementById("sub1").setAttribute("style", "background-color: gray");
			document.getElementById("sub2").setAttribute("style", "background-color: gray");
			document.getElementById("sub1").disabled = true;
			document.getElementById("sub2").disabled = true;
		}

		function AnZamDodEd()
		{
			var el = document.getElementById("zamStart");
			el.innerText = "Anuluj zamówienie dodatkowe";
			el.setAttribute("style", "background-color: red");
			el.setAttribute("onclick", "AnZamDod()");
		}
		
		function myMain()
		{
			zegar();
			kafelki(kategorie());
			document.getElementById("pZaA").innerHTML = zamowieniaA();
			document.getElementById("pZam").innerHTML = zamowienia();
		}

		window.onload = myMain;
	</script>
	<script type="text/javascript" src="zamowienie.js"></script>
	<link rel="stylesheet" href="css.css">
	<style>

		.cKategoria:hover .cDivOp
		{
			visibility: visible;
		}

		.cKategoria
		{
			display: inline-block;
			position: relative;
			margin: 1.7%; 
			min-width:  21%; 
			max-width:  21%;
			min-height: 12%; 
			max-height: 12%;
		}

		.cKateg
		{
			text-align: center;
			font-family: "Verdana", "Geneva", sans-serif
			width: 100%;
			height: 68px; 
			padding: 5px;
			padding-top: 10px;
			overflow: hidden;
			border: solid white 2px;
			background-color: red;
			border-radius: 5px;
		    cursor: pointer; 
			border-style: none;
			box-shadow: 4px 4px #666666;
		}

		.cDivOp
		{
			display: none;
			position: absolute;
			text-align: justify;
			top: -100%;
			left: -150%;
			visibility: hidden;
			background-color: white;
			border: 2px solid gray;
			display: block;
			border-radius: 5px;
			padding: 5px;
			width: 150%;
			height: 105%;
			overflow: hidden;
			z-index: 1;
		}

		.boix > .zam
		{    
			width: 33%;
			overflow: hidden;
		}

		.pZam
		{    height: 538px;    }

		.boix >.kat
		{    width: 67%;    }

		.pKat
		{    height: 538px;    }

	</style>
</head>
<body>
	<div class="boix">
		<div class="zam">
			<button id="sub1" class="cBattonNavZam" onclick="zamPods()" disabled>Zamówienie</button>
			<button class="cBattonNavKat"  onclick="kafelki(kategorie())">Kategorie</button>
			<div class="pZam">
				<div id="pZaA" ></div>
				<div id="pZam"></div>
			</div>
		</div>

		<div class="kat">
			<div id="nKat" class="nav"></div>
			<div id="pKat" class="pKat"></div>
		</div>
	</div>
	
	<div>
		<div id="zeg" class="zeg"></div>
		<button id="sub2" class="f1Batton" onclick="zamPods()" disabled>Podsumowanie</button>
		<button id="zamStart" class="f2Batton" onclick="zamStart()">Anuluj zamówienie</button>
	</div>

	<form id="link" method="POST">
	</form>

	<footer id="cOrder">
		<details>
		  <summary>Copyright 2018. All Rights Reserved &copy;</summary>
		  <p>Adamus Mateusz, Śledź Kacper - Politechnika Wrocławsk ISBD Projekt <p>
		</details>
	</footer>

</body>
</html>