<?php
/**
 * Test
 * フォームのPOST2（Multipart/form-data） - 応答
 *
 */
require_once('../../demo_def.inc');

$vals = array();
$vals['inputText1'] = $_REQUEST['name_inputText1'];
$vals['textArea1'] = $_REQUEST['name_textArea1'];
$vals['inputFile1'] = $_FILES['name_inputFile1']['name'];
$vals['inputFile1_size'] = $_FILES['name_inputFile1']['size'];
$vals['radio'] = $_REQUEST['name_radio'];
if(array_key_exists('name_checkbox1', $_REQUEST)) $vals['checkbox1'] = $_REQUEST['name_checkbox1'];
if(array_key_exists('name_checkbox2', $_REQUEST))  $vals['checkbox2'] = $_REQUEST['name_checkbox2'];
if(array_key_exists('name_checkbox3', $_REQUEST))  $vals['checkbox3'] = $_REQUEST['name_checkbox3'];
if(array_key_exists('name_select1', $_REQUEST))  $vals['select'] = $_REQUEST['name_select1'];
sleep(2);

$res = array();
$res['vals'] = $vals;
resAjax(0, 'データを取得しました。', $res, null, true);

?>