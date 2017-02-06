<?php
/* Copyright 2016 dodat */
/*---------------------------------------------------------------------------*
 * Dispatcher
 *      ディスパッチャ
 *---------------------------------------------------------------------------*/
require_once('../../path.inc');
require_once(C_PR_HOME_PATH.'/test/04.Controller/test02/sysdef_org.inc');

class Sample extends \PR\Dispatcher{

	// @Override
	protected function getDest(){
		$dest = array('class'=>'MyController');
		$st = intval($_GET['st']);
		if($st == 0){
			$dest['method'] = 'action_menu';
		}else if($st == 1){
			$dest['method'] = 'action_get';
		}else if($st == 2){
			$dest['method'] = 'action_post';
		}else if($st == 3){
			$dest['method'] = 'action_ajax';
		}else if($st == 4){
			$dest['method'] = 'action_exp';
		}else if($st == 5){
			$dest['method'] = 'action_fatal';
		}
		return $dest;
	}
}

$disp = new Sample();
$disp->setMode(\PR\Dispatcher::MODE_CONTROLLER);
$disp->dispatch();

?>
