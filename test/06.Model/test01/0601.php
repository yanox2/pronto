<?php
/* Copyright 2016 dodat */
/*---------------------------------------------------------------------------*
 * Test
 *      エンティティモデル生成
 *---------------------------------------------------------------------------*/
require_once('../../etc/path.inc');
//require_once('./sysdef_org.inc');

$homeDir = '/home/atcuser01/samp'; // dev.zipの展開先ディレクトリ
if(empty($homeDir)){
	$path = '06.Model/test01/0601.php';
	print '<div style="">'.$path.' の$homeDirを編集してください。</div>'."\n";
	exit();
}

$rc = chdir($homeDir.'/dev/utility');
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
$epath = C_INSTALL_PATH_TEST.'/testPronto/etc';
$cmd = 'mv -f *.class '.$epath;
$rc = system($cmd);
if($rc === false){
	ELOG('エンティティモデルの生成に失敗しました。rc='.$rc);
	exit();
}
?>
<!DOCTYPE html>
<!-- 文字コード判別用 -->
<html lang="ja">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0">
<meta name="robots" content="noindex,nofollow">
<meta name="author" content="dodat">
<meta name="keywords" content="">
<meta name="description" content="">
<title>Pronto</title>
</head>
<body class="fontM" style="margin:0; color:black; background-color:#f2f2f2;">
<div style="">
<pre><code>
<?
htmlspecialchars(readfile($epath.'/AllDataType.class'));
htmlspecialchars(readfile($epath.'/AllDataTypeEntity.class'));
htmlspecialchars(readfile($epath.'/SubSystem.class'));
htmlspecialchars(readfile($epath.'/SubSystemEntity.class'));
htmlspecialchars(readfile($epath.'/UserProfile.class'));
htmlspecialchars(readfile($epath.'/UserProfileEntity.class'));
?>
</code></pre>
</div>
</body>
</html>
