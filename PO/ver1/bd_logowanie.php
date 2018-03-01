<?php
	$login="";
	$haslo="";
	$error="";
	$pkod ="";

	if (isset($_POST['login']))
	{
		require_once "bd_polaczenie.php";
		$bacic_connect = @new mysqli( $host, $db_user, $db_password, $db_name );

		if($bacic_connect->connect_errno!=0)
		{    $error = "Błąd połączenia z bazą danych";    }
		else
		{
			$login = $_POST['login'];
			$haslo = $_POST['haslo'];

			$sql = "SELECT * FROM users WHERE login = '$login' AND haslo = '$haslo'";
			if( $result = @$bacic_connect->query($sql) )
			{
				$nr = $result->num_rows;
				if($nr==1)
				{
					$sqr = $result->fetch_assoc();
					$result->free_result();

					$pkod = "$sqr[id]";
				} 
				else if($nr>1)
					 {    $error = "Błąd klucza";    }
				else {    $error = "Błędne dane logowania";    }
			}
			else {    $error = "Błąd zapytania";    }
			$bacic_connect->close();
		}
	}
?>