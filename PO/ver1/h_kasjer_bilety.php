<h1 class="c">Sprzedaż biletów</h1>
<div class="lSpek">
	<?php    require_once "bd_wyszukaj_spektakl.php";    ?>
</div>
<form class="fWysz" method="post">
		<div id="err0" class="err c"><?=$error;?></div>

		<div class="nf nfb">Nazwa spektaklu:</div>
		<input class="yI" type="text" name="naz" value="<?=$naz?>" autocomplete="off"><br/>

		<div class="nf nfb">Data spektaklu:</div>
		<input class="yI" type="date" name="dat" value="<?=$dat?>" min="<?=date('Y-m-d')?>"autocomplete="off"><br/>

		<div class="nf nfb">Kod spektaklu: </div>
		<input class="yI" type="number" name="kod" value="<?=$kod?>" autocomplete="off"><br/>
		<input class="yII" type="submit" value="Szukaj"><br/>
		<input id="pkod" name="pkod" type="hidden" value="<?=$pkod?>"/>
</form>

<button class="cButtonPow" onclick="powrot()">Cofnij</button>
