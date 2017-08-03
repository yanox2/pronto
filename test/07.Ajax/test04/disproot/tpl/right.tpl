<?php
/* Copyright 2016 dodat */
/*---------------------------------------------------------------------------*
 * View
 *      右メニュー
 *---------------------------------------------------------------------------*/
?>
<div id="lay_right" class="col span_5">
<div style="margin-top:30px;">
<div style="">SQL</div>
<div id="disp_sql" style="width:250px; height:200px; margin:0 auto; font-size:12px; overflow:scroll; border:1px solid black; background-color:white;">
<?php
$history = \PR\DaoMySQL::getSQLHistory();
if(!empty($history)){
	foreach($history as $sql){
		print $sql.'<br>'."\n";
	}
}
?>
</div>
<div style="">Entity</div>
<div id="disp_entity" style="width:250px; height:200px; margin:0 auto; font-size:12px; overflow:scroll; border:1px solid black; background-color:white;"></div>
<div style="">Items</div>
<div id="disp_items" style="width:250px; height:200px; margin:0 auto; font-size:12px; overflow:scroll; border:1px solid black; background-color:white;"></div>
</div>
</div>

</main>