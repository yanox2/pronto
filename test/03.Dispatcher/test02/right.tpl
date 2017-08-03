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
<div><a href="<?=$uri.'/dir1/dir2/disp.php?st=1'?>">サブシステムなし</a></div>
<div><a href="<?=$uri.'/subsys1/dir1/dir2/disp.php?st=2'?>">サブシステムあり</a>（C_PR_SUBSYS_MODE="2", C_PR_SUBSYS_URIROOT="<?=\PR\SysEnv::getSubSysURIRoot()?>"）</div>
</div>
</div>
