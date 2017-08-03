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
<div><a href="<?=$myUri.'/0504.php?st=1'?>">通常処理</a></div>
<div><a id="postId" href="#">POST</a></div>
<div><a id="ajaxId" href="#">Ajax</a></div>
<div><a href="<?=$myUri.'/0504.php?st=4'?>">例外処理</a></div>
<div><a href="<?=$myUri.'/0504.php?st=5'?>">例外処理（fatal error）</a></div>
</div>
</div>

</main>
