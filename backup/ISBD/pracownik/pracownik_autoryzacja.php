<?php
	$login="";
	$haslo="";
	$idPra="";
	if($idPra=="")
	{
		if ( isset($_POST['login']) )
		{
			$noErr = true;
			$login=$_POST['login'];
			if($login=="")
			{
				print "Proszę podać login.<br>";
				$noErr = false;
			}
			$haslo=$_POST['haslo'];
			if($haslo=="")
			{
				print "Proszę podać haslo.<br>";
				$noErr = false;
			}
			if($noErr)
			{
				require_once "polaczenie_bd.php";

				$bacic_connect = @new mysqli( $host, $db_user, $db_password, $db_name );

				if($bacic_connect->connect_errno!=0)
				{
					echo "Błąd połączenia z bazą danych:<br/>".$bacic_connect->connect_errno.".<br/>Opis:<br/>".$bacic_connect->connect_error;
				}
				else
				{
					//where data zartudnienia
					$sql = "SELECT * FROM 02_pracownicy WHERE Login = '$login' AND Haslo='$haslo'";
					if( $result = @$bacic_connect->query($sql) )
					{
						$nr= $result->num_rows;
						if($nr==1)
						{
							$user= $result->fetch_assoc();
							$result->free_result();
							$idPra="$user[ID_Prac]";
							print "$idPra";
						}
						else if ($nr==0)
						{    echo "Nie poprwny login i hało";    }
						else {    echo "Błąd klucza";    }
					}
					else {    echo "Błąd zapytania";    }
					$bacic_connect->close();
				}
			}
		}
	}
?>