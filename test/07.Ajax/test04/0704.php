<?php
/* Copyright 2017 dodat */
/*---------------------------------------------------------------------------*
 * Test
 *      Ajax
 *---------------------------------------------------------------------------*/
require_once('../../etc/path.inc');
require_once('./sysdef_org.inc');

class MyDispatcher extends \PR\Dispatcher{

	// @Override
	protected function preproc(){
		$loader = \PR\ClassLoader::getInstance();
		$loader->setPaths(array(C_INSTALL_PATH_TEST.'/testPronto/etc'),'sample');
		\PR\HTMLTag::loadFunc();
	}
}

$disp = new MyDispatcher();
$disp->setMode(\PR\Dispatcher::MODE_CONTROLLER);
$disp->dispatch();
