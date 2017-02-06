<?php
/* Copyright 2016 dodat */
/*---------------------------------------------------------------------------*
 * Test
 *      test01テンプレート
 *---------------------------------------------------------------------------*/
$type = $this->get('methodType');

include('../../etc/header.tpl');
?>

<header>●コントローラ（スタンドアロン）</header>
<article>
<section style="font-size:14px;">
<div style="margin:10px 0;"><?=C_PR_HOME_PATH.'/test/04.Controller/test01/sysdef_org.inc を読み込み'?></div>

<div style="background-color:aliceblue;">
<div style="">methodType - <?=$type?></div>
<div style="margin:10px 0; font-size:14px; background-color:aliceblue;">template - tpl/test01.tpl</div>
</div>

<?php
$homeDir = '/'.\PR\HTTPUtil::formatURL(C_PR_HOME_PATH);
$insDir = '/'.\PR\HTTPUtil::formatURL(C_PR_INSTALL_PATH);
$testDir = '/'.\PR\HTTPUtil::formatURL(C_PR_TEST_ROOT).'/04.Controller/test01';
$uriRoot = $testDir;

print '<div style="height:200px; margin:10px 0; padding:10px; font-size:12px; border:1px solid black; overflow-y:scroll; overflow-x:visible;">'."\n";

$url = $testDir.'/0401.php?st=1';
print '<div><a href="'.$url.'">通常処理</a></div>'."\n";
$url = $testDir.'/0401.php?st=2';
print '<div><a id="postId" href="#">POST</a></div>'."\n";
$url = $testDir.'/0401.php?st=3';
print '<div><a id="ajaxId" href="#">Ajax</a></div>'."\n";
$url = $testDir.'/0401.php?st=4';
print '<div><a href="'.$url.'">例外処理</a></div>'."\n";
$url = $testDir.'/0401.php?st=5';
print '<div><a href="'.$url.'">例外処理（fatal error）</a></div>'."\n";

print '</div>'."\n";
?>

</section>
</article>

<?php
include('../../etc/footer.tpl');
?>
