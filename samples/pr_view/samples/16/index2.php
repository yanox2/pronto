<?php
/**
 * Test
 * センター１ペイン
 *
 */
require_once('../../demo_def.inc');

$v_tplPath = '.'; // テンプレートへのPATH

// テンプレートファイル名の指定
$v_htmlTpl = 'htmlheader.tpl';
$v_headerTpl = null;
$v_leftTpl = null;
$v_centerLTpl = 'centerL.tpl';
$v_centerRTpl = null;
$v_footerTpl = null;
$v_spTpl = null;

include('../../tpl/layout.tpl');
?>