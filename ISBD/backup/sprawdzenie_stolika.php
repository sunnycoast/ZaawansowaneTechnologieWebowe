<?php
	$nick="";
	$miej="";
	$stol="";
	$zkod="";
	$adre="";
	$nickErr='';
	$miejErr='';
	$stolErr='';
	$ogolErr='';
	if( $zkod=="" )
		{	
			//print"zkod=$zkod";
			if (isset($_POST['nick']))
			{
				$nick=$_POST['nick'];
				if($nick!="pracownik")
					$adre="zamowienie_start.php";
				else $adre="../pracownik/pracownik_start.php";
			}
			if (isset($_POST['stol']) && $adre!="../pracownik/pracownik_start.php") 
			{
				require_once "polaczenie_bd.php";

				$bacic_connect = @new mysqli( $host, $db_user, $db_password, $db_name );

				if($bacic_connect->connect_errno!=0)
				{
					echo "Błąd połączenia z bazą danych:<br/>".$bacic_connect->connect_errno.".<br/>Opis:<br/>".$bacic_connect->connect_error;
				}
				else
				{
					$noErr = true;
					$nick=$_POST['nick'];
					if($nick=="")
					{
						$nickErr="Proszę podać imię.";
						$noErr = false;
					}
					$miej=$_POST['miej'];
					if($miej=="")
					{
						$miejErr="Proszę podać liczbę osób.<br>";
						$noErr = false;
					}
					$stol=$_POST['stol'];
					if($stol=="")
					{
						$stolErr="Proszę podać kod z tabliczki.<br>";
						$noErr = false;
					}

					if($noErr)
					{
						$sql = "SELECT * FROM 10_sektory INNER JOIN 11_stoliki ON 10_sektory.ID_Sk=11_stoliki.Sektor WHERE NazwaSt='$stol'";
						if( $result = @$bacic_connect->query($sql) )
						{
							if($result->num_rows>0)
							{
								$Stl= $result->fetch_assoc();
								$result->free_result();
								if("$Stl[Aktywny]"==1)
								{
									if( $miej>=("$Stl[LiczbaMiejsc]"-2) )
									{
										$idStol="$Stl[ID_Stolika]";
										$hour=date("h");
										if(date("a")=="pm") {    $hour+=12;    }
										$time= date("Y-m-d $hour:i:s");

										$sql = "INSERT INTO 04_zamowienia (Stolik, DataOtw) VALUES ('$idStol', '$time')";
										if ($bacic_connect->query($sql) === TRUE) 
										{
											$zkod= @$bacic_connect->insert_id;
										}
										else {    print "Błąd zapisu";    }
									}
									else {    $ogolErr="Uprzejmie prosilibyśmy o zmianę stolika na mniejszy.";    }
								}
								else {    $ogolErr="Przepraszamy ale sektor $Stl[NazwaSk] nie jest aktualnie obslugiwany.";    }
							}
							else {    $ogolErr="Przepraszamy podany kod stolika jest niepoprawny.";    }
						}
						else {    echo "Błąd zapytania";    }
						$bacic_connect->close();
					}
				}
			}
		}
?>