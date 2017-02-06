<?php
/* Copyright 2016 dodat */
/*---------------------------------------------------------------------------*
 * Test
 *      ビュー
 *---------------------------------------------------------------------------*/
require_once('../../path.inc');
require_once(C_PR_HOME_PATH.'/test/05.View/test02/sysdef_org.inc');

$homeDir = '/'.\PR\HTTPUtil::formatURL(C_PR_HOME_PATH);
$insDir = '/'.\PR\HTTPUtil::formatURL(C_PR_INSTALL_PATH);
$testDir = '/'.\PR\HTTPUtil::formatURL(C_PR_TEST_ROOT).'/05.View/test02';
$uriRoot = $testDir;

$st = intval($_GET['st']);
try{
	$loader = \PR\ClassLoader::getInstance();
	$aPaths = array($homeDir.'/test/05.View/test02');
	$loader->setPaths($aPaths,'');

	$view = new \PR\View();
	$view->setRenderer(new MyRenderer($homeDir));
	$ren = $view->getRenderer();
	$view->setValue('homeDir',$homeDir);
	$view->setValue('insDir',$insDir);
	$view->setValue('testDir',$testDir);

	if(\PR\HTTPUtil::isPost()){
		$view->setValue('methodType','POST');
		//\PR\HTTPUtil::redirect('0502.php');
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
