<?php
/* Copyright 2016 dodat */
/*---------------------------------------------------------------------------*
 * Test
 *      test03テンプレート（center）
 *---------------------------------------------------------------------------*/

$type = $this->get('methodType');
$homeDir = $this->get('homeDir');
$testDir = $this->get('testDir');

?>
<header>●ビュー2（コントローラあり）</header>
<article>
<section style="font-size:14px;">
<div style="margin:10px 0;"><?=$homeDir.'/test/05.View/test03/sysdef_org.inc を読み込み'?></div>

<div style="background-color:aliceblue;">
<div style="">methodType - <?=$type?></div>
<div style="margin:10px 0; font-size:14px; background-color:aliceblue;">template - tpl/test03.tpl</div>
</div>

<?php
print '<div style="height:200px; margin:10px 0; padding:10px; font-size:12px; border:1px solid black; overflow-y:scroll; overflow-x:visible;">'."\n";

$url = $testDir.'/0503.php?st=1';
print '<div><a href="'.$url.'">通常処理</a></div>'."\n";
$url = $testDir.'/0503.php?st=2';
print '<div><a id="postId" href="#">POST</a></div>'."\n";
$url = $testDir.'/0503.php?st=3';
print '<div><a id="ajaxId" href="#">Ajax</a></div>'."\n";
$url = $testDir.'/0503.php?st=4';
print '<div><a href="'.$url.'">例外処理</a></div>'."\n";
$url = $testDir.'/0503.php?st=5';
print '<div><a href="'.$url.'">例外処理（fatal error）</a></div>'."\n";

print '</div>'."\n";
?>

</section>
</article>
