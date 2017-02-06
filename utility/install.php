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

$docRoot = constant('C_PR_DOC_ROOT');
$homeDir = constant('C_PR_HOME_PATH');
$backDir = constant('C_PR_BACKUP_PATH');
$insDir = constant('C_PR_INSTALL_PATH');
$testRoot = constant('C_PR_TEST_ROOT');
$user = constant('C_PR_USER');
$group = constant('C_PR_GROUP');

if($argv[1] == 'test'){
	if(empty($testRoot)){
		print 'C_PR_TEST_ROOT is necessary.'."\n";
		exit();
	}
	$dir = $docRoot.$testRoot;
	if(file_exists($dir)){
		$cmd = '\\rm -r '.$dir;
		system($cmd,$rc);
		print $cmd.' rc='.$rc."\n";
	}
	$cmd = 'cp -r '.$homeDir.'/test '.$dir;
	system($cmd,$rc);
	print $cmd.' rc='.$rc."\n";
	$cmd = 'cp -r '.$homeDir.'/utility/path.inc '.$dir;
	system($cmd,$rc);
	print $cmd.' rc='.$rc."\n";
	$cmd = 'cp '.$homeDir.'/Pronto/web/script_pronto.js '.$dir.'/etc';
	system($cmd,$rc);
	print $cmd.' rc='.$rc."\n";
	$cmd = 'cp '.$homeDir.'/Pronto/web/style_pronto.css '.$dir.'/etc';
	system($cmd,$rc);
	print $cmd.' rc='.$rc."\n";
	if((!empty($user))&&(!empty($group))){
		$cmd = 'chown -R '.$user.'.'.$group.' '.$dir;
		system($cmd,$rc);
		print $cmd.' rc='.$rc."\n";
		$cmd = 'chown -R '.$user.'.'.$group.' '.$homeDir;
		system($cmd,$rc);
		print $cmd.' rc='.$rc."\n";
	}

}else{
	if(!empty($backDir)){
		$dateStr = date('Ymd',time());
		$dir = $backDir.'/'.$dateStr;
		if(file_exists($dir)){
			$cmd = '\\rm -r '.$dir;
			system($cmd,$rc);
			print $cmd.' rc='.$rc."\n";
		}
		mkdir($dir);
		$cmd = 'cp -r '.$insDir.' '.$dir;
		system($cmd,$rc);
		print $cmd.' rc='.$rc."\n";
	}
	if(file_exists($insDir)){
		$cmd = '\\rm -r '.$insDir;
		system($cmd,$rc);
		print $cmd.' rc='.$rc."\n";
	}
	$cmd = 'cp -r '.$homeDir.'/Pronto '.$insDir;
	system($cmd,$rc);
	print $cmd.' rc='.$rc."\n";
	if((!empty($user))&&(!empty($group))){
		$cmd = 'chown -R '.$user.'.'.$group.' '.$insDir;
		system($cmd,$rc);
		print $cmd.' rc='.$rc."\n";
	}
	$cmd = 'chmod a+x '.$homeDir.'/utility/*.sh';
	system($cmd,$rc);
	print $cmd.' rc='.$rc."\n";
}
?>
