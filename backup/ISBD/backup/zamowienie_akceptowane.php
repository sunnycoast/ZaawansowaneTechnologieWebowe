<?php
	print "\n";
	print "var tZaA = [];\n";
	if(!empty($_POST['z']))
	{
		$size=$_POST['z'];
		for($i=0;$i<$size;$i++)
		{
			$name = "zid$i";
			print "tZaA[ $_POST[$name] ] =";
			$name = "znz$i";
			print "{ \"nazw\":\"$_POST[$name]\",";
			$name = "zcn$i";
			print " \"cena\":$_POST[$name],";
			$name = "zil$i";
			print " \"ilosc\":$_POST[$name] };\n";
		}
	}
?>