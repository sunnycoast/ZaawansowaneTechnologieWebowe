<?php
	if( isset($_POST['zkod']) )
		print "\nvar zkod = $_POST[zkod];\n";
	else
		header("Location: zamowienie_start.php");
?>