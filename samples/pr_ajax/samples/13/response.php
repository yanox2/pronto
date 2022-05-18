<?php
/**
 * Test
 * クロスサイト Preflight - 応答
 *
 */
require_once('../../demo_def.inc');

$method = $_SERVER['REQUEST_METHOD'];
if($method == 'OPTIONS'){
	header('Access-Control-Allow-Origin: '.C_CROSSSITE_ORIGIN);
	header('Access-Control-Allow-Headers: abc');
	//header('Access-Control-Allow-Headers: *');
	exit();
}

$vals = array();
$vals['inputText1'] = $_GET['name_inputText1'];
$vals['textArea1'] = $_GET['name_textArea1'];
sleep(2);

header('Access-Control-Allow-Origin: '.C_CROSSSITE_ORIGIN);

$res = array();
$res['vals'] = $vals;
resAjax(0, 'データを取得しました。', $res, null, true);

?>