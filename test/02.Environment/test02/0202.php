<?php
/* Copyright 2016 dodat */
/*---------------------------------------------------------------------------*
 * Test
 *      Request情報
 *---------------------------------------------------------------------------*/
require_once('../../etc/path.inc');
require_once('./sysdef_org.inc');

include('../../etc/header.tpl');
?>
<div id="lay_center" class="col span_14" style="min-height:1000px; padding:30px;">
<header style="margin-bottom:20px; font-size:20px;">●Request情報</header>
<article style="font-size:14px;">

<?
\PR\SysEnv::setTraceLevel(1);
$uriRoot = $root.'/02.Environment/test02';
$st = intval($_GET['st']);
$host = \PR\Request::$sHOST;
$pos = strpos($host,'.') + 1;
$domain = substr($host,$pos);

if($st > 0){
	\PR\SysEnv::setYourDocRoot($uriRoot); // doc_root指定
	if($st == 2){ // サブシステムの判定（サブドメイン）
		if(!empty($domain)){
			\PR\SysEnv::setSubSysMode(1);
			\PR\SysEnv::setSubSysMainDomain($domain);
		}
	}else if($st == 3){ // サブシステムの判定（サブディレクトリ）
		\PR\SysEnv::setSubSysMode(2);
		\PR\SysEnv::setSubSysURIRoot($uriRoot.'/root');
	}
}

// リクエスト情報
\PR\Request::println();
?>

</article>
</div>

<?php
include('./right.tpl');
include('../../etc/footer.tpl');
?>
