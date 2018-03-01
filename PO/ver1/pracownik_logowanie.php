<!DOCTYPE html>
<html lang="pl">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
  	<meta name="description" content="System pozwalający na zamawianie przez internet.">
  	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Start</title>
	<?php    require_once "bd_logowanie.php";    ?>
	<script type="text/javascript">

		function zamKompStart()
		{
			var el = document.getElementById("hb").getAttribute("value").length;
			zegar();
			if( el>0 )
			{
				var link =document.getElementById("link");
				link.submit();
			}
		}

		window.onload=zamKompStart;
	</script>
	<script type="text/javascript" src="pracownik.js"></script>
	<link rel="stylesheet" href="css.css">
	<style></style>
</head>
<body>
	<p class="tytul">Op Soft</p>

	<form class="my_form c" method="post">
		<div class="err"><?=$error;?></div>
		<div class="nf">Login:</div>
		<input class="yI" type="text" name="login" value="<?=$login?>" autocomplete="off" required><br/>

		<div class="nf">Hasło:</div>
		<input class="yI" type="password" name="haslo" value="" autocomplete="off" required><br/>
		<input class="yII" type="submit" value="Zaloguj"><br/>
	</form>

	<form id="link" action="kasjer_start.php" method="post" class="c">
		<input id="hb" type="hidden" name="pkod" value="<?=$pkod?>"><br/>
	</form>

	<div id="zeg" class="zeg zPS"></div>

	<footer>
		<details>
		  <summary>Copyright 2017. All Rights Reserved &copy;</summary>
		  <p>Śledź Kacper, Projektowanie Oprogramowania - lab zima 2017/2018<p>
		</details>
	</footer>
</body>
</html>