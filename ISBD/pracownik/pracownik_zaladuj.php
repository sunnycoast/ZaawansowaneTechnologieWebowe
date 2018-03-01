<?php
	$imieP="";
	$nazwP="";
	$idRol="";
	$idPra="";
	if ( isset($_POST['idPra']) )
	{
		$idPra="$_POST[idPra]";

		require_once "polaczenie_bd.php";
		$bacic_connect = @new mysqli( $host, $db_user, $db_password, $db_name );

		if($bacic_connect->connect_errno!=0)
		{
			echo "Błąd połączenia z bazą danych:<br/>".$bacic_connect->connect_errno.".<br/>Opis:<br/>".$bacic_connect->connect_error;
		}
		else
		{
			//where data zartudnienia
			$sql = "SELECT * FROM 01_role INNER JOIN 02_pracownicy ON 01_role.ID_R = 02_pracownicy.Rola WHERE ID_Prac='$idPra'";
			if( $result = @$bacic_connect->query($sql) )
			{
				$nr= $result->num_rows;
				if($nr==1)
				{
					$user= $result->fetch_assoc();
					$result->free_result();
					$imieP="$user[Imie]";
					$nazwP="$user[Nazwisko]";
					$nRoli="$user[ID_R]";
					print "var pow = \"$imieP $nazwP zalogowany jako $user[NazwaR].\";";
				}
				else if ($nr==0)
				{    echo "Nie poprwny login i hało";    }
				else {    echo "Błąd klucza";    }
			}
			else {    echo "Błąd zapytania";    }
			$bacic_connect->close();
		}
	}
?>