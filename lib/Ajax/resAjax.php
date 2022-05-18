<?php
/**
 * Ajax通信のレスポンスを返す。
 *
 * @param int $riCode エラーコード
 * @param string $rsMessage メッセージ
 * @param array $raRes レスポンスデータ配列 [key1=>value1, key2=>value2, ・・・]
 * @param array $raHeaders HTMLヘッダ挿入データ [[name1=>value1, name2=>value2, ・・・]]
 */
function resAjax($riCode, $rsMessage=null, $raRes=null, $raHeaders=null, $debug=false){
	if($raRes == null) $raRes = array();
	$raRes['rcode'] = $riCode;
	if($rsMessage) $raRes['message'] = $rsMessage;
	if($debug) $raRes['debugResults'] = var_export($raRes, true);
	$str='';$end='';
	if(!empty($_GET['jsonpcb'])){
		$str .= $_GET['jsonpcb'].'(';
		$end = ')';
	}
	$str .= json_encode($raRes, JSON_UNESCAPED_UNICODE).$end;
	if(empty($raHeaders)){
		header('Content-Type: application/json');
	}else{
		foreach($raHeaders as $header){
			header($header);
		}
	}
	print $str;
}
?>