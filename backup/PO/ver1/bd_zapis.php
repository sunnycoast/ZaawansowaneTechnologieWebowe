<?php
	$dkod="";
	$error="";
		 
	if (!empty($_POST['dkod']))
	{
		$dkod=$_POST['dkod'];

		require_once "bd_polaczenie.php";
		$bacic_connect = @new mysqli( $host, $db_user, $db_password, $db_name );

		if($bacic_connect->connect_errno!=0)
		{    $error = "Błąd połączenia z bazą danych";    }
		else
		{
			$bacic_connect->set_charset("utf8");

			$max=$_POST['i'];
			$idM;
			for($i=0;$i<$max;$i++)
			{	
				$b="IdM$i";
				$idM = "$_POST[$b]";
				$sql = "INSERT INTO bilety ( DataWyst, Miejsce ) VALUES ( '$dkod', '$idM' )";
				if ($bacic_connect->query($sql) === FALSE)
							{    $error = "Błąd zapisu";    }
			}
			
			$bacic_connect->close();
		}
	}
	else {    $error = "Błąd kodu";    }
	if($error!="")
		echo $error."<br>";
?>