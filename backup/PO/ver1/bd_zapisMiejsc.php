<?php
	require_once "bd_polaczenie.php";
	$bacic_connect = @new mysqli( $host, $db_user, $db_password, $db_name );

	if($bacic_connect->connect_errno!=0)
	{    $error = "Błąd połączenia z bazą danych";    }
	else
	{
		$bacic_connect->set_charset("utf8");
		$NrM;
		$Rzad;
		$SalaM=1;
		for($Rzad=1;$Rzad<=8;$Rzad++)
		{
			for($NrM=1;$NrM<=16;$NrM++)
			{
				if($Rzad<=4)
				{
					$sql = "INSERT INTO miejsca ( NrM, Rzad, RodzajM, SektorM ) VALUES ( $NrM, $Rzad, 1, $SalaM )";
					if ($bacic_connect->query($sql) === FALSE)
							{    print "Błąd zapisu";    }
				}
				else
				{
					$sql = "INSERT INTO miejsca ( NrM, Rzad, RodzajM, SektorM ) VALUES ( $NrM, $Rzad, 2, $SalaM )";
					if ($bacic_connect->query($sql) === FALSE)
							{    print "Błąd zapisu";    }
				}
			}
		}
		//128
		$SalaM++;
		for($Rzad=1;$Rzad<=8;$Rzad++)
		{
			for($NrM=1;$NrM<=8;$NrM++)
			{
				if($Rzad<=2)
				{
					$sql = "INSERT INTO miejsca ( NrM, Rzad, RodzajM, SektorM ) VALUES ( $NrM, $Rzad, 1, $SalaM )";
					if ($bacic_connect->query($sql) === FALSE)
							{    print "Błąd zapisu";    }
				}
				else if($Rzad<=5)
				{
					$sql = "INSERT INTO miejsca ( NrM, Rzad, RodzajM, SektorM ) VALUES ( $NrM, $Rzad, 2, $SalaM )";
					if ($bacic_connect->query($sql) === FALSE)
							{    print "Błąd zapisu";    }
				}
				else
				{
					$sql = "INSERT INTO miejsca ( NrM, Rzad, RodzajM, SektorM ) VALUES ( $NrM, $Rzad, 3, $SalaM )";
					if ($bacic_connect->query($sql) === FALSE)
							{    print "Błąd zapisu";    }
				}
			}
		}
		//64
		$SalaM++;
		for($Rzad=1;$Rzad<=3;$Rzad++)
		{
			for($NrM=1;$NrM<=24;$NrM++)
			{
					$sql = "INSERT INTO miejsca ( NrM, Rzad, RodzajM, SektorM ) VALUES ( $NrM, $Rzad, 3, $SalaM )";
					if ($bacic_connect->query($sql) === FALSE)
							{    print "Błąd zapisu";    }
			}
		}
		//72
		//264
		$bacic_connect->close();
	}
?>