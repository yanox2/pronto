<?php
/**
 * Test
 * 左ペイン＋センター２ペイン
 *
 */
require_once('../../demo_def.inc');

$v_tplPath = '.'; // テンプレートへのPATH

// テンプレートファイル名の指定
$v_htmlTpl = 'htmlheader.tpl';
$v_headerTpl = null;
$v_leftTpl = 'left.tpl';
$v_centerLTpl = 'centerL.tpl';
$v_centerRTpl = 'centerR.tpl';
$v_footerTpl = null;
$v_spTpl = null;

include('../../tpl/layout.tpl');
?>