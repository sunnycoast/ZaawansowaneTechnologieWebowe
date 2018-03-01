<?php
	print "\n";
	print "var tZaA = [];\n";
	if(!empty($_POST['z']))
	{
		require_once "polaczenie_bd.php";
		$bacic_connect = @new mysqli( $host, $db_user, $db_password, $db_name );

		if($bacic_connect->connect_errno!=0)
		{
			echo "Błąd połączenia z bazą danych:<br/>".$bacic_connect->connect_errno.".<br/>Opis:<br/>".$bacic_connect->connect_error;
		}
		else
		{
			$size=$_POST['z'];
			for($i=0;$i<$size;$i++)
			{	
				$name = "zid$i";
				$id = "$_POST[$name]";
				print "tZaA[$_POST[$name]] = { \"id\":$_POST[$name], ";
				$name = "zil$i";
				print "\"ilosc\":$_POST[$name], ";

				$bacic_connect->set_charset("utf8");
				$select_PMe = "SELECT ID_PM, NazwaProd, Opis, CenaBrutto, StawkaVAT, Kategoria FROM 07_vat INNER JOIN (06_produkty INNER JOIN 08_pozycjamenu ON 06_produkty.ID_Prod = 08_pozycjamenu.Produkt) ON 07_vat.ID_Vat = 08_pozycjamenu.Vat WHERE ID_PM = '$id'";

				if( $result = @$bacic_connect->query($select_PMe) )
				{
					$rn= $result->num_rows;
					if($rn==1)
					{
						$PMe= $result->fetch_assoc();
						print "\"nazw\":\"$PMe[NazwaProd]\", ";
						print "\"cena\":$PMe[CenaBrutto], ";
						print "\"vat\":$PMe[StawkaVAT], ";
						print "\"opis\":\"$PMe[Opis]\" };\n";
		
						$result->free_result();
					}
					else {    echo "Błąd";    }
				}
				else {    echo "Błąd zapytania";    }
			}
			$bacic_connect->close();
		}
	}
?>