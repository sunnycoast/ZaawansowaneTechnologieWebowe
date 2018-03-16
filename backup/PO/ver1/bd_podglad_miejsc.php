<?php
	$dkod="";
	$error="";
	$cena=0;
		 
	if (!empty($_POST['dkod']))
	{
		$dkod=$_POST['dkod'];
		require_once "bd_polaczenie.php";
		$bacic_connect = @new mysqli( $host, $db_user, $db_password, $db_name );

		if($bacic_connect->connect_errno!=0)
		{    $error = "Błąd połączenia z bazą danych";    }
		else
		{
			$bacic_connect->set_charset("utf8");
			$sql = "SELECT Miejsce FROM bilety INNER JOIN data_wystawienia ON bilety.DataWyst=data_wystawienia.IdDW WHERE IdDW = $dkod ORDER BY Miejsce ASC;";
			$bilety = array();
			if( $result = @$bacic_connect->query($sql) )
			{
				$rn = $result->num_rows;
				if($rn>0)
				{
					for($i=0;$i<$rn;$i++)
					{
						$sqr= $result->fetch_assoc();
						$bilety[$i]= "$sqr[Miejsce]";
					}
					$result->free_result();
				}
			}
			else {    $error = "Błąd zapytania 0";    }

			$sql = "SELECT Cena FROM spektakl INNER JOIN data_wystawienia ON spektakl.Kod=data_wystawienia.Spektakl WHERE IdDW = $dkod;";
			if( $result = @$bacic_connect->query($sql) )
			{
				$rn = $result->num_rows;
				if($rn>0)
				{
					$sqr= $result->fetch_assoc();
					$cena="$sqr[Cena]";
					$result->free_result();
				}
			}
			else {    $error = "Błąd zapytania 0";    }

			$rzedy=array("I","II","III","IV","V","VI","VII","VIII");
			$sale=array("Główna","Balkon I","Balkon II");
			$przel=array(2.0,1.5,1.0);
			$klasa=array("","kl1","kl2");

			//$sql = "SELECT * FROM miejsca INNER JOIN(sektory INNER JOIN(sale INNER JOIN (spektakl INNER JOIN data_wystawienia ON spektakl.Kod=data_wystawienia.Spektakl) ON sale.SalaS=data_wystawienia.Sala) ON sale.SalaS=sektory.IdS) ON sektory.IdS=miejsca.SektorM WHERE IdDW = $dkod AND miejsca.SektorM = 1 ORDER BY SektorM ASC, Rzad ASC, NrM ASC;";
			$sql = "SELECT * FROM miejsca ORDER BY SektorM ASC, Rzad ASC, NrM ASC;";
			if( $result = @$bacic_connect->query($sql) )
			{
				$rn = $result->num_rows;
				if($rn>0)
				{	
					$sqr= $result->fetch_assoc();
					{
						$b=0;
						echo "<div class=\"salaG\">\n<div class=\"sala\">Sala główna</div>\n<div>\n<div>\n<div class=\"rzad\"></div>\n";
						for($i=1;$i<17;$i++)
							echo "<div class=\"miej\">$i</div>\n";
						echo "</div>\n";
						$r=0;
						while("$sqr[SektorM]"==1)
						{
							$r++;
							if($r==5)
								echo "<br>\n";

							echo "<div>\n<div class=\"rzad\">".$rzedy[("$sqr[Rzad]"-1)]."</div>\n";
							while ("$sqr[Rzad]" == $r) 
							{
								echo "<div class=\"checkbox\">\n";
								if($b<count($bilety) AND"$sqr[IdM]"=="$bilety[$b]")
								{
									echo "<input type=\"checkbox\" id=\"box"."$sqr[IdM]"."\" disabled=\"true\" class=\"klD\">\n";
									$b++;
								}
								else
									echo "<input type=\"checkbox\" id=\"box"."$sqr[IdM]"."\" class=\"".$klasa[("$sqr[RodzajM]"-1)]."\">\n";
								
								echo "<div class=\"hdt\">\n";
								echo "<div class=\"tyt tyt2\">Sala:	  </div><div class=\"val val2\">".$sale[("$sqr[SektorM]"-1)]."</div><br>\n";
								echo "<div class=\"tyt tyt2\">Rząd:	  </div><div class=\"val val2\">".$rzedy[("$sqr[Rzad]"-1)]."</div><br>\n\n";
								echo "<div class=\"tyt tyt2\">Miejsce:</div><div class=\"val val2\">$sqr[NrM]</div><br>\n";
								echo "<div class=\"tyt tyt2\">Cena:	  </div><div class=\"val val2\">".($cena*$przel[("$sqr[RodzajM]"-1)]).".00 zł</div><br>\n";
								echo "</div>\n";
								echo "</div>\n";

								$sqr= $result->fetch_assoc();
							}
							echo "</div>\n";
						}
						echo "</div>\n</div>\n";

						echo "<div class=\"salaBI\">\n<div class=\"sala\">Balkon I</div>\n<div>\n<div>\n<div class=\"rzad\"></div>\n";
						for($i=1;$i<9;$i++)
							echo "<div class=\"miej\">$i</div>\n";
						echo "</div>\n";
						$r=0;
						while("$sqr[SektorM]"==2)
						{
							$r++;
							if($r==5)
								echo "<br>\n";
							echo "<div>\n<div class=\"rzad\">".$rzedy[("$sqr[Rzad]"-1)]."</div>\n";

							while ("$sqr[Rzad]" == $r) 
							{
								echo "<div class=\"checkbox\">\n";
								if($b<count($bilety) AND"$sqr[IdM]"=="$bilety[$b]")
								{
									echo "<input type=\"checkbox\" id=\"box"."$sqr[IdM]"."\" disabled=\"true\" class=\"klD\">\n";
									$b++;
								}
								else
									echo "<input type=\"checkbox\" id=\"box"."$sqr[IdM]"."\" class=\"".$klasa[("$sqr[RodzajM]"-1)]."\">\n";

								echo "<div class=\"hdt\">\n";
								echo "<div class=\"tyt tyt2\">Sala:	  </div><div class=\"val val2\">".$sale[("$sqr[SektorM]"-1)]."</div><br>\n";
								echo "<div class=\"tyt tyt2\">Rząd:	  </div><div class=\"val val2\">".$rzedy[("$sqr[Rzad]"-1)]."</div><br>\n\n";
								echo "<div class=\"tyt tyt2\">Miejsce:</div><div class=\"val val2\">$sqr[NrM]</div><br>\n";
								echo "<div class=\"tyt tyt2\">Cena:	  </div><div class=\"val val2\">".($cena*$przel[("$sqr[RodzajM]"-1)]).".00 zł</div><br>\n";
								echo "</div>\n";
								echo "</div>\n";

								$sqr= $result->fetch_assoc();
							}
							echo "</div>\n";
						}
						echo "</div>\n</div>\n";

						echo "<div class=\"salaBII\">\n<div class=\"sala\">Balkon II</div>\n<div>\n<div>\n<div class=\"rzad\"></div>\n";
						for($i=1;$i<25;$i++)
						{
							if($i==13)
									echo "<div class=\"rzad\"></div>\n";
							echo "<div class=\"miej\">$i</div>\n";
						}
						echo "</div>\n";
						$r=0;
						while("$sqr[SektorM]"==3)
						{
							$r++;
							if($r==5)
								echo "<br>\n";
							echo "<div>\n<div class=\"rzad\">".$rzedy[("$sqr[Rzad]"-1)]."</div>\n";

							while ("$sqr[Rzad]" == $r) 
							{	
								if("$sqr[NrM]"==13)
									echo "<div class=\"rzad\"></div>\n";

								echo "<div class=\"checkbox\">\n";
								if($b<count($bilety) AND"$sqr[IdM]"=="$bilety[$b]")
								{
									echo "<input type=\"checkbox\" id=\"box"."$sqr[IdM]"."\" disabled=\"true\" class=\"klD\">\n";
									$b++;
								}
								else
									echo "<input type=\"checkbox\" id=\"box"."$sqr[IdM]"."\" class=\"".$klasa[("$sqr[RodzajM]"-1)]."\">\n";

								echo "<div class=\"hdt\">\n";
								echo "<div class=\"tyt tyt2\">Sala:	  </div><div class=\"val val2\">".$sale[("$sqr[SektorM]"-1)]."</div><br>\n";
								echo "<div class=\"tyt tyt2\">Rząd:	  </div><div class=\"val val2\">".$rzedy[("$sqr[Rzad]"-1)]."</div><br>\n\n";
								echo "<div class=\"tyt tyt2\">Miejsce:</div><div class=\"val val2\">$sqr[NrM]</div><br>\n";
								echo "<div class=\"tyt tyt2\">Cena:	  </div><div class=\"val val2\">".($cena*$przel[("$sqr[RodzajM]"-1)]).".00 zł</div><br>\n";
								echo "</div>\n";
								echo "</div>\n";

								$sqr= $result->fetch_assoc();
							}
							echo "</div>\n";
						}
						echo "</div>\n</div>\n";
					}
					$result->free_result();
				}
				else {    $error = "Brak wyniku wyszukania";    }
			}
			else {    $error = "Błąd zapytania 2";    }
			$bacic_connect->close();
		}
	}
	else {    $error = "Błąd kodu";    }
	if($error!="")
		echo $error."<br>";
?>
