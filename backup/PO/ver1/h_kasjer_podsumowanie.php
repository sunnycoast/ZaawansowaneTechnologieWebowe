<div class="fSala">
	<?php    require_once "bd_wybrane_miejsca.php";    ?>
	<script type="text/javascript">
		<?php echo $vbilety ?>
	</script>
</div>
<button class="cButtonPods" onclick="powrot()">Cofnij</button>
<button class="cButtonPods colS" onclick="zatwierdzKarta()">Karta</button>
<button class="cButtonPods colG" onclick="zatwierdzGotow()">Gotówka</button>