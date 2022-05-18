<?php
/**
 * Test
 * 前処理・後処理2（ユーザデータ編集） - ユーザデータの取得
 *
 */
require_once('../../demo_def.inc');

$no = $_REQUEST['no'];
if($no == 1){
	$name = 'James Smith';
	$handle = '@james';
	$sex = 'male';
}else if($no == 2){
	$name = 'John Williams';
	$handle = '@john';
	$sex = 'male';
}else if($no == 3){
	$name = 'Robert Brown';
	$handle = '@robert';
	$sex = 'male';
}else if($no == 4){
	$name = 'Michael Miller';
	$handle = '@michael';
	$sex = 'female';
}else if($no == 5){
	$name = 'William Taylor';
	$handle = '@william';
	$sex = 'male';
}
$reps = array(
	'id_name'=>$name,
	'id_handle'=>$handle,
	'name_sex'=>$sex,
	'id_userno'=>$no
);
sleep(2);

$res = array();
$res['dom']['replace'] = $reps;
resAjax(0, null, $res, null, true);

?>