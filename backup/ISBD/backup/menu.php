<?php
	require_once "polaczenie_bd.php";
	$bacic_connect = @new mysqli( $host, $db_user, $db_password, $db_name );

	if($bacic_connect->connect_errno!=0)
	{
		echo "Błąd połączenia z bazą danych:<br/>".$bacic_connect->connect_errno.".<br/>Opis:<br/>".$bacic_connect->connect_error;
	}
	else
	{
		$select_kat = "SELECT * FROM 05_kategorie";
		if( $result = @$bacic_connect->query($select_kat) )
		{
			$rn= $result->num_rows;
			if($rn>0)
			{
				print "var tKat = [];\n";
				print "var  Kat = [];\n";
				for($i=0;$i<$rn;$i++)
				{
					$kat= $result->fetch_assoc();
					print "tKat[$kat[ID_Kat]] = { \"id\":$kat[ID_Kat], ";
					print "\"nazw\":\"$kat[NazwaKat]\", \"kol\":\"$kat[KolorKat]\" };\n";
				}
				$result->free_result();
			}
			else {    echo "Brak kategorii.";    }
		}
		else {    echo "Błąd zapytania";    }
		//where
		//kwerenda wysukująca cenęPM, nazwęProd, opisProd po zadanym id kategorii
		#$select_PMe = "SELECT ID_PM, NazwaProd, Opis, CenaBrutto, StawkaVAT, Kategoria FROM 07_vat INNER JOIN (06_produkty INNER JOIN 08_pozycjamenu ON 06_produkty.ID_Prod = 08_pozycjamenu.Produkt) ON 07_vat.ID_Vat = 08_pozycjamenu.Vat WHERE (((DataArch)>=Date() Or (DataArch) Is Null) AND ((DataWprow)<=Date()));";
		$select_PMe = "SELECT ID_PM, NazwaProd, Opis, CenaBrutto, StawkaVAT, Kategoria FROM 07_vat INNER JOIN (06_produkty INNER JOIN 08_pozycjamenu ON 06_produkty.ID_Prod = 08_pozycjamenu.Produkt) ON 07_vat.ID_Vat = 08_pozycjamenu.Vat ";

		if( $result = @$bacic_connect->query($select_PMe) )
		{
			$rn= $result->num_rows;
			if($rn>0)
			{
				print "var tPMe = [];\n";
				print "var  PMe = [];\n";
				for($i=0;$i<$rn;$i++)
				{
					$PMe= $result->fetch_assoc();
					print "tPMe[$PMe[ID_PM]] = { \"id\":$PMe[ID_PM], \"nazw\":\"$PMe[NazwaProd]\",";
					print "\"cena\":$PMe[CenaBrutto], \"opis\":\"$PMe[Opis]\", ";
					print "\"vat\":$PMe[StawkaVAT], \"kat\":\"$PMe[Kategoria]\" };\n";
				}
				$result->free_result();
			}
			else {    echo "Brak pozycji w menu.";    }
		}
		else {    echo "Błąd zapytania";    }

		$bacic_connect->close();
	}
?>