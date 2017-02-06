<?php
/* Copyright 2016 dodat */
/*---------------------------------------------------------------------------*
 * Test
 *      DB参照・更新
 *---------------------------------------------------------------------------*/
require_once('../../path.inc');
require_once(C_PR_HOME_PATH.'/test/06.Model/test03/sysdef_org.inc');
require_once('./TestModel.class');

$homeDir = '/'.\PR\HTTPUtil::formatURL(C_PR_HOME_PATH);
$insDir = '/'.\PR\HTTPUtil::formatURL(C_PR_INSTALL_PATH);
$testDir = '/'.\PR\HTTPUtil::formatURL(C_PR_TEST_ROOT).'/06.Model/test01';

$loader = \PR\ClassLoader::getInstance();
$loader->setPaths(array($homeDir.'/sample'),'sample');
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
		}
	}

	$test->listData();
	$test->end($bCommit);

}catch(\PR\Exception $e){
	print $e->getMessage();
}

include('../../etc/header.tpl');

if(!empty($test->sErrMsg)){
	$oMessage = new \PR\Message();
	$oMessage->add($test->sErrMsg);
	$html = $oMessage->toHTML();
	if(!empty($html)) print $html;
}

?>

<header>●Model - DB更新</header>
<article>
<section style="font-size:14px;">
<div style="margin:10px 0;"><?=C_PR_HOME_PATH.'/test/06.Model/test03/sysdef_org.inc を読み込み'?></div>
<?php
if(!empty($msg)){
	print '<div style="width:500px; background-color:lightpink;">'.$msg.'</div>'."\n";
}
?>

<div style="width:820px;">
<div style="float:left; width:500px;">
<div style="float:left; width:500px; background-color:aliceblue;">
<form id="form_update" name="form_update" method="post" action="0603.php">
<table>
<tr><td style="font-weight:bold;">Numeric</td><td><?=\PR\INPTAG($cntr,'iNumeric');?></td></tr>
<tr><td style="font-weight:bold;">Float</td><td><?=\PR\INPTAG($cntr,'fFloat');?></td></tr>
<tr><td style="font-weight:bold;">Alphabet</td><td><?=\PR\INPTAG($cntr,'sAlphabet');?></td></tr>
<tr><td style="font-weight:bold;">AlphaNumeric</td><td><?=\PR\INPTAG($cntr,'sAlphaNumeric');?></td></tr>
<tr><td style="font-weight:bold;">Text</td><td><?=\PR\INPTAG($cntr,'sText');?></td></tr>
<tr><td style="font-weight:bold;">Password</td><td><?=\PR\INPTAG($cntr,'sPassword');?></td></tr>
<tr><td style="font-weight:bold;">Url</td><td><?=\PR\INPTAG($cntr,'sUrl');?></td></tr>
<tr><td style="font-weight:bold;">EMail</td><td><?=\PR\INPTAG($cntr,'sEMail');?></td></tr>
<tr><td style="font-weight:bold;">PostCode</td><td><?=\PR\INPTAG($cntr,'sPostCode');?></td></tr>
<tr><td style="font-weight:bold;">Tel</td><td><?=\PR\INPTAG($cntr,'sTel');?></td></tr>
<tr><td style="font-weight:bold;">Date</td><td><?=\PR\INPTAG($cntr,'iDate');?></td></tr>
<tr><td style="font-weight:bold;">Domain</td><td><?=\PR\INPTAG($cntr,'sDomain');?></td></tr>
</table>
<input type="radio" name="post_index" value="0"<?= ($idx == 0) ? ' checked':'';?>>Serial
<input type="radio" name="post_index" value="1"<?= ($idx == 1) ? ' checked':'';?>>Hierarchy
<input type="radio" name="post_index" value="2"<?= ($idx == 2) ? ' checked':'';?>>JoinKey
<br>
<input type="submit" name="post_read" value="参照">
<input type="submit" name="post_add" value="追加">
<input type="submit" name="post_update" value="更新">
<input type="submit" name="post_remove" value="削除">
</form>
</div>
<div style="float:left; width:500px; height:250px; margin-top:10px; overflow:scroll;">
<table>
<tr><td>Key</td><td>Alphabet</td><td>Numeric</td><td>Float</td><td>Text</td></tr>
<?php
$list = $cntr->getResults();
if(!empty($list)){
	if($idx == 0){
		foreach($list as $key=>$entity){
			print '<tr>';
			print '<td>'.$key.'</td>';
			print '<td>'.$entity->sAlphabet.'</td>';
			print '<td>'.$entity->iNumeric.'</td>';
			print '<td>'.$entity->fFloat.'</td>';
			print '<td>'.$entity->sText.'</td>';
			print '</tr>'."\n";
		}
	}else if($idx == 1){
		foreach($list as $alphabet=>$array){
			foreach($array as $numeric=>$entity){
				$key = $alphabet.'-'.$numeric;
				print '<tr>';
				print '<td>'.$key.'</td>';
				print '<td>'.$entity->sAlphabet.'</td>';
				print '<td>'.$entity->iNumeric.'</td>';
				print '<td>'.$entity->fFloat.'</td>';
				print '<td>'.$entity->sText.'</td>';
				print '</tr>'."\n";
			}
		}
	}else if($idx == 2){
		foreach($list as $key=>$entity){
			print '<tr>';
			print '<td>'.$key.'</td>';
			print '<td>'.$entity->sAlphabet.'</td>';
			print '<td>'.$entity->iNumeric.'</td>';
			print '<td>'.$entity->fFloat.'</td>';
			print '<td>'.$entity->sText.'</td>';
			print '</tr>'."\n";
		}
	}
}
?>
</table>
</div>
</div>

<div style="float:left; width:300px; margin-left:20px;">
<div style="clear:both;">SQL</div>
<div id="disp_entity" style="float:left; width:250px; height:300px; font-size:12px; overflow:scroll; border:1px solid black; background-color:white;">
<?php
$history = \PR\DaoMySQL::getSQLHistory();
if(!empty($history)){
	foreach($history as $sql){
		print $sql.'<br>'."\n";
	}
}
?>
</div>
</div>
</div>

</section>
</article>

<?php
include('../../etc/footer.tpl');
?>
