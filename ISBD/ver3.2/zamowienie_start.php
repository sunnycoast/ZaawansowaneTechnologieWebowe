<!DOCTYPE html>
<html lang="pl">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
  	<meta name="description" content="System pozwalający na zamawianie przez internet.">
  	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Start</title>
	<?php    require_once "sprawdzenie_stolika.php";    ?>
	<script type="text/javascript">
		/*
		alerty: zmiana koloru brak ramki, napis czerwony "wypełnij"
		pola formularza białe
		submit w stylu napisu projekt restwuracja
		button wyłaczenie obramowania
		kolory kategori kanał alpha 0.5
		//*/
		function zamKompStart()
		{
			var el = document.getElementById("hb").getAttribute("value").length;
			zegar();
			if( el>0 )
			{
				var link =document.getElementById("link");
				link.setAttribute("action", "zamowienie_kompletowanie.php");
				link.submit();
			}
		}

		window.onload=zamKompStart;
	</script>
	<script type="text/javascript" src="zamowienie.js"></script>
	<link rel="stylesheet" href="css.css">
	<style>
		.nf
		{
			text-align: right;
			font-size: 20px;
			width: 110px;
			position: relative;
			display: inline-block;
		}

		span
		{
			margin-left: 45%;
			margin-top: 5px;
			text-align: center;
			display: block;
			width: 200px;
 			font-size: 18px;
			max-width: 400px;
			color: #AA0000;
		}

		span:empty
		{
			visibility: hidden;
			min-height: 0px;
		}

		.my_form
		{
			min-height: 300px;
		}

		.zeg
		{
			margin-top: 30px;
			margin-bottom: 53px;
			z-index: 1;
			margin-left: 45%;
			width: 10%;
			display: block;
			text-align: center;
			position: relative;
			color: black;
			font-size: 20px;
		}

		.yII
		{
			font-size: 20px;
			padding: 7px;
			padding-right: 15px;
			padding-left: 15px;
			border-radius: 20px;
			background-color: red;
			margin-top: 20px;
			border-style: none;
			box-shadow: 3px 3px #AA000088;
		}
	</style>
</head>

<body>
	<header>
		<p class="tytul">Projekt Restauracja</p>
	</header>

	<form class="my_form c" action="zamowienie_start.php" method="post">
		<span id="err0"><?php echo $ogolErr; ?></span>
		<div class="nf">Imię:</div>
		<input class="yI" type="text" name="nick" value="<?=$nick?>" autocomplete="off" required><br/>

		<div class="nf">Liczba osób:</div>
		<input class="yI" type="text" name="miej" value="<?=$miej?>" autocomplete="off" required><br/>

		<div class="nf">Kod stolika: </div>
		<input class="yI" type="text" name="stol" value="<?=$stol?>" autocomplete="off" required><br/>
		<input class="yII" type="submit" value="Otwórz rachunek"><br/>
	</form>

	<form id="link" action="<?=$adre?>" method="post" class="c">
		<input id="hb" type="hidden" name="zkod" value="<?=$zkod?>"><br/>
	</form>

	<div id="zeg" class="zeg"></div>

	<footer id="cOrder">
		<details>
		  <summary>Copyright 2017. All Rights Reserved &copy;</summary>
		  <p>Śledź Kacper, Projektowanie Oprogramowania - lab zima 2017/2018<p>
		</details>
	</footer>
</body>
</html>