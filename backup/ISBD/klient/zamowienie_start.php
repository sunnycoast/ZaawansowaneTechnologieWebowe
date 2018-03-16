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

		function zamKompStart()
		{
			var el = document.getElementById("hb").getAttribute("value").length;
			if( el>0 )
			{
				var link =document.getElementById("link");
				link.setAttribute("action", "zamowienie_kompletowanie.php");
				link.submit();
			}
		}

		window.onload=zamKompStart;
	</script>
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
		.space
		{
			min-height: 180px;
		}
		span
		{
			padding-top: 3px;
			margin-left: 45%;
			margin-top: 10px;
			text-align: center;
			min-height: 24px;
			display: block;
			width: 200px;
			max-width: 400px;
			color: white;
			background-color: #DD0000;
			border-radius: 5px;
		}

		span:empty
		{
			visibility: hidden;
			min-height: 0px;
		}

		form
		{
			min-height: 447px;
		}
	</style>
</head>

<body>
	<header>
		<p class="tytul">Projekt Restauracja</p>
	</header>

	<form id="link" action="<?=$adre?>" method="post" class="c">
		<span id="err0"><?php echo $ogolErr; ?></span>
		<span id="err1"><?php echo $nickErr; ?></span>
		<div class="nf">Imię:</div>
		<input class="yI" type="text" name="nick" value="<?=$nick?>" autocomplete="off"><br/>

		<span id="err2"><?php echo $miejErr; ?></span>
		<div class="nf">Liczba osób:</div>
		<input class="yI" type="text" name="miej" value="<?=$miej?>" autocomplete="off"><br/>

		<span id="err3"><?php echo $stolErr; ?></span>
		<div class="nf">Kod stolika: </div>
		<input class="yI" type="text" name="stol" value="<?=$stol?>" autocomplete="off"><br/>
		<input id="hb" type="hidden" name="zkod" value="<?=$zkod?>"><br/>
		<input class="yI" type="submit" value="Otwórz rachunek"><br/>
	</form>

	<footer id="cOrder">
		<details>
		  <summary>Copyright 2017. All Rights Reserved &copy;</summary>
		  <p>Śledź Kacper, Projektowanie Oprogramowania - lab zima 2017/2018<p>
		</details>
	</footer>
</body>
</html>