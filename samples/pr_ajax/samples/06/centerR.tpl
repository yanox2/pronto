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

<code class="bold">var ajax = new PRAjax();</code>
<code class="bold">ajax.onSubmit("#id_form1");</code>

</pre>
</div>
</div><!-- script source -->

<div title="script source" class="mb-3">
<div class="scode_title">response.php</div>
<div class="scode">
<pre>
$res = array();

// メッセージ出力
$res['message'] = $_REQUEST['name_textArea1'];

// 確認メッセージ
$res['confirm'] = $_REQUEST['name_textArea1'];

// ページ移動
$res['location'] = 'index2.php';

// リロード
$res['reload'] = true;

$response = json_encode($res, JSON_UNESCAPED_UNICODE);
print $response;

</pre>
</div>
</div><!-- script source -->


</div><!-- rightPane -->