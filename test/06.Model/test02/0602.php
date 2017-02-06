<?php
/* Copyright 2016 dodat */
/*---------------------------------------------------------------------------*
 * Test
 *      POST
 *---------------------------------------------------------------------------*/
require_once('../../path.inc');
require_once(C_PR_HOME_PATH.'/test/06.Model/test02/sysdef_org.inc');

$homeDir = '/'.\PR\HTTPUtil::formatURL(C_PR_HOME_PATH);
$insDir = '/'.\PR\HTTPUtil::formatURL(C_PR_INSTALL_PATH);
$testDir = '/'.\PR\HTTPUtil::formatURL(C_PR_TEST_ROOT).'/06.Model/test02';

$loader = \PR\ClassLoader::getInstance();
$loader->setPaths(array($homeDir.'/sample'),'sample');
\PR\HTMLTag::loadFunc();

$cntr = new \sample\AllDataType();
$entity = $cntr->newEntity();

// POST
$msg = null;
if(\PR\HTTPUtil::isPost()){
	$cntr->post();
	$msg = $cntr->checkPostByTarget('<br>',6,0,2);
}

include('../../etc/header.tpl');
?>

<header>●Model - postチェック</header>
<article>
<section style="font-size:14px;">
<div style="margin:10px 0;"><?=C_PR_HOME_PATH.'/test/06.Model/test02/sysdef_org.inc を読み込み'?></div>
<?php
if(!empty($msg)){
	print '<div style="width:500px; background-color:lightpink;">'.$msg.'</div>'."\n";
}
?>
<div style="width:500px; background-color:aliceblue;">
<form id="form_update" name="form_update" method="post" action="0602.php">
<table>
<tr><td style="font-weight:bold;">Numeric</td><td><?=\PR\INPTAG($entity,$cntr->getNameTag('iNumeric'));?></td></tr>
<tr><td style="font-weight:bold;">Float</td><td><?=\PR\INPTAG($entity,$cntr->getNameTag('fFloat'));?></td></tr>
<tr><td style="font-weight:bold;">Alphabet</td><td><?=\PR\INPTAG($entity,$cntr->getNameTag('sAlphabet'));?></td></tr>
<tr><td style="font-weight:bold;">AlphaNumeric</td><td><?=\PR\INPTAG($entity,$cntr->getNameTag('sAlphaNumeric'));?></td></tr>
<tr><td style="font-weight:bold;">Text</td><td><?=\PR\INPTAG($entity,$cntr->getNameTag('sText'));?></td></tr>
<tr><td style="font-weight:bold;">Password</td><td><?=\PR\INPTAG($entity,$cntr->getNameTag('sPassword'));?></td></tr>
<tr><td style="font-weight:bold;">Url</td><td><?=\PR\INPTAG($entity,$cntr->getNameTag('sUrl'));?></td></tr>
<tr><td style="font-weight:bold;">EMail</td><td><?=\PR\INPTAG($entity,$cntr->getNameTag('sEMail'));?></td></tr>
<tr><td style="font-weight:bold;">PostCode</td><td><?=\PR\INPTAG($entity,$cntr->getNameTag('sPostCode'));?></td></tr>
<tr><td style="font-weight:bold;">Tel</td><td><?=\PR\INPTAG($entity,$cntr->getNameTag('sTel'));?></td></tr>
<tr><td style="font-weight:bold;">Date</td><td><?=\PR\INPTAG($entity,$cntr->getNameTag('iDate'));?></td></tr>
<tr><td style="font-weight:bold;">Domain</td><td><?=\PR\INPTAG($entity,$cntr->getNameTag('sDomain'));?></td></tr>
</table>
<input type="submit" name="post_submit" value="送信">
</form>
</div>

</section>
</article>

<?php
include('../../etc/footer.tpl');
?>
