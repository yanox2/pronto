<?php
/**
 * Test
 * クロスサイト 許可なし（JSONP） - 応答
 *
 */
require_once('../../demo_def.inc');

$vals = array();
$vals['inputText1'] = $_REQUEST['name_inputText1'];
$vals['textArea1'] = $_REQUEST['name_textArea1'];
sleep(2);

$res = array();
$res['vals'] = $vals;
resAjax(0, 'データを取得しました。', $res, null, true);

?>