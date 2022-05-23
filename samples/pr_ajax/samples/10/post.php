<?php
/**
 * Test
 * 前処理・後処理2（ユーザデータ編集） - ユーザデータの更新
 *
 */
require_once('../../demo_def.inc');

$name = $_REQUEST['name_name'];
$handle = $_REQUEST['name_handle'];
$sex = $_REQUEST['name_sex'];
$no = $_REQUEST['name_userno'];
$vals = array('name_name'=>$name, 'name_handle'=>$handle, 'name_sex'=>$sex, 'name_userno'=>$no);
sleep(2);

$res = array();
$res['vals'] = $vals;
$names = explode(' ', $name);
$dom = array('id_first'.$no=>$names[0], 'id_last'.$no=>$names[1], 'id_handle'.$no=>$handle);
$res['dom']['replace'] = $dom;
resAjax(0, 'ユーザデータを編集しました。', $res, null, true);

?>