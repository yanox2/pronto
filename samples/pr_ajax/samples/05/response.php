<?php
/**
 * Test
 * onClickメソッド - 応答
 *
 */
require_once('../../demo_def.inc');

$post = ($_SERVER['REQUEST_METHOD'] == 'POST');
$vals = array();
$vals['no'] = $_REQUEST['no'];
if($post){
	$vals['First'] = $_REQUEST['First'];
	$vals['Last'] = $_REQUEST['Last'];
}
sleep(2);

$res = array();
$res['vals'] = $vals;
$msg = 'データを取得しました。';
if($post) $msg = 'ユーザデータを編集しました。';
resAjax(0, $msg, $res, null, true);

?>