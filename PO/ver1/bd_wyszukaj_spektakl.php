<?php
	$naz="";
	$dat="";
	$kod="";
	$error="";
		 
	if (isset($_POST['naz']))
	{
		$naz=$_POST['naz'];
		$dat=$_POST['dat'];
		$kod=$_POST['kod'];
		$where="";
		if ($naz!="")
		{
			$where="Nazwa LIKE \"%$naz%\"";
		}
		if ($dat!="")
		{
			if($where!="")
				$where=$where." AND Data >= \"$dat\"";
			else
				$where="Data >= \"$dat\"";
		}
		else
		{    
			$dat=date('Y-m-d');
			if($where!="")
				$where=$where." AND Data >= \"$dat\"";
			else
				$where="Data >= \"$dat\"";
			$dat="";
		}
		if ($kod!="")
		{
			if($where!="")
				$where=$where." AND Kod = $kod";
			else
				$where="Kod = $kod";  
		}
		$where="WHERE ".$where;
		if($where!="")
		{
			require_once "bd_polaczenie.php";
			$bacic_connect = @new mysqli( $host, $db_user, $db_password, $db_name );

			if($bacic_connect->connect_errno!=0)
			{    $error = "Błąd połączenia z bazą danych";    }
			else
			{
				$bacic_connect->set_charset("utf8");
				$sql = "SELECT * FROM spektakl INNER JOIN data_wystawienia ON spektakl.Kod=data_wystawienia.Spektakl $where ORDER BY Data ASC, Godzina ASC;";
				if( $result = @$bacic_connect->query($sql) )
				{
					$rn = $result->num_rows;
					if($rn>0)
					{
						for($i=0;$i<$rn;$i++)
						{
							$sqr= $result->fetch_assoc();

							echo "<div class=\"spek\">\n";
							echo "<div class=\"tyt\">Kod spektaklu:	 </div><div class=\"val\">$sqr[Kod]</div><br/>\n";
							echo "<div class=\"tyt\">Nazwa spektaklu:</div><div class=\"val\">$sqr[Nazwa]</div><br/>\n";
							echo "<div class=\"tyt\">Data:			 </div><div class=\"val\">$sqr[Data]</div><br/>\n";
							echo "<div class=\"tyt\">Godzina:		 </div><div class=\"val\">$sqr[Godzina]</div><br/>\n";
							echo "<div class=\"tyt\">Bilety od:		 </div><div class=\"val\">$sqr[Cena].00 zł</div><br>\n";
							
							$miej=264;
							$sql = "SELECT *FROM bilety WHERE DataWyst = $sqr[IdDW]";
							if( $result2 = @$bacic_connect->query($sql) )
							{
								$miej -= $result2->num_rows;
							}
							else {    $error = "Błąd zapytania Count";    }

							echo "<div class=\"tyt\">Wolne miejsca:	 </div><div class=\"val\">$miej</div><br/>\n";
							if($miej>0)
								echo "<button class=\"pod\" onclick=\"podglad($sqr[IdDW])\">Podgląd</button>\n";
							echo "</div>\n";
						}
						$result->free_result();
					}
					else {    $error = "Brak wyniku wyszukania";    }
				}
				else {    $error = "Błąd zapytania";    }
				$bacic_connect->close();
			}
		}
		else {    $error = "Proszę wypełnić przynajmniej jedno pole";    }
	}
	else
	{
		$f_in = false;
		$cDat=date('Y-m-d');
		require_once "bd_polaczenie.php";
		$bacic_connect = @new mysqli( $host, $db_user, $db_password, $db_name );

		if($bacic_connect->connect_errno!=0)
		{    $error = "Błąd połączenia z bazą danych";    }
		else
		{
			$bacic_connect->set_charset("utf8");
			$sql = "SELECT * FROM spektakl INNER JOIN data_wystawienia ON spektakl.Kod=data_wystawienia.Spektakl WHERE Data >= '$cDat' ORDER BY Data ASC, Godzina ASC;";
			if( $result = @$bacic_connect->query($sql) )
			{
				$rn = $result->num_rows;
				if($rn>0)
				{
					for($i=0;$i<$rn;$i++)
					{
						$sqr= $result->fetch_assoc();

						echo "<div class=\"spek\">\n";
						echo "<div class=\"tyt\">Kod spektaklu:	 </div><div class=\"val\">$sqr[Kod]</div><br/>\n";
						echo "<div class=\"tyt\">Nazwa spektaklu:</div><div class=\"val\">$sqr[Nazwa]</div><br/>\n";
						echo "<div class=\"tyt\">Data:			 </div><div class=\"val\">$sqr[Data]</div><br/>\n";
						echo "<div class=\"tyt\">Godzina:		 </div><div class=\"val\">$sqr[Godzina]</div><br/>\n";
						echo "<div class=\"tyt\">Bilety od:		 </div><div class=\"val\">$sqr[Cena].00 zł</div><br>\n";
						
						$miej=264;
						$sql = "SELECT *FROM bilety WHERE DataWyst = $sqr[IdDW]";
						if( $result2 = @$bacic_connect->query($sql) )
						{
							$miej -= $result2->num_rows;
						}
						else {    $error = "Błąd zapytania Count";    }

						echo "<div class=\"tyt\">Wolne miejsca:	 </div><div class=\"val\">$miej</div><br/>\n";
						if($miej>0)
							echo "<button class=\"pod\" onclick=\"podglad($sqr[IdDW])\">Podgląd</button>\n";
						echo "</div>\n";
					}
					$result->free_result();
				}
				else {    $error = "Brak wyniku wyszukania";    }
			}
			else {    $error = "Błąd zapytania";    }
			$bacic_connect->close();
		}
	}
?>