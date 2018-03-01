<?php
	$dkod="";
	$error="";
	$vbilety="";
		 
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
			$kodSpektaklu;
			$nazwaSpektaklu;
			$data;
			$godzina;
			$cena;
			$sql = "SELECT * FROM spektakl INNER JOIN data_wystawienia ON spektakl.Kod=data_wystawienia.Spektakl WHERE IdDW = $dkod;";
			if( $result = @$bacic_connect->query($sql) )
			{
				$rn = $result->num_rows;
				if($rn==1)
				{
					$sqr= $result->fetch_assoc();

					$kodSpektaklu	="$sqr[Kod]";
					$nazwaSpektaklu	="$sqr[Nazwa]";
					$data			="$sqr[Data]";
					$godzina		="$sqr[Godzina]";
					$cena			="$sqr[Cena]";

					$result->free_result();
				}
				else if($rn>1) 
					 {    $error = "Błąd Klucza";    }
				else {    $error = "Brak wyniku wyszukania";    }
			}
			else {    $error = "Błąd zapytania";    }

			$rzedy=array("I","II","III","IV","V","VI","VII","VIII");
			$sale=array("Główna","Balkon I","Balkon II");
			$przel=array(2.0,1.5,1.0);
			$klasa=array("","kl1","kl2");
			$klasa2=array("VIP","I","II");

			$max=$_POST['i'];
			$bilety=array();
			for($i=0;$i<$max;$i++)
			{	
				$b="IdM$i";
				$bilety[$i] = "$_POST[$b]";
			}
			$suma=0;
			echo "<div class=\"fSala\" style=\"overflow-y: auto; border-bottom: 3px solid steelblue;\">\n";
			for($i=0;$i<count($bilety);$i++)
			{
				$id = "$bilety[$i]";
				if($i>0)
					$vbilety= $vbilety.", $bilety[$i]";
				else
					$vbilety="var bilety = [ $bilety[0]";
				$sql = "SELECT * FROM miejsca WHERE IdM = $id;";
				if( $result = @$bacic_connect->query($sql) )
				{
					$rn = $result->num_rows;
					if($rn==1)
					{
						$sqr= $result->fetch_assoc();

						echo "<div class=\"spek2\">\n";
						echo "<div class=\"tyt\">Kod spektaklu:	 </div><div class=\"val\">$kodSpektaklu</div><br/>\n";
						echo "<div class=\"tyt\">Nazwa spektaklu:</div><div class=\"val\">$nazwaSpektaklu</div><br/>\n";
						echo "<div class=\"tyt\">Data:			 </div><div class=\"val\">$data</div><br/>\n";
						echo "<div class=\"tyt\">Godzina:		 </div><div class=\"val\">$godzina</div><br/>\n";
						echo "<div class=\"tyt\">Sala:	 </div><div class=\"val\">".$sale[("$sqr[SektorM]"-1)]."</div><br/>\n";
						echo "<div class=\"tyt\">Miejsce:</div><div class=\"val\">$sqr[NrM]</div><br/>\n";
						echo "<div class=\"tyt\">Rząd:	 </div><div class=\"val\">".$rzedy[("$sqr[Rzad]"-1)]."</div><br/>\n";
						echo "<div class=\"tyt\">Klasa:	 </div><div class=\"val\">".$klasa2[("$sqr[RodzajM]"-1)]."</div><br/>\n";
						$suma+=($cena*$przel[("$sqr[RodzajM]"-1)]);
						echo "<div class=\"tyt\">Cena:	 </div><div class=\"val\">".($cena*$przel[("$sqr[RodzajM]"-1)]).".00zł</div><br/>\n";

						echo "<button class=\"usX\" onclick=\"usunBilet($i)\">X</button><br/>\n";
						echo "</div>";

						$result->free_result();
					}
					else if($rn>1) 
						 {    $error = "Błąd Klucza";    }
					else {    $error = "Brak wyniku wyszukania";    }
				}
				else {    $error = "Błąd zapytania";    }
			}
			if(count($bilety)>0)
				$vbilety= $vbilety." ];\n";
			echo "</div><div class=\"suma\">Liczba biletów: ".count($bilety)." , razem: $suma.00 zł</div><br/>\n";

			$bacic_connect->close();
		}
	}
	else {    $error = "Błąd kodu";    }
	if($error!="")
		echo $error."<br>";
	else
	{
		echo "<input name=\"dkod\" type=\"hidden\" value=\"$dkod\">\n<input name=\"pkod\" type=\"hidden\" value=\"$pkod\"/>\n";
	}
?>