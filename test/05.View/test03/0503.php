<?php
/* Copyright 2016 dodat */
/*---------------------------------------------------------------------------*
 * Controller
 *      コントローラ
 *---------------------------------------------------------------------------*/
require_once('../../etc/path.inc');
require_once('./sysdef_org.inc');

class Sample extends \PR\Controller{

	// @Override
	protected function before(){
		$loader = \PR\ClassLoader::getInstance();
		$aPaths = array(C_INSTALL_PATH_TEST.'/testPronto/05.View/test03');
		$loader->setPaths($aPaths);

		$view = $this->getView();
		$view->setRenderer(new MyRenderer());
		$uri = \PR\SysEnv::getYourDocRoot().'/05.View/test03';
		$view->setValue('myURI',$uri);
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
