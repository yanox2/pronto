<?php
/**
 * JavaScript
 * 前処理・後処理
 *
 */
?>
<script type="text/JavaScript">
$(function(){

class MyAjax extends PRAjax{
	before(args){
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
	}

	after(data, textStatus, jqXHR, confirm){
		alert(JSON.stringify(data.vals));
		alert(data.vals.radio);
	}
}

var ajax = new MyAjax();
ajax.onSubmit("#id_form1", "入力された内容で送信します。よろしいですか？");

/* 送信データ指定の場合
$("#id_button1").on("click", function(e){
	e.preventDefault();
	var ajax = new MyAjax("response.php", "post");
	var data = $("#id_form1").serialize();
	ajax.setData(data);
	ajax.send(0, "入力された内容で送信します。よろしいですか？");
});
*/

/* 送信データ指定の場合（onClick）
var ajax = new MyAjax("response.php", "post");
var data = {
	"name_inputText1": "テキストボックス１",
	"name_textArea1": "テキストエリア１",
	"name_radio": "ラジオ",
	"name_checkbox1": "チェックボックス１",
	"name_select1": "セレクト１"
};
ajax.onClick("#id_button1", data, true, "入力された内容で送信します。よろしいですか？");
*/

});

</script>