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
var url = "<?=C_CROSSSITE_DEST?>/12/response.php";

<code class="bold">// get (JSON)
var getAjax = new PRAjax(url, "get");
getAjax.onClick("#id_button", data);

// get (JSONP)
var getAjax2 = new PRAjax(url, "get", false, true);
getAjax2.onClick("#id_btnGET", data);

// post (JSONP)
var postAjax = new PRAjax(url, "post", false, true);
postAjax.onClick("#id_btnPOST", data);
</code>
</pre>
</div>
</div><!-- script source -->

<div title="script source" class="mb-3">
<div class="scode_title">response.php</div>
<div class="scode">
<pre>
$vals = array();
$vals['inputText1'] = $_REQUEST['name_inputText1'];
$vals['textArea1'] = $_REQUEST['name_textArea1'];

$res = array();
$res['vals'] = $vals;
$response = json_encode($res, JSON_UNESCAPED_UNICODE);
print $response;

</pre>
</div>
</div><!-- script source -->


</div><!-- rightPane -->