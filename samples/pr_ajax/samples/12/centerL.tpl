<?php
/**
 * View
 * センター左ペイン
 *
 */
?>
<div title="タイトル" >
<div class="border-bottom h3">クロスサイト 許可なし（JSONP）</div>
</div>

<div title="入力" class="inputPanel">
<div class="spacer"></div>
<button id="id_button" type="button" name="name_button" class="btn btn-sm btn-secondary">GET(JSON)</button>
<button id="id_btnGET" type="button" name="name_btnGET" class="btn btn-sm btn-secondary">GET(JSONP)</button>
<button id="id_btnPOST" type="button" name="name_btnPOST" class="btn btn-sm btn-secondary">POST(JSONP)</button>
<div class="spacer"></div>
</div><!-- 入力 -->

<div class="spacer"></div>
<div title="result">
<div id="id_debugResults" class="resultPanel mb-3"></div>
</div><!-- result -->

<div title="description" class="mt-3 border-top">
<div class="text-break mt-3">
<p>JSONP【JSON with Padding】のデータタイプを利用することにより、CORS Policy 違反を回避することができます。</p>
<p>PRAjax コンストラクタの第４引数に true を指定することで JSONP の Ajax 通信となります。</p>
<p>なお、JSONP はその仕組み上 GET しかできないため、POST を指定しても GET で送信されます。</p>
<br>
<p>サンプルでは、GET(JSON) は同一オリジンポリシー違反でエラー（<span class="text-danger">Access to XMLHttpRequest at '<?=C_CROSSSITE_DEST?>/12/response.php' from origin '<?=C_CROSSSITE_ORIGIN?>' has been blocked by CORS policy: No 'Access-Control-Allow-Origin' header is present on the requested resource.</span>）となります。</p>
<p>GET(JSONP) と POST(JSONP) は両方とも GET の通信になります。</p>
</div>
</div><!-- description -->

<div class="spacer" style="height:300px;"></div>