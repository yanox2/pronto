<?php
/* Copyright 2016 dodat */
/*---------------------------------------------------------------------------*
 * Test
 *      ディスパッチ（カスタム）
 *---------------------------------------------------------------------------*/
require_once('../../etc/path.inc');
require_once('./sysdef_org.inc');

class Sample extends \PR\Dispatcher{

	// @Override (annotation)
	// SysEnv変更処理
	protected function alterSysEnv(){
		// sysdef_org.incで設定済み
		// $uri = \PR\SysEnv::getYourDocRoot().'03.Dispatcher/test03';
		// \PR\SysEnv::setSubSysMode(2);
		// \PR\SysEnv::setSubSysURIRoot($uri);
	}

	// @Override
	protected function preproc(){
		$loader = \PR\ClassLoader::getInstance();
		$aPaths = array(\PR\SysEnv::getYourDispRoot().'/dir1/dir2');
		$loader->setPaths($aPaths);

		$subsys = \PR\Request::$sSUBSYSTEM;
		if($subsys == 'debug'){
			\PR\SysEnv::setTraceLevel(2);
		}else if($subsys == 'mainte'){
			\PR\SysEnv::setMainteMode(1);
		}

		if($subsys != 'mainte'){
			include('../../etc/header.tpl');
			print '<div id="lay_center" class="col span_14" style="min-height:1000px; padding:30px;">'."\n";
			print '<header style="margin-bottom:20px; font-size:20px;">●ディスパッチ（カスタム）</header>'."\n";
			print '<article style="font-size:14px;">'."\n";
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

</article>
</div>

<?php
$uri = \PR\SysEnv::getSubSysURIRoot();
include('./right.tpl');
include('../../etc/footer.tpl');
?>
