<?php
/**
 * Test
 * 送信後の自動処理3（フォーム値編集） - 応答
 *
 */
require_once('../../demo_def.inc');

$type = $_REQUEST['type'];

$msg = 'フォーム値を変更しました。';
$reps = array();
if($type == 1){
	$reps = array(
		'id_inputText1'=>'値１',
		'id_textArea1'=>'値２',
		'name_radio'=>'val_radio3',
		'id_checkbox1'=>'val_checkbox1',
		'id_checkbox2'=>'',
		'id_checkbox3'=>'val_checkbox3',
		'id_select1'=>'val_option3'
	);
	$msg = 'フォーム値を変更しました。';
}else if($type == 2){
	$reps = array(
		'id_inputText1'=>'val_inputText1Value',
		'id_textArea1'=>'val_textArea1Value',
		'name_radio'=>'val_radio1',
		'id_checkbox1'=>'val_checkbox1',
		'id_checkbox2'=>'',
		'id_checkbox3'=>'',
		'id_select1'=>''
	);
	$msg = 'フォーム値を元に戻しました。';
}
sleep(2);

$res = array();
$res['dom']['replace'] = $reps;
resAjax(0, $msg, $res, null, true);

?>