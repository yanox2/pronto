<?php
/**
 * Test
 * ヘッダー＋センター１ペイン＋フッター
 *
 */
require_once('../../demo_def.inc');

$v_tplPath = '.'; // テンプレートへのPATH

// テンプレートファイル名の指定
$v_headerTpl = 'header.tpl';
$v_leftTpl = null;
$v_centerLTpl = 'centerL.tpl';
$v_centerRTpl = null;
$v_footerTpl = 'footer.tpl';
$v_spTpl = null;

include('../../tpl/layout.tpl');
?>