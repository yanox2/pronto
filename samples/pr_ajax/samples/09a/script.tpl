<?php
/**
 * JavaScript
 * 前処理・後処理（コールバック）
 *
 */
?>
<script type="text/JavaScript">
$(function(){

var ajax = new PRAjax();
ajax.setBefore(function(args){
	var msg = "";
	if(!$("#id_inputText1").val()) msg = msg + "inputText1を入力してください。\n";
	if(!$("#id_textArea1").val()) msg = msg + "textArea1を入力してください。\n";
	if(!$("#id_select1").val()) msg = msg + "select1を選択してください。\n";
	if(msg){
		alert(msg);
		return false;
	}
	var confirm = window.confirm(args);
	if(!confirm) return false;
});
ajax.setAfter(function(data, textStatus, jqXHR, confirm){
	alert(JSON.stringify(data.vals));
	alert(data.vals.radio);
});
ajax.onSubmit("#id_form1", "入力された内容で送信します。よろしいですか？");

});

</script>