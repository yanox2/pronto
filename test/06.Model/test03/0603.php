<?php
/* Copyright 2016 dodat */
/*---------------------------------------------------------------------------*
 * Test
 *      DB参照・更新
 *---------------------------------------------------------------------------*/
require_once('../../etc/path.inc');
require_once('./sysdef_org.inc');
include('./TestModel.class');

$loader = \PR\ClassLoader::getInstance();
$loader->setPaths(array(C_INSTALL_PATH_TEST.'/testPronto/etc'),'sample');
\PR\HTMLTag::loadFunc();

try{
	$idx = intval($_POST['post_index']);
	$test = new \sample\TestModel();
	$test->start($idx);

	$cntr = $test->getContainer('AllDataType');
	$cntr->newEntity();

	$bCommit = false;
	if(\PR\HTTPUtil::isPost()){
		if(isset($_POST['post_read'])){
			$rc = $test->select();
		}else if(isset($_POST['post_add'])){
			$rc = $test->insert();
			if($rc == 0) $bCommit = true;
		}else if(isset($_POST['post_update'])){
			$rc = $test->update();
			if($rc == 0) $bCommit = true;
		}else if(isset($_POST['post_remove'])){
			$rc = $test->remove();
			if($rc == 0) $bCommit = true;
		}else if(isset($_POST['post_list'])){
		}
	}

	$test->listData();
	$test->end($bCommit);

}catch(\PR\Exception $e){
	print $e->getMessage();
}

include('./center.tpl');
?>
