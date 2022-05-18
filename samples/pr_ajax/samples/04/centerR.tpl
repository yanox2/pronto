<?php
/**
 * View
 * センター右ペイン
 *
 */
?>
<div class="rightPane">

<div title="script source" class="mb-3">
<div class="scode_title">Script Source</div>
<div class="scode">
<pre>
$("#id_btnGET").on("click", function(){
	<code class="bold">var ajax = new PRAjax("response.php", "get");</code>
	<code class="bold">ajax.setHeaders({"abc":"def"});</code>
	var data = {
		"name_inputText1": "テキストボックス１",
		"name_textArea1": "テキストエリア１",
		"name_radio": "ラジオ",
		"name_checkbox1": "チェックボックス１",
		"name_select1": "セレクト１"
	};
	<code class="bold">ajax.setData(data);</code>
	<code class="bold">ajax.send();</code>
});

$("#id_btnPOST").on("click", function(){
	<code class="bold">var ajax = new PRAjax("response.php", "post");</code>
	<code class="bold">ajax.setHeaders({"abc":"def"});</code>
	var data = {"name_inputText1":"あああ", "name_textArea1":"いいい"};
	<code class="bold">ajax.setData(data);</code>
	<code class="bold">ajax.send();</code>
});

</pre>
</div>
</div><!-- script source -->

<div title="script source" class="mb-3">
<div class="scode_title">HTML</div>
<div class="scode">
<pre>
&lt;button id="id_btnGET" type="button" name="name_btnGET" class="btn">GET</button>
&lt;button id="id_btnPOST" type="button" name="name_btnPOST" class="btn">POST</button>

</pre>
</div>
</div><!-- script source -->


</div><!-- rightPane -->