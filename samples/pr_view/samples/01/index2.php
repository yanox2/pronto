<?php
/**
 * Test
 * ヘッダー＋左ペイン＋センター２ペイン＋フッター＋スクリプト
 *
 */
require_once('../../demo_def.inc');

$v_tplPath = '.'; // テンプレートへのPATH
$v_errmsg = 'エラーメッセージが表示されます。';

// テンプレートファイル名の指定
$v_htmlTpl = 'htmlheader.tpl';
$v_headerTpl = 'header.tpl';
$v_leftTpl = 'left.tpl';
$v_centerLTpl = 'centerL.tpl';
$v_centerRTpl = 'centerR.tpl';
$v_footerTpl = 'footer.tpl';
$v_spTpl = 'script.tpl';

include('../../tpl/layout.tpl');
?>