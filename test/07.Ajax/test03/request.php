<?php
/* Copyright 2017 dodat */
/*---------------------------------------------------------------------------*
 * Test
 *      Ajax - request
 *---------------------------------------------------------------------------*/
namespace sample;

require_once('../../etc/path.inc');
require_once('./sysdef_org.inc');
include('./0703a.php');

$loader = \PR\ClassLoader::getInstance();
$loader->setPaths(array(C_INSTALL_PATH_TEST.'/testPronto/etc'),'sample');
\PR\HTMLTag::loadFunc();

$data = new TestData();
$cntr = new UserProfile();
$entity = $cntr->newEntity();
$cntr->setArray($data->getData($_POST['prReq_ReqUserId']),\PR\Container::COLUMN);

$res = array();
$target = array('iUserId','sLoginId','sPasswd','sName','sEMail','iLocale','sNote','iAuth','iState');
$items = $cntr->getArrayX($target,\PR\Container::POST);
$res['dom']['replace'] = $items;

\PR\HTTPUtil::resAjax(0,null,$res);

?>
