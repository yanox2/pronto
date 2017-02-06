<?php
/* Copyright 2016 dodat */
/*---------------------------------------------------------------------------*
 * Test
 *      エンティティモデル生成
 *---------------------------------------------------------------------------*/
require_once('../../path.inc');
require_once(C_PR_HOME_PATH.'/test/06.Model/test01/sysdef_org.inc');

$homeDir = '/'.\PR\HTTPUtil::formatURL(C_PR_HOME_PATH);
$insDir = '/'.\PR\HTTPUtil::formatURL(C_PR_INSTALL_PATH);
$testDir = '/'.\PR\HTTPUtil::formatURL(C_PR_TEST_ROOT).'/06.Model/test01';

$rc = chdir($homeDir.'/utility2');
if($rc === false){
	ELOG('エンティティモデルの生成に失敗しました。rc='.$rc);
	exit();
}
$cmd = './deployModel.sh';
$rc = system($cmd);
if($rc === false){
	ELOG('エンティティモデルの生成に失敗しました。rc='.$rc);
	exit();
}
$cmd = 'mv -f *.class '.$homeDir.'/sample';
$rc = system($cmd);
if($rc === false){
	ELOG('エンティティモデルの生成に失敗しました。rc='.$rc);
	exit();
}
print dirname(__FILE__);

header('Content-Type: text/html; charset=utf-8');
readfile($homeDir.'/sample/AllDataType.class');
readfile($homeDir.'/sample/AllDataTypeEntity.class');
readfile($homeDir.'/sample/SubSystem.class');
readfile($homeDir.'/sample/SubSystemEntity.class');
readfile($homeDir.'/sample/UserProfile.class');
readfile($homeDir.'/sample/UserProfileEntity.class');

?>
