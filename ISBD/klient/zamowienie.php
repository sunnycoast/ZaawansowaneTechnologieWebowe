<?php
	print "\n";
	print "var tZam = [];\n";
	if(!empty($_POST["i"]))
	{
		$size=$_POST['i'];
		for($i=0;$i<$size;$i++)
		{
			$name = "id$i";
			print "tZam[ $_POST[$name] ] =";
			$name = "nz$i";
			print "{ \"nazw\":\"$_POST[$name]\",";
			$name = "cn$i";
			print " \"cena\":$_POST[$name],";
			$name = "il$i";
			print " \"ilosc\":$_POST[$name] };\n";
		}
	}
?>