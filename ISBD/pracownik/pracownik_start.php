<!DOCTYPE html>
<html lang="pl">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
  	<meta name="description" content="System pozwalający na zamawianie przez internet.">
  	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Logowanie</title>
	<link rel="stylesheet" href="start.css">
	<script type="text/javascript">

		function zamKompStart()
		{
			var el = document.getElementById("hb").getAttribute("value").length;
			if( el>0 )
			{
				var link =document.getElementById("link");
				link.setAttribute("action", "pracownik_wejsce.php");
				link.submit();
			}
		}

		window.onload=zamKompStart;

	</script>
	<style>
		.nf
		{
			text-align: left;
			width: 100px;
			position: relative;
			display: inline;
		}
		.space
		{
			min-height: 226px;
		}
		.r
		{
			min-height: 70px;
			text-align: center;
			color: red;
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
			text-align: center;
		}
	</style>
</head>

<body>
	<header>
		<p>Projekt Restauracja</p>
	</header>

	<div id="al" class="r">
		<?php    require_once "pracownik_autoryzacja.php";    ?>
	</div>

	<form id="link" action="pracownik_start.php" method="post">
		Login: 	<input type="text" 	name="login" value="<?=$login?>" autocomplete="off"><br/>
		Hasło: 	<input type="password" name="haslo" value="<?=$haslo?>" autocomplete="off"><br/>
			    <input type="submit" value="Zaloguj się"><br/>
			    <input type="text" name="idPra" value="<?=$idPra?>" id="hb"><br/>
	</form>

	<div id="space" class="space"></div>

	<footer id="cOrder">
		<details>
		  <summary>Copyright 2017. All Rights Reserved &copy;</summary>
		  <p>Śledź Kacper, Projektowanie Oprogramowania - lab zima 2017/2018<p>
		</details>
	</footer>
</body>
</html>