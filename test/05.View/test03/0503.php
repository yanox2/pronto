<?php
/* Copyright 2016 dodat */
/*---------------------------------------------------------------------------*
 * Controller
 *      コントローラ
 *---------------------------------------------------------------------------*/
require_once('../../path.inc');
require_once(C_PR_HOME_PATH.'/test/05.View/test03/sysdef_org.inc');

class Sample extends \PR\Controller{

	// @Override
	protected function before(){
		$homeDir = '/'.\PR\HTTPUtil::formatURL(C_PR_HOME_PATH);
		$insDir = '/'.\PR\HTTPUtil::formatURL(C_PR_INSTALL_PATH);
		$testDir = '/'.\PR\HTTPUtil::formatURL(C_PR_TEST_ROOT).'/05.View/test03';

		$loader = \PR\ClassLoader::getInstance();
		$aPaths = array($homeDir.'/test/05.View/test03');
		$loader->setPaths($aPaths,'');

		$view = $this->getView();
		$view->setRenderer(new MyRenderer($homeDir));
		$view->setValue('homeDir',$homeDir);
		$view->setValue('insDir',$insDir);
		$view->setValue('testDir',$testDir);
	}

	// @Override
	protected function action(){
		$view = $this->getView();
		$ren = $view->getRenderer();
		if(\PR\HTTPUtil::isPost()){
			$view->setValue('methodType','POST');
			//$this->setRedirect('0503.php');
		}else{
			$view->setValue('methodType','GET');
		}
		$st = intval($_GET['st']);
		if($st == 0){
			$ren->setCenter('tpl/center.tpl');
		}else if($st == 1){
			$ren->setCenter('tpl/center2.tpl');
		}else if($st == 2){
			$ren->setCenter('tpl/center.tpl');
		}else if($st == 3){
			$this->ajax();
			$this->resAjax(0,'0503 OK!!',array('methodType'=>'ajax'));
		}else if($st == 4){
			$ren->setCenter('tpl/center.tpl');
			throw new \PR\Exception(-1,'エラーメッセージを出力します。');
		}else if($st == 5){
			throw new \PR\Exception(-1,'Fatal Error!! です。戻るボタンで戻ってください。',true);
		}
	}
}

$ctrl = new Sample();
$ctrl->run();

?>
