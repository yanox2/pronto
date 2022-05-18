<?php
/**
 * View
 * センターテンプレート
 *
 */

// Parameters
// $v_tplPath: テンプレートへのPATH
// $v_gTplPath: 共通テンプレートへのPATH
// $v_centerLTpl: センターテンプレート左
// $v_centerRTpl: センターテンプレート右
// $v_errmsg: エラーメッセージ

$v_col_centerL = 6; // センター左カラム数
$v_col_centerR = 6; // センター右カラム数
?>
<?php
// 右ペイン有無のチェック
$tplRFile = null;
if($v_centerRTpl){
	$tplRFile = $v_tplPath.DS.$v_centerRTpl;
	if(!is_readable($tplRFile)) $tplRFile = $v_gTplPath.DS.$v_centerRTpl;
	if(!is_readable($tplRFile)) $tplRFile = null;
}
if(!$tplRFile) $v_col_centerL = 12;
?>

<div class="row">
<div class="col-md-<?=$v_col_centerL?> bg_centerL">
<div id="lay_centerL" title="CenterL">
<?php
// エラーメッセージ出力
if($v_errmsg){
?>
<div class="alert alert-danger" style="margin:10px 0;" role="alert"><?=$v_errmsg?></div>
<?php } ?>
<?php
// 左ペイン出力
$tplFile = $v_tplPath.DS.$v_centerLTpl;
if(!is_readable($tplFile)) $tplFile = $v_gTplPath.DS.$v_centerLTpl;
if(is_readable($tplFile)) include($tplFile);
?>
</div><!-- CenterL -->
</div><!-- col-md-<?=$v_col_centerL?> bg_centerL -->
<?php
// 右ペイン出力
if($tplRFile){
?>

<div class="col-md-<?=$v_col_centerR?> bg_centerR">
<div id="lay_centerR" title="CenterR" style="height:100%;">
<?php
include($tplRFile);
?>
</div><!-- CenterR -->
</div><!-- col-md-<?=$v_col_centerR?> bg_centerR -->
<?php } ?>
</div><!-- row -->
