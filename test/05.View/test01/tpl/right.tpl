<?php
/* Copyright 2016 dodat */
/*---------------------------------------------------------------------------*
 * View
 *      右メニュー
 *---------------------------------------------------------------------------*/

$myUri = $this->get('myURI');
?>

<div id="lay_right" class="col span_5">
<div style="margin:50px 0; padding:10px; font-size:12px; line-height:20px;">
<div style="font-size:14px; font-weight:bold;">Sub Menu</div>
<div><a href="<?=$myUri.'/0501.php?st=1'?>">通常処理</a></div>
<div><a href="<?=$myUri.'/0501.php?st=2'?>">メッセージ出力</a></div>
<div><a href="<?=$myUri.'/0501.php?st=3'?>">エラー画面</a></div>
<div><a href="<?=$myUri.'/0501.php?st=4'?>">403</a></div>
<div><a href="<?=$myUri.'/0501.php?st=5'?>">404</a></div>
<div><a href="<?=$myUri.'/0501.php?st=6'?>">500</a></div>
<div><a href="<?=$myUri.'/0501.php?st=7'?>">503</a></div>
</div>
</div>
