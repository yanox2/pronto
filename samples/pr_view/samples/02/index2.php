<?php
/**
 * Test
 * ヘッダー＋左ペイン＋センター１ペイン＋フッター
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
$v_centerRTpl = null;
$v_footerTpl = 'footer.tpl';
$v_spTpl = null;

include('../../tpl/layout.tpl');
?>