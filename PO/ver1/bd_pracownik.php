<?php
	$upra="";
	$imie="";
	$nazw="";
	$pkod="";
	
	if(isset($_POST["pkod"]))
	{
		require_once "bd_polaczenie.php";
		$bacic_connect = @new mysqli( $host, $db_user, $db_password, $db_name );

		if($bacic_connect->connect_errno!=0)
		{    echo "Błąd połączenia z bazą danych";    }
		else
		{
			$bacic_connect->set_charset("utf8");
			$pkod = "$_POST[pkod]";
			$sql = "SELECT * FROM users WHERE id='$pkod'";

			if( $result = @$bacic_connect->query($sql) )
			{
				$rn= $result->num_rows;
				if($rn==1)
				{
					$sqr= $result->fetch_assoc();
					$result->free_result();

					$upra="$sqr[uprawnienia]";
					$imie="$sqr[imie]";
					$nazw="$sqr[nazwisko]";
				}
				else if($nr>1)
					 {    echo "Błąd klucza";    }
				else {    echo "Błedny indeks $pkod;";    }
			}
			else {    echo "Błąd zapytania";    }
			$bacic_connect->close();
		}
	}
	else
	{
		header("Location: pracownik_logowanie.php"); 
	}
?>