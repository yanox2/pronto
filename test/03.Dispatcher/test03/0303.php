<?php
/* Copyright 2016 dodat */
/*---------------------------------------------------------------------------*
 * Dispatcher
 *      ディスパッチ（カスタム）
 *---------------------------------------------------------------------------*/
require_once('../../path.inc');
require_once(C_PR_HOME_PATH.'/test/03.Dispatcher/test03/sysdef_org.inc');

class Sample extends \PR\Dispatcher{

	// @Override (annotation)
	// SysEnv変更処理
	protected function alterSysEnv(){
		$homeDir = '/'.\PR\HTTPUtil::formatURL(C_PR_HOME_PATH);
		$insDir = '/'.\PR\HTTPUtil::formatURL(C_PR_INSTALL_PATH);
		$testDir = '/'.\PR\HTTPUtil::formatURL(C_PR_TEST_ROOT).'/03.Dispatcher/test03';
		$uriRoot = $testDir;

		if($_GET['st'] > 0){
			\PR\SysEnv::setSubSysMode(2);
			\PR\SysEnv::setSubSysURIRoot($uriRoot);
		}
	}

	// @Override
	protected function preproc(){
		if(intval($_GET['st']) == 1){
			$loader = \PR\ClassLoader::getInstance();
			$aPaths = array(C_PR_YOUR_DISPROOT.'/dir1/dir2');
			$loader->setPaths($aPaths,'');
		}

		$subsys = \PR\Request::$sSUBSYSTEM;
		if($subsys == 'debug'){
			\PR\SysEnv::setTraceLevel(2);
		}else if($subsys == 'mainte'){
			\PR\SysEnv::setMainteMode(1);
		}

		if($subsys != 'mainte'){
			include('../../etc/header.tpl');
			print '<header>●ディスパッチ（カスタム）</header>'."\n";
			print '<article>'."\n";
			print '<section style="font-size:14px;">'."\n";
			print '<div style="margin:10px 0;">'.C_PR_HOME_PATH.'/test/03.Dispatcher/test03/sysdef_org.inc を読み込み</div>'."\n";
		}
	}

	// @Override
	protected function getDest(){
		//$dest = parent::getDest();
		$dest['class'] = 'ClassC';
		$dest['method'] = 'methodA';
		return $dest;
	}

	// @Override
	protected function getDestPath(){
		//$dest = parent::getDestPath();
		$root = \PR\HTTPUtil::formatURL(\PR\SysEnv::getYourDispRoot());
		$path = \PR\Request::$sSUBDIR2;
		$script = \PR\Request::$sFILE;
		$uri = 'dir1/dir2';
		if(!empty($script)) $uri .= '/'.$script;
		$dest = '/'.\PR\HTTPUtil::formatURL($root.'/'.$uri);
		return $dest;
	}
}

$disp = new Sample();
if($_GET['st'] == 1){
	$disp->setMode(\PR\Dispatcher::MODE_CALL);
}else if($_GET['st'] == 2){
	$disp->setMode(\PR\Dispatcher::MODE_INCLUDE);
}
$disp->dispatch();

?>

<?php
print '<div style="height:200px; margin:10px 0; padding:10px; font-size:12px; border:1px solid black; overflow-y:scroll; overflow-x:visible;">'."\n";

$url = $testDir.'/subsys1/ClassA/methodA/?st=1';
print '<div><a href="'.$url.'">メソッドコール</a></div>'."\n";
$url = $testDir.'/subsys1/disp.php?st=2';
print '<div><a href="'.$url.'">ファイルインクルード</a></div>'."\n";

print '</div>'."\n";
?>

</section>
</article>

<?php
include('../../etc/footer.tpl');
?>
