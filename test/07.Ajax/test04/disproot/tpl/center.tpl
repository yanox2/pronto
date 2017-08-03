<?php
/* Copyright 2016 dodat */
/*---------------------------------------------------------------------------*
 * Test
 *      centerテンプレート
 *---------------------------------------------------------------------------*/

$myUri = $this->get('myURI');
$cntr = $this->get('UserProfile');
$list = $cntr->getResults();
?>

<header style="margin-bottom:20px; font-size:20px;">●Model - MVC + Ajax</header>
<article style="font-size:14px;">

<div style="background-color:aliceblue;">
<form id="form_update" name="form_update" method="post" action="'.$myUri.'/MyController/post">
<div id="formDiv" style="opacity:0.2;">
<table>
<!--
<tr><td style="font-weight:bold;">SysId</td><td><?=$entity->iSysId?></td></tr>
-->
<tr><td style="font-weight:bold;">UserId</td><td><div id="prReq_UserId_d"><?=$entity->iUserId?></div></td></tr>
<tr><td style="font-weight:bold;">LoginId</td><td><?=\PR\INPTAG($cntr,'sLoginId');?></td></tr>
<tr><td style="font-weight:bold;">Passwd</td><td><?=\PR\INPTAG($cntr,'sPasswd');?></td></tr>
<tr><td style="font-weight:bold;">Name</td><td><?=\PR\INPTAG($cntr,'sName');?></td></tr>
<tr><td style="font-weight:bold;">EMail</td><td><?=\PR\INPTAG($cntr,'sEMail');?></td></tr>
<tr><td style="font-weight:bold;">Locale</td><td><?=\PR\RADTAG($cntr,'iLocale');?></td></tr>
<tr><td style="font-weight:bold;">Note</td><td><?=\PR\INPTAG($cntr,'sNote');?></td></tr>
<tr><td style="font-weight:bold;">Auth</td><td><?=\PR\RADTAG($cntr,'iAuth');?></td></tr>
<tr><td style="font-weight:bold;">State</td><td><div id="prReq_State_d"><?=$cntr->aStrs_iState[$entity->iState];?></div></td></tr>
<!--
<tr><td style="font-weight:bold;">LastLogin</td><td><?=date('Y/m/d H:i:s',$entity->iLastLogin)?></td></tr>
<tr><td style="font-weight:bold;">ChangeDate</td><td><?=date('Y/m/d H:i:s',$entity->iChangeDate)?></td></tr>
<tr><td style="font-weight:bold;">iFail</td><td><?=$entity->iFail?></td></tr>
<tr><td style="font-weight:bold;">iDate</td><td><?=date('Y/m/d H:i:s',$entity->iDate)?></td></tr>
-->
</table>
<?=\PR\HIDETAG($cntr,'iUserId',true);?>
<button id="btn_update" type="button" name="btn_update">update</button>
</div>
</form>
</div>

<div style="height:250px; margin-top:10px; overflow:scroll;">
<table>
<thead>
<tr><td>LoginId</td><td>Name</td><td>EMail</td><td>Note</td></tr>
</thead>
<tbody id="test">
<?php
foreach($list as $entity){
	print '<tr>';
	print '<td><div id="div_'.$entity->iUserId.'_sLoginId" style="color:blue;">'.$entity->sLoginId.'</div></td>';
	print '<td><div id="div_'.$entity->iUserId.'_sName">'.$entity->sName.'</div></td>';
	print '<td><div id="div_'.$entity->iUserId.'_sEMail">'.$entity->sEMail.'</div></td>';
	print '<td><div id="div_'.$entity->iUserId.'_sNote">'.$entity->sNote.'</div></td>';
	print '</tr>'."\n";
	print '<tr><td><form id="req_'.$entity->iUserId.'" name="req_'.$entity->iUserId.'" method="post" action="'.$myUri.'/MyController/request">'."\n";
	print ' <input type="hidden" name="prReq_UserId" value="'.$entity->iUserId.'">'."\n";
	print '</form></td></tr>'."\n";
}
?>
</tbody>
</table>
</div>

</article>
