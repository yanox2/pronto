<?php
/**
 * Test
 * 送信後の自動処理2（HTML編集） - 応答
 *
 */
require_once('../../demo_def.inc');

$type = $_REQUEST['type'];

$msg = 'HTML を変更しました。';
$dom = array();
if($type == 1){
	$dom['append'] = array('id_area1'=>'<div id="id_append" class="ele">append</div>');
	$dom['prepend'] = array('id_area1'=>'<div id="id_prepend" class="ele">prepend</div>');
	$dom['after'] = array('id_area1'=>'<div id="id_after" class="ele">after</div>');
	$dom['before'] = array('id_area1'=>'<div id="id_before" class="ele">before</div>');
	$dom['replace'] = array('id_source'=>'replace');
	$msg = 'HTML を変更しました。';
}else if($type == 2){
	$dom['removef'] = array('id_append'=>1, 'id_prepend'=>1, 'id_after'=>1, 'id_before'=>1);
	$dom['replace'] = array('id_source'=>'source');
	$msg = 'HTML を元に戻しました。';
}
sleep(2);

$res = array();
$res['dom'] = $dom;
resAjax(0, $msg, $res, null, true);

?>