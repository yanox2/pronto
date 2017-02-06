<?php
/* Copyright 2016 dodat */
/*---------------------------------------------------------------------------*
 * Dispatcher
 *      ディスパッチ（phpファイルのインクルート）
 *---------------------------------------------------------------------------*/
require_once('../../path.inc');
require_once(C_PR_HOME_PATH.'/test/03.Dispatcher/test02/sysdef_org.inc');

include('../../etc/header.tpl');
?>

<header>●ディスパッチ（phpファイルのインクルート）</header>
<article>
<section style="font-size:14px;">
<div style="margin:10px 0;"><?=C_PR_HOME_PATH.'/test/03.Dispatcher/test02/sysdef_org.inc を読み込み'?></div>

<?php

$homeDir = '/'.\PR\HTTPUtil::formatURL(C_PR_HOME_PATH);
$insDir = '/'.\PR\HTTPUtil::formatURL(C_PR_INSTALL_PATH);
$testDir = '/'.\PR\HTTPUtil::formatURL(C_PR_TEST_ROOT).'/03.Dispatcher/test02';
$uriRoot = $testDir;

if($_GET['st'] == 2){
	\PR\SysEnv::setSubSysMode(2);
	\PR\SysEnv::setSubSysURIRoot($uriRoot);
}

$disp = new \PR\Dispatcher();
$disp->setMode(\PR\Dispatcher::MODE_INCLUDE);
$dest = $disp->dispatch();

print '<div style="height:200px; margin:10px 0; padding:10px; font-size:12px; border:1px solid black; overflow-y:scroll; overflow-x:visible;">'."\n";

$url = $testDir.'/dir1/dir2/disp.php?st=1';
print '<div><a href="'.$url.'">サブシステムなし</a></div>'."\n";
$url = $testDir.'/subsys1/dir1/dir2/disp.php?st=2';
print '<div><a href="'.$url.'">サブシステムあり</a>（C_PR_SUBSYS_MODE="2", C_PR_SUBSYS_URIROOT="'.$uriRoot.'"）</div>'."\n";

print '</div>'."\n";

?>

</section>
</article>

<?php
include('../../etc/footer.tpl');
?>
