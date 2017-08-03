<?php
/* Copyright 2016 dodat */
/*---------------------------------------------------------------------------*
 * Test
 *      POST
 *---------------------------------------------------------------------------*/
require_once('../../etc/path.inc');
require_once('./sysdef_org.inc');

$loader = \PR\ClassLoader::getInstance();
$loader->setPaths(array(C_INSTALL_PATH_TEST.'/testPronto/etc'),'sample');
\PR\HTMLTag::loadFunc();

\PR\Locale::addIncPath(1,C_PR_SRCPATH.'/cmn/SysMessages_ja.inc');
\PR\Locale::addIncPath(2,C_PR_SRCPATH.'/cmn/SysMessages_en.inc');
\PR\Locale::setLocale();

$cntr = new \sample\AllDataType();
$entity = $cntr->newEntity();

// POST
$msg = null;
if(\PR\HTTPUtil::isPost()){
	$cntr->post();
	$msg = $cntr->checkPostByTarget('<br>',6,0,2);
}

include('./center.tpl');
?>
