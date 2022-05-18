<?php
/**
 * View
 * レイアウト
 *
 */

define('DS', DIRECTORY_SEPARATOR);

// Parameters
// $v_tplPath: テンプレートへのPATH
// $v_htmlTpl: HTMLヘッダーのテンプレートファイル名
// $v_headerTpl: ヘッダー部のテンプレートファイル名
// $v_leftTpl: 左ペインのテンプレートファイル名
// $v_footerTpl: フッター部のテンプレートファイル名
// $v_spTpl: レイアウト外のテンプレートファイル名

$v_gTplPath = C_GLOBAL_TEMPLATE_PATH; // 共通テンプレートへのPATH
$v_col_left = 2; // 左ペインカラム数
$v_sticky = false; // 固定ヘッダ
?>
<?php
// HTMLヘッダー
$tplFile = $v_tplPath.DS.'htmlheader.tpl';
if(!is_readable($tplFile)) $tplFile = $v_gTplPath.DS.$v_htmlTpl;
if(is_readable($tplFile)) include($tplFile);

// ヘッダー
$headerFile = null;
if($v_headerTpl){
	$headerFile = $v_tplPath.DS.$v_headerTpl;
	if(!is_readable($headerFile)) $headerFile = $v_gTplPath.DS.$v_headerTpl;
	if(!is_readable($headerFile)) $headerFile = null;
}
if($headerFile){
?>

<div title="sticky container">

<?php if($v_sticky){ ?>
<div class="bg_header sticky-top">
<?php }else{ ?>
<div class="bg_header">
<?php } ?>
<div id="lay_header" title="Header">
<?php include($headerFile); ?>
</div><!-- Header -->
</div><!-- bg_header -->
<?php } ?>

<div class="container-fluid">
<div class="row">
<?php
// 左ペイン
$tplFile = null;
if($v_leftTpl){
	$tplFile = $v_tplPath.DS.$v_leftTpl;
	if(!is_readable($tplFile)) $tplFile = $v_gTplPath.DS.$v_leftTpl;
	if(!is_readable($tplFile)) $tplFile = null;
}
if(!$tplFile){
	$v_col_left = 0;
}else{
?>

<div class="col-md-<?=$v_col_left?> bg_left">
<div id="lay_left" title="LeftPane">
<?php include($tplFile); ?>
</div><!-- LeftPane -->
</div><!-- col-md-<?=$v_col_left?> bg_left -->
<?php } ?>

<div class="col-md-<?=12-$v_col_left?> bg_center">

<div id="lay_center" title="Center">
<?php
// ★デモ用コード（削除してください）
if($v_demo) include($v_gTplPath.DS.'demo.tpl');
?>
<?php
// センターペイン
$tplFile = $v_tplPath.DS.'center.tpl';
if(!is_readable($tplFile)) $tplFile = $v_gTplPath.DS.'center.tpl';
if(is_readable($tplFile)) include($tplFile);
?>

</div><!-- Center -->

<?php
// フッターペイン
$tplFile = null;
if($v_footerTpl){
	$tplFile = $v_tplPath.DS.$v_footerTpl;
	if(!is_readable($tplFile)) $tplFile = $v_gTplPath.DS.$v_footerTpl;
	if(!is_readable($tplFile)) $tplFile = null;
}
if($tplFile){
?>
<div class="bg_footer">
<div id="lay_footer" title="Footer">
<?php include($tplFile); ?>
</div><!-- Footer -->
</div><!-- bg_footer -->
<?php } ?>

</div><!-- col-md-<?=12-$v_col_left?> bg_center -->

</div><!-- row -->
</div><!-- container -->
<?php if($headerFile){ ?>

</div><!-- sticky container -->
<?php } ?>

<?php
// スクリプトペイン
if($v_spTpl){
	$tplFile = $v_tplPath.DS.$v_spTpl;
	if(!is_readable($tplFile)) $tplFile = $v_gTplPath.DS.$v_spTpl;
	if(is_readable($tplFile)) include($tplFile);
}
?>

</body>
</html>