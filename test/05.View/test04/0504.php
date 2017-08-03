<?php
/* Copyright 2016 dodat */
/*---------------------------------------------------------------------------*
 * Dispatcher
 *      ディスパッチ（カスタム）
 *---------------------------------------------------------------------------*/
require_once('../../etc/path.inc');
require_once('./sysdef_org.inc');

class Sample extends \PR\Dispatcher{

	// @Override
	protected function getDest(){
		$dest['class'] = 'MyController';
		$dest['method'] = 'action';
		return $dest;
	}
}

$disp = new Sample();
$disp->setMode(\PR\Dispatcher::MODE_CONTROLLER);
$disp->dispatch();

?>
