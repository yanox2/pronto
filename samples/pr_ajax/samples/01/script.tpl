<?php
/**
 * JavaScript
 * ローダーテスト
 *
 */
?>
<script type="text/JavaScript">
$(function(){

$("#id_submit").on("click", function(){
	var lod = new PRLoader();
	lod.enable();
	setTimeout(function(){
		lod.disable();
		alert("ロードが完了しました。");
	}, 5000);
});

});
</script>