<?php
/* Copyright 2016 dodat */
/*---------------------------------------------------------------------------*
 * Test
 *      ヘッダ
 *---------------------------------------------------------------------------*/

$root = \PR\SysEnv::getYourDocRoot();
?>
<main class="container row">

<aside id="lay_left" class="col span_5">
<div class="SideMenu">
<div style="margin:10px auto 0px; text-align:center;">Test</div>
<div style="margin-top:20px;"></div>
<div style="margin:10px; font-size:12px;">
<div>01. Install</div>
<?php
$path = $root.'/02.Environment/';
?>
<div>02. Environment</div>
<div style="margin-left:10px;"><a href="<?=$path?>test01/0201.php">sysdef_org.incの編集</a></div>
<div style="margin-left:10px;"><a href="<?=$path?>test02/0202.php">Request情報</a></div>
<?php
$path = $root.'/03.Dispatcher/';
?>
<div>03. Dispatcher</div>
<div style="margin-left:10px;"><a href="<?=$path?>test01/ClassA/methodA/?st=1">メソッドコール</a></div>
<div style="margin-left:10px;"><a href="<?=$path?>test02/dir1/dir2/disp.php?st=1">ファイルインクルート</a></div>
<div style="margin-left:10px;"><a href="<?=$path?>test03/subsys1/ClassA/methodA/?st=1">カスタム</a></div>
<?php
$path = $root.'/04.Controller/';
?>
<div>04. Controller</div>
<div style="margin-left:10px;"><a href="<?=$path?>test01/0401.php">スタンドアロン</a></div>
<div style="margin-left:10px;"><a href="<?=$path?>test02/">ディスパッチあり</a></div>
<?php
$path = $root.'/05.View/';
?>
<div>05. View</div>
<div style="margin-left:10px;"><a href="<?=$path?>test01/0501.php">OnePane</a></div>
<div style="margin-left:10px;"><a href="<?=$path?>test02/0502.php">Layout</a></div>
<div style="margin-left:10px;"><a href="<?=$path?>test03/0503.php">コントローラあり</a></div>
<div style="margin-left:10px;"><a href="<?=$path?>test04/">ディスパッチあり</a></div>
<?php
$path = $root.'/06.Model/';
?>
<div>06. Model</div>
<div style="margin-left:10px;"><a href="<?=$path?>test01/0601.php">Model Generator</a></div>
<div style="margin-left:10px;"><a href="<?=$path?>test02/0602.php">POSTチェック</a></div>
<div style="margin-left:10px;"><a href="<?=$path?>test03/0603.php">DB更新</a></div>
<?php
$path = $root.'/07.Ajax/';
?>
<div>07. Ajax</div>
<div style="margin-left:10px;"><a href="<?=$path?>test01/0701.php">静的フォーム</a></div>
<div style="margin-left:10px;"><a href="<?=$path?>test02/0702.php">ダイアログ形式フォーム</a></div>
<div style="margin-left:10px;"><a href="<?=$path?>test03/0703.php">ajaxデータ取得</a></div>

</div>
</div>
</aside>
