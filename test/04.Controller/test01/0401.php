<?php
/* Copyright 2016 dodat */
/*---------------------------------------------------------------------------*
 * Controller
 *      コントローラ
 *---------------------------------------------------------------------------*/
require_once('../../path.inc');
require_once(C_PR_HOME_PATH.'/test/04.Controller/test01/sysdef_org.inc');

class Sample extends \PR\Controller{

	// @Override
	protected function before(){
		$v = $this->getView();
		$st = intval($_GET['st']);
		if($st == 0){
			$v->setTemplate('tpl/menu.tpl');
		}else{
			$v->setTemplate('tpl/test01.tpl');
		}
	}

	// @Override
	protected function action(){
		$v = $this->getView();
		$st = intval($_GET['st']);
		if(\PR\HTTPUtil::isPost()){
			$v->setValue('methodType','POST');
			//$this->setRedirect('0401.php');
		}else{
			$v->setValue('methodType','GET');
			if($st == 3){
				$this->ajax();
				$this->resAjax(0,'0401 OK!!',array('methodType'=>'ajax'));
			}else if($st == 4){
				throw new \PR\Exception(-1,'エラーメッセージを出力します。');
			}else if($st == 5){
				throw new \PR\Exception(-1,'Fatal Error!! です。戻るボタンで戻ってください。',true);
			}
		}
	}

	// @Override
	protected function after(){
		// 無視される
		//throw new \PR\Exception(-1,'無視される例外!!',true);
	}
}

$ctrl = new Sample();
$ctrl->run();

?>
