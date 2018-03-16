<?php
	session_start();

	if ( isset($_POST['pin']) )
	{
		$pin 	= $_POST['pin'];
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
				$sql = "SELECT * FROM pracownicy INNER JOIN role ON pracownicy.Rola=role.ID_R WHERE PIN='$pin'";
				if( $result = @$bacic_connect->query($sql) )
				{
					if($result->num_rows>0)
					{
						$row= $result->fetch_assoc();
						$result->free_result();
						$_SESSION['imie' ] = "$row[Imie]";
						$_SESSION['zalogowany'] = true;
						$_SESSION['urzytkownik'] = "$row[NazwaR]";
						$_SESSION['log_adres' ] = 'pracownik_logowanie.php';
						header('Location: po_zalogowaniu.php');
					}
					else {    $ogl_err="Podany PIN jest nie poprawny.";    }
				}
				else {    echo "Błąd zapytania";    }
				$bacic_connect->close();
			}
		}

		if($ogl_err!='')
		{
			$_SESSION['ogl_err'] = $ogl_err;
			$_SESSION['zalogowany'] = false;

			header('Location: pracownik_logowanie.php');
		}
	}
	else
	{    header('Location: pracownik_logowanie.php');    }
?>