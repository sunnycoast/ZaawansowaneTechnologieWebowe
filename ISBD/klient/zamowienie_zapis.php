<?php
	print "\n";
	print "var platnosc = \"\";\n";
	print "var wart= 0;\n";
	$suma =0;
	if(!empty($_POST['z']) && !empty($_POST['platK']))
	{
		if($_POST['platK']=="karta")
			 print "platnosc = \"kartę\";\n";
		else print "platnosc = \"gotówkę\";\n";

		require_once "polaczenie_bd.php";
		$bacic_connect = @new mysqli( $host, $db_user, $db_password, $db_name );
		if($bacic_connect->connect_errno!=0)
		{
			echo "Błąd połączenia z bazą danych:<br/>".$bacic_connect->connect_errno.".<br/>Opis:<br/>".$bacic_connect->connect_error;
		}
		else
		{
			$idZM = "$_POST[zkod]";
			$size  = $_POST['z'];
			for($i=0;$i<$size;$i++)
			{
				$name = "zid$i";
				$idPM = "$_POST[$name]";
				$name = "zil$i";
				$ilos = "$_POST[$name]"; 

				$sql = "SELECT * FROM 09_pozycjazam WHERE Zamowienie='$idZM' AND PozycjaMenu='$idPM'";
				if( $result = @$bacic_connect->query($sql) )
				{
					if($result->num_rows==1)
					{
						$pZam= $result->fetch_assoc();
						$ilos+="$pZam[LiczbaPM]";
						$sql = "UPDATE 09_pozycjazam SET LiczbaPM='$ilos' WHERE Zamowienie='$idZM' AND PozycjaMenu='$idPM'";
						if ($bacic_connect->query($sql) === FALSE)
							{    print "Błąd zapisu";    }
					}
					else if($result->num_rows==0)
					{
						$sql = "INSERT INTO 09_pozycjazam ( Zamowienie, PozycjaMenu, LiczbaPM ) VALUES ( '$idZM', '$idPM', '$ilos' )";
						if ($bacic_connect->query($sql) === FALSE)
							{    print "Błąd zapisu";    }
					}
					else {    echo "Błąd klucza";    }

					$name = "zcn$i";
					$cena = "$_POST[$name]";
					$suma+=$cena*$ilos;
				}
				else {    echo "Błąd zapytania";    }
			}
		}
		$bacic_connect->close();

		print "wart = $suma;\n";
	}
?>