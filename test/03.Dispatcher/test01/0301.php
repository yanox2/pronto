<?php
/* Copyright 2016 dodat */
/*---------------------------------------------------------------------------*
 * Test
 *      ディスパッチ（メソッドコール）
 *---------------------------------------------------------------------------*/
require_once('../../etc/path.inc');
require_once('./sysdef_org.inc');

include('../../etc/header.tpl');
?>
<div id="lay_center" class="col span_14" style="min-height:1000px; padding:30px;">
<header style="margin-bottom:20px; font-size:20px;">●ディスパッチ（メソッドコール）</header>
<article style="font-size:14px;">

<?php
$uri = \PR\SysEnv::getYourDocRoot().'/03.Dispatcher/test01';
if($_GET['st'] == 2){
	\PR\SysEnv::setSubSysMode(2);
	\PR\SysEnv::setSubSysURIRoot($uri);
}

$disp = new \PR\Dispatcher();
$disp->setMode(\PR\Dispatcher::MODE_CALL);
$dest = $disp->dispatch();
?>

</article>
</div>

<?php
include('./right.tpl');
include('../../etc/footer.tpl');
?>
