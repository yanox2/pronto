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
$reps = array();

if($type == 1){ // 変更
	<code class="bold">$reps = array(
		'id_inputText1'=>'値１',
		'id_textArea1'=>'値２',
		'name_radio'=>'val_radio3',
		'id_checkbox1'=>'val_checkbox1',
		'id_checkbox2'=>'',
		'id_checkbox3'=>'val_checkbox3',
		'id_select1'=>'val_option3'
	);</code>
}else if($type == 2){ // 元に戻す
	<code class="bold">$reps = array(
		'id_inputText1'=>'val_inputText1Value',
		'id_textArea1'=>'val_textArea1Value',
		'name_radio'=>'val_radio1',
		'id_checkbox1'=>'val_checkbox1',
		'id_checkbox2'=>'',
		'id_checkbox3'=>'',
		'id_select1'=>''
	);</code>
}

$res = array();
$res['dom']['replace'] = $reps;
$response = json_encode($res, JSON_UNESCAPED_UNICODE);
print $response;

</pre>
</div>
</div><!-- script source -->


</div><!-- rightPane -->