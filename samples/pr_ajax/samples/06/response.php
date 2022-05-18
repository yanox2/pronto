<?php
/**
 * Test
 * 送信後の自動処理 - 応答
 *
 */
require_once('../../demo_def.inc');

$type = $_REQUEST['name_radio'];
sleep(2);

$res = array();
if($type == 1){ // メッセージ出力
	$res['message'] = $_REQUEST['name_textArea1'];
}else if($type == 2){ // 確認メッセージ
	$res['confirm'] = $_REQUEST['name_textArea1'];
}else if($type == 3){ // ページ移動
	$res['location'] = 'index2.php';
}else if($type == 4){ // リロード
	$res['reload'] = true;
}else if($type == 5){
	$res['dom'] = 1;
}
resAjax(0, null, $res, null, true);

?>