<?php
/**
 * View
 * センター左ペイン
 *
 */
?>
<div title="タイトル" >
<div class="border-bottom h3">送信データ指定</div>
</div>

<div title="入力" class="inputPanel">
<div class="spacer"></div>
<button id="id_btnGET" type="button" name="name_btnGET" class="btn btn-sm btn-secondary">GET</button>
<button id="id_btnPOST" type="button" name="name_btnPOST" class="btn btn-sm btn-secondary">POST</button>
<div class="spacer"></div>
</div><!-- 入力 -->

<div class="spacer"></div>
<div title="result">
<div id="id_debugResults" class="resultPanel mb-3"></div>
</div><!-- result -->

<div title="description" class="mt-3 border-top">
<div class="text-break mt-3">
<p>PRAjax に送信データを直接指定して通信ができます。</p>
<p>送信データは JSON 形式で指定します。</p>
<p>まず送信先 URL および通信種別（GET/POST）を指定して PRAjax を new します。</p>
<p>setData() に送信データを設定し、send() で送信します。</p>
<p>また、setHeaders() でリクエストヘッダに値を設定できます。</p>
<p>レスポンスデータを使ってなんらかの処理をしたい場合は<a href="../09/index.php">こちら</a>。</p>
<br>
<p>サンプルでは、GET ボタンをクリックすると GET でデータが送信され、POST ボタンをクリックすると POST でデータが送信されるようになっています。</P>
</div>
</div><!-- description -->

<div class="spacer" style="height:300px;"></div>