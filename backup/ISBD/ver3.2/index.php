<!DOCTYPE html>
<html lang="pl">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
  	<meta name="description" content="System pozwalający na zamawianie przez internet.">
  	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Logowanie</title>
	<script type="text/javascript">

		function start()
		{
			var link = document.getElementById("link");
			link.submit();
		}

		window.onload=start;

	</script>
</head>

<body>
	<form id="link" action="zamowienie_start.php" method="post"></form>
</body>
</html>