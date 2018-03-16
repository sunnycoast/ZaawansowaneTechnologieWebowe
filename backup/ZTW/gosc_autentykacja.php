<?php
	session_start();

	if ( isset($_POST['imie']) && isset($_POST['l_os']) && isset($_POST['k_stol']) )
	{
		$imie 	= $_POST['imie'];
		$l_os   = $_POST['l_os'];
		$k_stol = $_POST['k_stol'];
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
				$sql = "SELECT * FROM sektory INNER JOIN stoliki ON sektory.ID_Sk=stoliki.Sektor WHERE NazwaSt='$k_stol'";
				if( $result = @$bacic_connect->query($sql) )
				{
					if($result->num_rows>0)
					{
						$stl= $result->fetch_assoc();
						$result->free_result();
						if("$stl[Aktywny]"==1)
						{
							if( $l_os>=("$stl[LiczbaMiejsc]"-2) )
							{
								$id_stol="$stl[ID_Stolika]";
								$hour=date("h");
								if(date("a")=="pm") {    $hour+=12;    }
								$time= date("Y-m-d $hour:i:s");

								$sql = "INSERT INTO zamowienia (Stolik, DataOtw) VALUES ('$id_stol', '$time')";
								if ($bacic_connect->query($sql) === TRUE) 
								{
									$_SESSION['z_kod'] = @$bacic_connect->insert_id;
									$_SESSION['imie' ] = $imie;
									$_SESSION['zalogowany'] = true;
									$_SESSION['urzytkownik'] = 'Gość';
									$_SESSION['log_adres' ] = 'gosc_logowanie.php';
									header('Location: po_zalogowaniu.php');
								}
								else {    echo "Błąd zapisu";    }
							}
							else {    $ogl_err="Uprzejmie prosilibyśmy o zmianę stolika na mniejszy.";    }
						}
						else {    $ogl_err="Przepraszamy ale sektor $stl[NazwaSk] nie jest aktualnie obsługiwany.";    }
					}
					else {    $ogl_err="Przepraszamy podany kod stolika jest niepoprawny.";    }
				}
				else {    echo "Błąd zapytania";    }
				$bacic_connect->close();
			}
		}

		if($ogl_err!='')
		{
			$_SESSION['imie'] = $imie;
			$_SESSION['l_os'] = $l_os;
			$_SESSION['k_stol'] = $k_stol;
			$_SESSION['ogl_err'] = $ogl_err;
			$_SESSION['zalogowany'] = false;

			header('Location: gosc_logowanie.php');
		}
	}
	else
	{    header('Location: gosc_logowanie.php');    }
?>