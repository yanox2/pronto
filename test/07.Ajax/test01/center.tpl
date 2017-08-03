<?php
/* Copyright 2016 dodat */
/*---------------------------------------------------------------------------*
 * Test
 *      centerテンプレート
 *---------------------------------------------------------------------------*/
include('../../etc/header.tpl');
?>

<div id="lay_center" class="col span_14" style="min-height:1000px; padding:30px;">
<header style="margin-bottom:20px; font-size:20px;">●Ajax - 静的データフォーム</header>
<article style="font-size:14px;">

<?php
if(!empty($msg)){
	print '<div style="width:500px; background-color:lightpink;">'.$msg.'</div>'."\n";
}
?>

<div style="background-color:aliceblue;">
<form id="form_update" name="form_update" method="post" action="post.php">
<div id="formDiv" style="opacity:0.2;">
<table>
<tr><td style="font-weight:bold;">UserId</td><td><?=\PR\INPTAG($cntr,'iUserId');?></td></tr>
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
<input type="radio" name="updateType" value="0" checked> all update
　　<input type="radio" name="updateType" value="1"> part update<br>
<button id="btn_add" type="button" name="btn_add">add</button>
<button id="btn_update" type="button" name="btn_update">update</button>
<button id="btn_remove" type="button" name="btn_remove">remove</button>
</div>
</form>
</div>

<div style="margin:10px 0;"><input id="openForm" type="button" name="openForm" value="フォーム"></div>
<div style="height:250px; margin-top:10px; overflow:scroll;">
<table>
<thead>
<tr><td>LoginId</td><td>Name</td><td>EMail</td><td>Note</td></tr>
</thead>
<tbody id="test">
<?php
foreach($list as $entity){
	print '<tr>';
	print '<td><div id="div_'.$entity->iUserId.'_iUserId">'.$entity->iUserId.'</div></td>';
	print '<td><div id="div_'.$entity->iUserId.'_sLoginId">'.$entity->sLoginId.'</div></td>';
	print '<td><div id="div_'.$entity->iUserId.'_sName">'.$entity->sName.'</div></td>';
	print '<td><div id="div_'.$entity->iUserId.'_sEMail">'.$entity->sEMail.'</div></td>';
	print '<td><div id="div_'.$entity->iUserId.'_sNote">'.$entity->sNote.'</div></td>';
	print '</tr>'."\n";
}
?>
</tbody>
</table>
</div>

</article>
</div>

<?php
include('./right.tpl');
?>

<script type="text/JavaScript">
var Temp1 = {
	active: function(){
		$("#"+this.showId_).css({"opacity":1.0});
	},
	inactive: function(){
		$("#"+this.showId_).css({"opacity":0.2});
	}
};
var MyFormAjax = $.extend({},PRFormAjax,Temp1);
var form = Object.create(MyFormAjax,{formId:"form_update",actId:"openForm",showId:"formDiv"});

form.addSubmit("btn_add",0);
form.addSubmit("btn_update",0);
form.addSubmit("btn_remove",0);

form.listen();
</script>

<?php
include('../../etc/footer.tpl');
?>
