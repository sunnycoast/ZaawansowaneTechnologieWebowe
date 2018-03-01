<!DOCTYPE HTML>
<html lang="pl">
<head>
	<meta charset="utf-8" />
	<title>Projekt Restauracja</title>
	<script type="text/javascript">
		<?php
			require_once "pracownik_zaladuj.php";
		?>

		function myMain()
		{
			zegar();

			//kafelki(kategorie());
			//document.getElementById("pZaA").innerHTML = zamowieniaA();
			//document.getElementById("pZam").innerHTML = zamowienia();
		}

		window.onload = myMain;
	</script>
	<script type="text/javascript" src="pracownik.js"></script>
	
	<style>
		body
		{
			margin: 0;
			padding: 0;
			font-size: 16px;
			box-sizing: border-box;
			background: steelblue; /* For browsers that do not support gradients */
		    background: -webkit-linear-gradient(white, steelblue); /* For Safari 5.1 to 6.0 */
		    background: -o-linear-gradient(white, steelblue); /* For Opera 11.1 to 12.0 */
		    background: -moz-linear-gradient(white, steelblue); /* For Firefox 3.6 to 15 */
		    background: linear-gradient(white, steelblue); /* Standard syntax */
		}

		.DivNav
		{
			position: relative;
		}

		.cBattonKat
		{
			margin:2%; 
			width:21%; 
			height:13%; 
		    cursor: pointer;
		}

		.cListN
		{
			background-color: #CCCCCC;
		}

		.cListP
		{
			background-color: #EEEEEE;
		}

		.c
		{
			text-align:center;
		}

		.r
		{
			text-align: right;
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

		.cBattonNav
		{
			position: absolute;
			margin-left: 60%;
			text-align: center;
		    background-color: red;
		    color: black;
		    padding: 14px;
		    font-size: 16px;
		    width: 10%;
		    height: 6%;
		    cursor: pointer;
		    border-radius:  10px;
		}

		.cBattonZak
		{
			position: relative;
		    background-color: gray;
		    color: black;
		    padding: 16px;
		    font-size: 16px;
		    width: 10%;
		    height: 100%;
		    cursor: pointer;
		    border-top-left-radius: 10px;
		}

		.cBattonZakaw
		{
			position: relative;
		    background-color: gray;
		    color: black;
		    padding: 16px;
		    font-size: 16px;
		    width: 10%;
		    height: 100%;
		    cursor: pointer;
		    border-top-right-radius: 50px;
		}

		.nav
		{
			overflow: hidden;
		    height: 54px;
		}

		.nav1
		{
		    height: 10%;
		}

		.flexboix
		{
			padding: 2%;
			width: 	96%;
			height: 80%;
			display: -webkit-box;
			-webkit-box-orient: horizontal;
		}

		.flexboix > .zam
		{
			transition: 0.5s ease-out;
			width: 100%;
			overflow: hidden;
		}

		.pZam
		{
			border: 3px solid steelblue;
			height: 638px;
			overflow: scroll;
		}

		.flexboix >.kat
		{
			transition: 0.5s ease-out;
			width: 67%;
		}

		.pKat
		{
			border-top:    3px solid steelblue;
			border-right:  3px solid steelblue;
			border-bottom: 3px solid steelblue;
			height: 538px;
			overflow: scroll;
		}

		.fBatton 
		{
			margin-left: 2%;
			width: 42%;
			position: relative;
		    background-color: green;
		    color: black;
		    padding: 16px;
		    font-size: 16px;
		    height: 50px;
		    cursor: pointer;
		    border-radius: 10px;
		}

		.f2Batton 
		{
			top: -50px;
			margin-left: 46%;
			width: 42%;
			position: relative;
		    background-color: red;
		    color: black;
		    padding: 16px;
		    font-size: 16px;
		    height: 50px;
		    cursor: pointer;
		    border-radius: 10px;
		}

		.f3Batton 
		{
			margin-left: 2%;
			width: 42%;
			position: absolute;
			left: 0%;
		    background-color: purple;
		    color: black;
		    padding: 16px;
		    font-size: 16px;
		    height: 50px;
		    cursor: pointer;
		    border-radius: 10px;
		}

		.zeg
		{
			margin-left: 90%;
			width: 8%;
			text-align: center;
			position: absolute;
		    color: black;
		    font-size: 20px;
		}

		footer
		{
			width: 100%;
			text-align: center;
			font-size: 0.8em;
			background: steelblue;
		}

		.nav
		{
			position: relative;
			overflow: hidden;
		    height: 54px;

		}

		.zegTR
		{
			margin-left: 86%;
			width: 10%;
			text-align: center;
			position: absolute;
		    color: black;
		    font-size: 20px;
		}

		.X
		{
			position:relative;
			text-align: center;
			font-size: 16px;
		    border-top-left-radius:  10px;
			background-color: steelblue;
			width: 3.30%;
		    height: 100%;
    		cursor: pointer;
		}

		.X:hover
		{
			color: red;
			font-weight: bold;
		}
	</style>
</head>
<body>
	<div class="flexboix">
		<div class="zam">
			<div id="zeg" class="zegTR"></div>
			<button class="cBattonZak" onclick="">Menager</button>
			<button class="cBattonNav" onclick="">Wyloguj</button>
			<div class="pZam">
				<div id="pZaA" ></div>
				<div id="pZam"></div>
			</div>
		</div>
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