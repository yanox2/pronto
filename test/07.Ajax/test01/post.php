<?php
/* Copyright 2016 dodat */
/*---------------------------------------------------------------------------*
 * Test
 *      Ajax - post
 *---------------------------------------------------------------------------*/
namespace sample;

require_once('../../path.inc');
require_once(C_PR_HOME_PATH.'/test/07.Ajax/test01/sysdef_org.inc');
include('./0701a.php');

$homeDir = '/'.\PR\HTTPUtil::formatURL(C_PR_HOME_PATH);
$insDir = '/'.\PR\HTTPUtil::formatURL(C_PR_INSTALL_PATH);
$testDir = '/'.\PR\HTTPUtil::formatURL(C_PR_TEST_ROOT).'/07.Ajax/test01';

$loader = \PR\ClassLoader::getInstance();
$loader->setPaths(array($homeDir.'/sample'),'sample');

$data = new TestData();
$cntr = new UserProfile();
if($_POST['updateType'] == 0){
	$entity = $cntr->newEntity();
	$cntr->setArray($data->getData($_POST['prReq_UserId']));
}
$cntr->post();
$msg = '';
$rc = $cntr->checkPostX('sLoginId');
$msg = $cntr->addPostErrorMsgX($msg,"\n",'sLoginId',$rc);
$rc = $cntr->checkPasswordX('sPasswd',6,0,2);
$msg = $cntr->addPostErrorMsgX($msg,"\n",'sPasswd',$rc,6,0,2);
$rc = $cntr->checkPostX('sName');
$msg = $cntr->addPostErrorMsgX($msg,"\n",'sName',$rc);
$rc = $cntr->checkPostX('sEMail');
$msg = $cntr->addPostErrorMsgX($msg,"\n",'sEMail',$rc);
$rc = $cntr->checkPostX('iLocale');
$msg = $cntr->addPostErrorMsgX($msg,"\n",'iLocale',$rc);
$rc = $cntr->checkPostX('sNote',true);
$msg = $cntr->addPostErrorMsgX($msg,"\n",'sNote',$rc);
$rc = $cntr->checkPostX('iAuth');
$msg = $cntr->addPostErrorMsgX($msg,"\n",'iAuth',$rc);

$res = array();
if(empty($msg)){
$entity = $cntr->getEntity();
$type = 'replace';
if($_POST['submitId'] == 'btn_add'){
	$type = 'prepend';
	$res = array('data'=>$cntr->getArray(\PR\Model::TYPE_ALL));
	$target = array('iUserId','sLoginId','sName','sEMail','sNote');
	$tag = $cntr->getTrTag($entity,$target,'div_'.$entity->iUserId.'_');
	$res['dom'] = array($type=>array('test'=>$tag));
	$target = array('iUserId','sLoginId','sPasswd','sName','sEMail','iLocale','sNote','iAuth','iState');
	$cntr->setTargets($target);
	$items = $cntr->getArray(\PR\Model::TYPE_ALL,'sPost');
	$res['dom']['items'] = $items;
	$res['dom']['actId'] = 'div_'.$entity->iUserId.'_sLoginId';

}else if($_POST['submitId'] == 'btn_update'){
	$type = 'replace';
	$res = array('data'=>$cntr->getArray(\PR\Model::TYPE_ALL));
	$target = array('iUserId','sLoginId','sName','sEMail','sNote');
	$cntr->setTargets($target);
	$items = $cntr->getArray(\PR\Model::TYPE_ALL,'sVariable',false,'div_'.$entity->iUserId.'_');
	$res['dom'] = array($type=>$items);

}else if($_POST['submitId'] == 'btn_remove'){
	$type = 'removef';
	$res = array('data'=>$cntr->getArray(\PR\Model::TYPE_ALL));
	$target = array('iUserId','sLoginId','sName','sEMail','sNote');
	$cntr->setTargets($target);
	$items = $cntr->getArray(\PR\Model::TYPE_ALL,'sVariable',false,'div_'.$entity->iUserId.'_');
	$res['dom'] = array($type=>$items);
}
}

$rcode = 0;
$message = '更新完了！';
if(!empty($msg)){
	$rcode = C_PR_ERR_EPARAM;
	$message = $msg;
}

\PR\HTTPUtil::resAjax($rcode,$message,$res);

?>
