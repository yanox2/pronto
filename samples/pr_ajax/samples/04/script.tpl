<?php
/**
 * JavaScript
 * 送信データ指定
 *
 */
?>
<script type="text/JavaScript">
$(function(){

$("#id_btnGET").on("click", function(){
	var ajax = new PRAjax("response.php", "get");
	ajax.setHeaders({"abc":"def"});
	var data = {
		"name_inputText1": "テキストボックス１",
		"name_textArea1": "テキストエリア１",
		"name_radio": "ラジオ",
		"name_checkbox1": "チェックボックス１",
		"name_select1": "セレクト１"
	};
	ajax.setData(data);
	ajax.send();
});

$("#id_btnPOST").on("click", function(){
	var ajax = new PRAjax("response.php", "post");
	ajax.setHeaders({"abc":"def"});
	var data = {"name_inputText1":"あああ", "name_textArea1":"いいい"};
	ajax.setData(data);
	ajax.send();
});

});
</script>