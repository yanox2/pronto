<?php
/* Copyright 2016 dodat */
/*---------------------------------------------------------------------------*
 * Test
 *      centerテンプレート
 *---------------------------------------------------------------------------*/
include('../../etc/header.tpl');
?>

<div id="lay_center" class="col span_14" style="min-height:1000px; padding:30px;">
<header style="margin-bottom:20px; font-size:20px;">●Model - DB更新</header>
<article style="font-size:14px;">

<?php
if(!empty($test->sErrMsg)){
	$oMessage = new \PR\Message();
	$oMessage->add($test->sErrMsg);
	$html = $oMessage->toHTML();
	if(!empty($html)) print $html;
}
?>

<div style="background-color:aliceblue;">
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
<label><input type="radio" name="post_index" value="0"<?= ($idx == 0) ? ' checked':'';?>>Serial</label>
<label><input type="radio" name="post_index" value="1"<?= ($idx == 1) ? ' checked':'';?>>Hierarchy</label>
<label><input type="radio" name="post_index" value="2"<?= ($idx == 2) ? ' checked':'';?>>JoinKey</label>
<br>
<input type="submit" name="post_read" value="参照">
<input type="submit" name="post_add" value="追加">
<input type="submit" name="post_update" value="更新">
<input type="submit" name="post_remove" value="削除">
<input type="submit" name="post_list" value="リスト">
</form>
</div>

<div style="height:250px; margin-top:10px; overflow:scroll;">
<table>
<tr><td>Key</td><td style="background-color:lightpink;">Alphabet</td><td style="background-color:lightgreen;">Numeric</td><td>Float</td><td>Text</td></tr>
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

</article>
</div>

<?php
include('./right.tpl');
include('../../etc/footer.tpl');
?>
