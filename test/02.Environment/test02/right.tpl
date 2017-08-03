<?php
/* Copyright 2016 dodat */
/*---------------------------------------------------------------------------*
 * View
 *      右メニュー
 *---------------------------------------------------------------------------*/
?>

<div id="lay_right" class="col span_5">
<div style="margin:50px 0; padding:10px; font-size:12px; line-height:20px;">
<div style="font-size:14px; font-weight:bold;">Sub Menu</div>
<div><a href="<?=$uriRoot?>/0202.php">phpファイルを直接指定</a></div>
<div><a href="<?=$uriRoot?>/">phpファイル名を省略</a></div>
<div><a href="<?=$uriRoot?>">phpファイル名を省略</a>（最後尾の"/"なし）</div>
<div><a href="<?=$uriRoot?>/aaa/bbb/?st=1">システムのドキュメントルートを指定</a>（C_PR_YOUR_DOCROOT="<?=$uriRoot?>"）</div>
<div><a href="<?=$uriRoot?>/aaa/bbb/?st=2">サブシステムの判定</a>（C_PR_SUBSYS_MODE="1", C_PR_SUBSYS_MAINDOMAIN="<?=$domain?>"）</div>
<div><a href="<?=$uriRoot?>/root/subsys1/ccc/disp.php?st=3">サブシステムの判定</a>（C_PR_SUBSYS_MODE="2", C_PR_SUBSYS_URIROOT="<?=$uriRoot.'/root'?>"）</div>
</div>
</div>
