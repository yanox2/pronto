<?php
/* Copyright 2016 dodat */
/*---------------------------------------------------------------------------*
 * Test
 *      Ajax
 *---------------------------------------------------------------------------*/
namespace sample;

require_once('../../etc/path.inc');
require_once('./sysdef_org.inc');
include('./0701a.php');

$loader = \PR\ClassLoader::getInstance();
$loader->setPaths(array(C_INSTALL_PATH_TEST.'/testPronto/etc'),'sample');
\PR\HTMLTag::loadFunc();

try{
	$data = new TestData();
	$cntr = new UserProfile();
	$list = array();
	foreach($data->aData as $id=>$array){
		if(empty($array)) return;
		$cntr->newEntity();
		$cntr->setArray($array,\PR\Container::COLUMN);
		$entity = $cntr->getEntity();
		$list[] = $entity;
	}

}catch(\PR\Exception $e){
	print $e->getMessage();
}

include('./center.tpl');
?>
