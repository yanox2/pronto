<?php
/* Copyright 2016 dodat */
/*---------------------------------------------------------------------------*
 * Test
 *      ビュー
 *---------------------------------------------------------------------------*/
require_once('../../etc/path.inc');
require_once('./sysdef_org.inc');

$uri = \PR\SysEnv::getYourDocRoot().'/05.View/test01';
$view = new \PR\View();
$view->setValue('methodType','GET');
$view->setValue('myURI',$uri);
$view->setTemplate('tpl/test01.tpl');

$st = intval($_GET['st']);
try{
	if($st < 2){
		$view->show();
	}else if($st == 2){
		throw new \PR\Exception(-1,'エラーメッセージを出力します。');
	}else if($st == 3){
		throw new \PR\Exception(-1,'エラーメッセージを出力します。',true);
	}else if($st == 4){
		throw new \PR\Exception(C_PR_ERR_EACCESS,'403 Forbidden');
	}else if($st == 5){
		throw new \PR\Exception(C_PR_ERR_ENODEST,'404 Not Found');
	}else if($st == 6){
		throw new \PR\Exception(C_PR_ERR_EINTERNAL,'500 Internal Server Error');
	}else if($st == 7){
		throw new \PR\Exception(C_PR_ERR_ETEMP,'503 Service Temporarily Unavailable');
	}
}catch(Exception $e){
	$view->showError($e);
}

?>
