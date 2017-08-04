<?php
/* Copyright 2016 dodat */
/*---------------------------------------------------------------------------*
 * Utility
 *      インストーラ
 *---------------------------------------------------------------------------*/
require_once('./path.inc');

ini_set('memory_limit', '512M');
set_time_limit(0);

if($argc != 2){
	print 'php install.php ["pronto" or "test"]'."\n";
	exit();
}

$insTest = constant('C_INSTALL_PATH_TEST');
$insPr = constant('C_INSTALL_PATH_PRONTO');

$backDir = constant('C_BACKUP_PATH');
$user = constant('C_USER');
$group = constant('C_GROUP');

$homeDir = __DIR__.'/..';

if($argv[1] == 'pronto'){
	if(!file_exists($insPr)) mkdir($insPr);
	$insDir = $insPr.'/Pronto';
	if(!empty($backDir)){
		$dateStr = date('Ymd',time());
		$dir = $backDir.'/'.$dateStr;
		if(file_exists($dir)) syscmd('\\rm -r '.$dir);
		mkdir($dir);
		if(file_exists($insDir)) syscmd('cp -r '.$insDir.' '.$dir);
	}
	if(file_exists($insDir)) syscmd('\\rm -r '.$insDir);
	syscmd('cp -r '.$homeDir.'/Pronto '.$insDir);

}else if($argv[1] == 'test'){
	if(!file_exists($insTest)){
		print 'C_INSTALL_PATH_TEST directory is necessary.'."\n";
		exit();
	}
	$insDir = $insTest.'/testPronto';
	if(file_exists($insDir)) syscmd('\\rm -r '.$insDir);
	syscmd('cp -r '.$homeDir.'/test '.$insDir);
	syscmd('cp '.$homeDir.'/utility/path.inc '.$insDir.'/etc');
	if(file_exists($homeDir.'/utility/xx_path.inc')) syscmd('cp '.$homeDir.'/utility/xx_path.inc '.$insDir.'/etc');
	syscmd('cp '.$homeDir.'/Pronto/web/script_pronto.js '.$insDir.'/etc');
	syscmd('cp '.$homeDir.'/Pronto/web/style_pronto.css '.$insDir.'/etc');
	syscmd('cp '.$homeDir.'/sample/*.class '.$insDir.'/etc');
}

if((!empty($user))&&(!empty($group))){
	syscmd('chown -R '.$user.'.'.$group.' '.$insDir);
	syscmd('chown -R '.$user.'.'.$group.' '.$homeDir);
	syscmd('chmod a+x '.$homeDir.'/utility/*.sh');
}
syscmd('chmod a+rw '.$homeDir.'/utility');
syscmd('chmod a+rw '.$insTest.'/testPronto/etc');

function syscmd($cmd){
	system($cmd,$rc);
	print $cmd.' rc='.$rc."\n";
}
?>
