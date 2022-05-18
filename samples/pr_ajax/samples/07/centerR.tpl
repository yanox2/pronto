<?php
/**
 * View
 * センター右ペイン
 *
 */
?>
<div class="rightPane">

<div title="result">
<div id="id_debugResults" class="resultPanel mb-3"></div>
</div><!-- result -->

<div title="script source" class="mb-3">
<div class="scode_title">Script Source</div>
<div class="scode">
<pre>
<code class="bold">var ajax = new PRAjax("response.php", "post");</code>
<code class="bold">ajax.onClick("#id_button1", {"type":1});</code>
<code class="bold">ajax.onClick("#id_button2", {"type":2});</code>
</pre>
</div>
</div><!-- script source -->

<div title="script source" class="mb-3">
<div class="scode_title">response.php</div>
<div class="scode">
<pre>
$type = $_REQUEST['type'];
$dom = array();

if($type == 1){ // 変更
	<code class="bold">$dom['append'] = array('id_area1'=>'&lt;div id="id_append" class="ele">append&lt;/div>');</code>
	<code class="bold">$dom['prepend'] = array('id_area1'=>'&lt;div id="id_prepend" class="ele">prepend&lt;/div>');</code>
	<code class="bold">$dom['after'] = array('id_area1'=>'&lt;div id="id_after" class="ele">after&lt;/div>');</code>
	<code class="bold">$dom['before'] = array('id_area1'=>'&lt;div id="id_before" class="ele">before&lt;/div>');</code>
	<code class="bold">$dom['replace'] = array('id_source'=>'replace');</code>
}else{ // 元に戻す
	<code class="bold">$dom['removef'] = array('id_append'=>1, 'id_prepend'=>1, 'id_after'=>1, 'id_before'=>1);</code>
	<code class="bold">$dom['replace'] = array('id_source'=>'source');</code>
}

$res = array();
$res['dom'] = $dom;
$response = json_encode($res, JSON_UNESCAPED_UNICODE);
print $response;

</pre>
</div>
</div><!-- script source -->


</div><!-- rightPane -->