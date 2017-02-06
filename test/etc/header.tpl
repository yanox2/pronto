<?php
/* Copyright 2016 dodat */
/*---------------------------------------------------------------------------*
 * Test
 *      ヘッダ
 *---------------------------------------------------------------------------*/
if(C_PR_TEST_INDEX == 'true'){
	require_once('./path.inc');
}else{
	require_once('../../path.inc');
}
$root = '/'.trim(C_PR_TEST_ROOT,'/');
?>
<!DOCTYPE html>
<!-- 文字コード判別用 -->
<html lang="ja">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0">
<meta name="robots" content="noindex,nofollow">
<meta name="author" content="dodat">
<meta name="keywords" content="">
<meta name="description" content="">
<title>Pronto</title>
<link rel="stylesheet" href="<?=$root?>/etc/style_pronto.css" type="text/css" media="all" />
<link rel="stylesheet" href="<?=$root?>/etc/style_test.css" type="text/css" media="all" />
<script type="text/javascript" src="<?=$root?>/etc/jquery-2.1.4.min.js" charset="utf-8"></script>
<script type="text/javascript" src="<?=$root?>/etc/script_pronto.js" charset="utf-8"></script>
<script type="text/javascript" src="<?=$root?>/etc/script_test.js" charset="utf-8"></script>
</head>
<body class="fontM" style="margin:0; color:black; background-color:#f2f2f2;">
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
<div style="margin-left:10px;"><a href="<?=$path?>test02/0602.php">DB更新</a></div>
<div style="margin-left:10px;"><a href="<?=$path?>test03/0603.php">DB更新</a></div>
<?php
$path = $root.'/07.Ajax/';
?>
<div>07. Ajax</div>
<div style="margin-left:10px;"><a href="<?=$path?>test01/0701.php">静的フォーム</a></div>
<div style="margin-left:10px;"><a href="<?=$path?>test02/0702.php">ダイアログ形式フォーム</a></div>

</div>
</div>
</aside>

<div id="lay_center" class="col span_19" style="min-height:1000px; padding:30px;">
