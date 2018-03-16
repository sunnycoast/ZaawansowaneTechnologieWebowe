<?php
	session_start();

	if ( isset($_POST['email']) && isset($_POST['haslo']) )
	{
		$email 	= $_POST['email'];
		$haslo  = $_POST['haslo'];
		$ogl_err = '';

		{
			require_once "polaczenie_bd.php";
			$bacic_connect = @new mysqli( $host, $db_user, $db_password, $db_name );

			if($bacic_connect->connect_errno!=0)
			{
				echo "Błąd połączenia z bazą danych:<br/>".$bacic_connect->connect_errno;
			}
			else
			{
				$sql = "SELECT * FROM st_klienci WHERE Email='$email' AND Haslo='$haslo'";
				if( $result = @$bacic_connect->query($sql) )
				{
					if($result->num_rows>0)
					{
						$row= $result->fetch_assoc();
						$result->free_result();
						$_SESSION['imie' ] = "$row[Imie]";
						$_SESSION['zalogowany'] = true;
						$_SESSION['urzytkownik'] = 'Stały klient';
						$_SESSION['log_adres' ] = 'st_klient_logowanie.php';
						header('Location: po_zalogowaniu.php');
					}
					else {    $ogl_err="Przepraszamy podany login lub hasło są błędne.";    }
				}
				else {    echo "Błąd zapytania";    }
				$bacic_connect->close();
			}
		}

		if($ogl_err!='')
		{
			$_SESSION['email'] = $email;
			$_SESSION['ogl_err'] = $ogl_err;
			$_SESSION['zalogowany'] = false;

			header('Location: st_klient_logowanie.php');
		}
	}
	else
	{    header('Location: st_klient_logowanie.php');    }
?>