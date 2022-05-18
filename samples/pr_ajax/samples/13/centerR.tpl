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
var data = {"name_inputText1":"テキスト１", "name_textArea1":"テキスト２"};
var url = "<?=C_CROSSSITE_DEST?>/13/response.php";

<code class="bold">// GET (JSON, set header)
var getAjax = new PRAjax(url, "get");
getAjax.setHeaders({"abc":"def"});
getAjax.onClick("#id_button", data);

// GET (JSONP, set header)
var getAjax2 = new PRAjax(url, "get", false, true);
getAjax2.setHeaders({"abc":"def"});
getAjax2.onClick("#id_btnGET", data);
</code>
</pre>
</div>
</div><!-- script source -->

<div title="script source" class="mb-3">
<div class="scode_title">response.php</div>
<div class="scode">
<pre>
$method = $_SERVER['REQUEST_METHOD'];
if($method == 'OPTIONS'){
	<code class="bold">header('Access-Control-Allow-Origin: <?=C_CROSSSITE_ORIGIN?>');</code>
	<code class="bold">header('Access-Control-Allow-Headers: abc');</code>
	<code>//header('Access-Control-Allow-Headers: *');</code>
	exit();
}

$vals = array();
$vals['inputText1'] = $_REQUEST['name_inputText1'];
$vals['textArea1'] = $_REQUEST['name_textArea1'];

<code class="bold">header('Access-Control-Allow-Origin: <?=C_CROSSSITE_ORIGIN?>');</code>

$res = array();
$res['vals'] = $vals;
$response = json_encode($res, JSON_UNESCAPED_UNICODE);
print $response;

</pre>
</div>
</div><!-- script source -->


</div><!-- rightPane -->