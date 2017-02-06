<?php
/* Copyright 2016 dodat */
/*---------------------------------------------------------------------------*
 * Test
 *      Request情報
 *---------------------------------------------------------------------------*/
require_once('../../path.inc');
require_once(C_PR_HOME_PATH.'/test/02.Environment/test01/sysdef_org.inc');

include('../../etc/header.tpl');
?>

<header>●Request情報</header>
<article>
<section style="font-size:14px;">
<div style="margin:10px 0;"><?=C_PR_HOME_PATH.'/test/02.Environment/test02/sysdef_org.inc を読み込み'?></div>

<?php

$homeDir = '/'.\PR\HTTPUtil::formatURL(C_PR_HOME_PATH);
$insDir = '/'.\PR\HTTPUtil::formatURL(C_PR_INSTALL_PATH);
$testDir = '/'.\PR\HTTPUtil::formatURL(C_PR_TEST_ROOT).'/02.Environment/test02';

$host = $_SERVER['HTTP_HOST'];
$pos = strpos($host,'.') + 1;
$domain = substr($host,$pos);

$uriRoot = $testDir.'/root';

if(intval($_GET['st']) > 0){
	\PR\SysEnv::setYourDocRoot($testDir);
	\PR\SysEnv::setTraceLevel(1);
}

if($_GET['st'] == 2){
	if(!empty($domain)){
		\PR\SysEnv::setSubSysMode(1);
		\PR\SysEnv::setSubSysMainDomain($domain);
	}
}
if($_GET['st'] == 3){
	\PR\SysEnv::setSubSysMode(2);
	\PR\SysEnv::setSubSysURIRoot($uriRoot);
}

// リクエスト情報
\PR\Request::println();

print '<div style="height:200px; margin:10px 0; padding:10px; font-size:12px; border:1px solid black; overflow-y:scroll; overflow-x:visible;">'."\n";
print '<div>・URI = doc_rootのディレクトリ構造</div>'."\n";
$url = $testDir.'/0202.php';
print '<div><a href="'.$url.'">phpファイルを直接指定</a></div>'."\n";
$url = $testDir.'/';
print '<div><a href="'.$url.'">phpファイル名を省略</a></div>'."\n";
$url = $testDir.'/aaa/bbb';
print '<div><a href="'.$url.'">phpファイル名を省略</a>（最後尾の"/"なし）</div>'."\n";
$url = $testDir.'/aaa/bbb/?st=1';
print '<div><a href="'.$url.'">システムのドキュメントルートを指定</a>（C_PR_YOUR_DOCROOT="'.$testDir.'"）</div>'."\n";
$url = $testDir.'/aaa/bbb/?st=2';
print '<div><a href="'.$url.'">サブシステムの判定</a>（C_PR_SUBSYS_MODE="1", C_PR_SUBSYS_MAINDOMAIN="'.$domain.'"）</div>'."\n";
$url = $testDir.'/root/subsys1/ccc/?st=3';
print '<div><a href="'.$url.'">サブシステムの判定</a>（C_PR_SUBSYS_MODE="2", C_PR_SUBSYS_URIROOT="'.$uriRoot.'"）</div>'."\n";

print '</div>'."\n";

?>

</section>
</article>

<?php
include('../../etc/footer.tpl');
?>
