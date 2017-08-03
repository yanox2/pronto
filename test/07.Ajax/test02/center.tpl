<?php
/* Copyright 2016 dodat */
/*---------------------------------------------------------------------------*
 * Test
 *      centerテンプレート
 *---------------------------------------------------------------------------*/
include('../../etc/header.tpl');
?>

<div id="lay_center" class="col span_14" style="min-height:1000px; padding:30px;">
<header style="margin-bottom:20px; font-size:20px;">●Ajax - 可変データフォーム</header>
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
<button id="btn_add" type="button" name="btn_add">add</button>
<button id="btn_update" type="button" name="btn_update">update</button>
<button id="btn_remove" type="button" name="btn_remove">remove</button>
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
var form = Object.create(MyFormAjax,{formId:"form_update",showId:"formDiv"});

var Temp2 = {
	show: function(res){
		if(this.dom) this._domUpdate(this.dom);
		if((res)&&(res.dom)) this._domUpdate(res.dom);
		var val = this.dom.replace["prReq_UserId"];
		$("#prReq_UserId_d").html(val);
		var val = this.dom.replace["prReq_State"];
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
			$("#disp_items").html(pr_htmlspecialchars(str));
			this._domUpdate(res.dom);
		}

		if((res.dom)&&(res.dom.prepend)){
			var lis = Object.create(this,{actId:res.actId,hover:true,dom:res.items});
			form.addListener(lis);
		}
	}
};
var MyLis = $.extend({},PRFormAjaxListener,Temp2);


form.addSubmit("btn_add",0);
form.addSubmit("btn_update",0);
form.addSubmit("btn_remove",0);
//form.addSubmit("sel_column1",1);

<?php
foreach($list as $entity){
	$cntr->setEntity($entity);
	$target = array('iUserId','sLoginId','sPasswd','sName','sEMail','iLocale','sNote','iAuth','iState');
	$items = $cntr->getArrayX($target,\PR\Container::POST);
	$dom = json_encode(array('replace'=>$items),JSON_UNESCAPED_UNICODE);
	print 'lis = Object.create(MyLis,{actId:"div_'.$entity->iUserId.'_sLoginId",hover:true,dom:'.$dom.'});'."\n";
	print 'form.addListener(lis);'."\n";
}
?>
form.listen();
</script>

<?php
include('../../etc/footer.tpl');
?>
