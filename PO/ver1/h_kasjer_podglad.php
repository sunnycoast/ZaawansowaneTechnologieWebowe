<form id="link2" class="fSala" method="post">
		<?php    require_once "bd_podglad_miejsc.php";    ?>
</form>
<div class="leg">
	<div class="rzad2">Kl: VIP</div>
	<input type="checkbox" class="lCh"disabled="true">
	<input type="checkbox" class="lCh"disabled="true" checked="true">
	<br>
	<div class="rzad2">Kl: I</div>
	<input type="checkbox" class="lCh kl1" disabled="true">
	<input type="checkbox" class="lCh kl1" disabled="true" checked="true">
	<br>
	<div class="rzad2">Kl: II</div>
	<input type="checkbox" class="lCh kl2" disabled="true">
	<input type="checkbox" class="lCh kl2" disabled="true" checked="true">
	<br>
	<div class="rzad2">Wykupione</div>
	<input type="checkbox" class="lCh klD" disabled="true" style="visibility: hidden;">
	<input type="checkbox" class="lCh klD" disabled="true">
	<br>
</div>
<button class="cButtonPow powP" onclick="powrot()">Cofnij</button>
<button class="cButtonPow powZ" onclick="zatwierdzPog()">Zatwierdź</button>
<div id="err" class="error"></div>
