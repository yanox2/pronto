<?php
/**
 * 定義 & 共通関数 & 初期処理
 */

// assetsへのURI
define('C_ASSETS_URI', '/samples/pr_ajax/assets');

// 共通テンプレートへのPATH
define('C_GLOBAL_TEMPLATE_PATH', '/var/www/html/samples/pr_ajax/tpl');

// クロスサイト - アクセス元オリジン
define('C_CROSSSITE_ORIGIN', 'https://xxxx.com');

// クロスサイト - アクセス先URL
define('C_CROSSSITE_DEST', 'https://xxxx.com/samples/pr_ajax/samples');

// テンプレートファイル名
$v_htmlTpl = 'htmlheader.tpl';
$v_headerTpl = null;
$v_leftTpl = 'left.tpl';
$v_centerLTpl = null;
$v_centerRTpl = null;
$v_footerTpl = 'footer.tpl';
$v_spTpl = null;

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