<?php
/* Copyright 2016 dodat */
/*---------------------------------------------------------------------------*
 * Test
 *      Ajax
 *---------------------------------------------------------------------------*/
namespace sample;

require_once('../../path.inc');
require_once(C_PR_HOME_PATH.'/test/07.Ajax/test02/sysdef_org.inc');
include('./0702a.php');

$homeDir = '/'.\PR\HTTPUtil::formatURL(C_PR_HOME_PATH);
$insDir = '/'.\PR\HTTPUtil::formatURL(C_PR_INSTALL_PATH);
$testDir = '/'.\PR\HTTPUtil::formatURL(C_PR_TEST_ROOT).'/07.Ajax/test02';

$loader = \PR\ClassLoader::getInstance();
$loader->setPaths(array($homeDir.'/sample'),'sample');
\PR\HTMLTag::loadFunc();

$data = new TestData();
$cntr = new UserProfile();
$list = array();
foreach($data->aData as $id=>$array){
	$entity = $cntr->newEntity();
	$cntr->setArray($array);
	$list[] = $entity;
}

include('../../etc/header.tpl');
?>

<header>●Ajax</header>
<article>
<section style="font-size:14px;">
<div style="margin:10px 0;"><?=C_PR_HOME_PATH.'/test/07.Ajax/test02/sysdef_org.inc を読み込み'?></div>

<div style="width:820px;">
<div style="float:left; width:500px;">
<div style="float:left; width:500px; background-color:aliceblue;">
<form id="form_update" name="form_update" method="post" action="post.php">
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
<input type="radio" name="updateType" value="0" checked> all update
　　<input type="radio" name="updateType" value="1"> part update<br>
<button id="btn_add" type="button" name="btn_add">add</button>
<button id="btn_update" type="button" name="btn_update">update</button>
<button id="btn_remove" type="button" name="btn_remove">remove</button>
</div>
</form>
</div>
<div style="float:left; width:500px; height:250px; margin-top:10px; overflow:scroll;">
<table>
<thead>
<tr><td>LoginId</td><td>Name</td><td>EMail</td><td>Note</td></tr>
</thead>
<tbody id="test">
<?php
foreach($list as $entity){
	print '<tr>';
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
</div>

<div style="float:left; width:300px; margin-left:20px;">
<div style="clear:both;">entity</div>
<div id="disp_entity" style="float:left; width:250px; height:300px; font-size:12px; overflow:scroll; border:1px solid black; background-color:white;"></div>
<div style="clear:both;">items</div>
<div id="disp_items" style="float:left; width:250px; height:200px; font-size:12px; overflow:scroll; border:1px solid black; background-color:white;"></div>
</div>
</div>

</section>
</article>

<script type="text/JavaScript">
var Temp1 = {
	active: function(){
		$("#"+this.showId_).css({"opacity":1.0});
		//$("#"+this.showId_).addClass("dfade");
	},
	inactive: function(){
		$("#"+this.showId_).css({"opacity":0.2});
		//$("#"+this.showId_).removeClass("dfade");
	}
}
var MyFormAjax = $.extend({},PRFormAjax,Temp1);
var form = Object.create(MyFormAjax,{formId:"form_update",showId:"formDiv"});

var Temp2 = {
	show: function(event){
		this._show();
		var val = this.items["prReq_UserId"];
		$("#prReq_UserId_d").html(val);
		var val = this.items["prReq_State"];
		$("#prReq_State_d").html(this._getStateStr(val));
	},

	_getStateStr: function(state){
		var stats = ["","生存","死亡"];
		return stats[state];
	},

	after: function(res){
		var tag = "<div>";
		if(res.data){
			$.each(res.data,function(id,val){
				tag += id + "	" + val + "<br>";
			 });
		}
		tag += "</div>";
		$("#disp_entity").html(tag);

		if(res.dom){
			var str = JSON.stringify(res.dom);
			$("#disp_items").html(str);
		}
		this._after(res);

		if((res.dom)&&(res.dom.prepend)){
			var lis = Object.create(this,{actId:res.dom.actId,hover:true,items:res.dom.items});
			form.addListener(lis);
		}
	}
}
var MyLis = $.extend({},PRFormAjaxListener,Temp2);


form.addSubmit("btn_add",0);
form.addSubmit("btn_update",0);
form.addSubmit("btn_remove",0);
//form.addSubmit("sel_column1",1);

<?php
foreach($list as $entity){
	$target = array('iUserId','sLoginId','sPasswd','sName','sEMail','iLocale','sNote','iAuth','iState');
	$cntr->setEntity($entity);
	$cntr->setTargets($target);
	$items = json_encode($cntr->getArray(\PR\Model::TYPE_ALL,'sPost'),JSON_UNESCAPED_UNICODE);
	print 'lis = Object.create(MyLis,{actId:"div_'.$entity->iUserId.'_sLoginId",hover:true,items:'.$items.'});'."\n";
	print 'form.addListener(lis);'."\n";
}
?>
form.listen();
</script>

<?php
include('../../etc/footer.tpl');
?>
