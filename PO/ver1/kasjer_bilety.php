<!DOCTYPE HTML>
<html lang="pl">
<head>
	<meta charset="utf-8" />
	<title>Kasjer</title>
	<script type="text/javascript">
		<?php    require_once "bd_pracownik.php";    ?>

		function myMain()
		{    zegar();    }

		window.onload = myMain;
	</script>
	<script type="text/javascript" src="pracownik.js"></script>
	<link rel="stylesheet" href="css.css">
	<style>

	</style>
</head>
<body>
	<div class="boix">
		<div class="menu" > <?php    require_once "h_kasjer_menu.php";    ?> </div>
		<div id="panel" class="panel">
		 <?php    require_once "h_kasjer_bilety.php";    ?> 
		</div>
	</div>

	<form id="link" method="POST">
		<input name="pkod" type="hidden" value="<?=$pkod?>"/>
	</form>

	<footer id="cOrder">
		<details>
		  <summary>Copyright 2018. All Rights Reserved &copy;</summary>
		  <p>Śledź Kacper - Politechnika Wrocławska PO<p>
		</details>
	</footer>

</body>
</html>