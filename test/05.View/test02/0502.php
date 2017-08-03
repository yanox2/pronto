<?php
/* Copyright 2016 dodat */
/*---------------------------------------------------------------------------*
 * Test
 *      ビュー
 *---------------------------------------------------------------------------*/
require_once('../../etc/path.inc');
require_once('./sysdef_org.inc');

$st = intval($_GET['st']);
try{
	$loader = \PR\ClassLoader::getInstance();
	$aPaths = array(C_INSTALL_PATH_TEST.'/testPronto/05.View/test02');
	$loader->setPaths($aPaths);

	$view = new \PR\View();
	$view->setRenderer(new MyRenderer());
	$ren = $view->getRenderer();

	$uri = \PR\SysEnv::getYourDocRoot().'/05.View/test02';
	$view->setValue('myURI',$uri);

	if(\PR\HTTPUtil::isPost()){
		$view->setValue('methodType','POST');
	}else{
		$view->setValue('methodType','GET');
	}
	if($st == 0){
		$ren->setCenter('tpl/center.tpl');
		$view->show();
	}else if($st == 1){
		$ren->setCenter('tpl/center2.tpl');
		$view->show();
	}else if($st == 2){
		$ren->setCenter('tpl/center.tpl');
		$view->show();
	}else if($st == 3){
		\PR\HTTPUtil::resAjax(0,'0502 OK!!',array('methodType'=>'ajax'));
	}else if($st == 4){
		$ren->setCenter('tpl/center.tpl');
		throw new \PR\Exception(-1,'エラーメッセージを出力します。');
	}else if($st == 5){
		throw new \PR\Exception(-1,'Fatal Error!! です。戻るボタンで戻ってください。',true);
	}

}catch(Exception $e){
	$view->showError($e);
}

?>
