	<?php

		session_start();

		if ( isset($_SESSION['zalogowany']) )
		{
			if ( isset($_SESSION['log_adres']) )
			{
				$log_adres = $_SESSION['log_adres'];
				header("Location: $log_adres");
			}
			session_unset();
		}

	?>