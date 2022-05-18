<?php
/**
 * View
 * センター左ペイン
 *
 */
?>
<div title="タイトル" >
<div class="border-bottom h3">クロスサイト Preflight</div>
</div>

<div title="入力" class="inputPanel">
<div class="spacer"></div>
<button id="id_button" type="button" name="name_button" class="btn btn-sm btn-secondary">GET (JSON, set header)</button>
<button id="id_btnGET" type="button" name="name_btnGET" class="btn btn-sm btn-secondary">GET (JSONP, set header)</button>
<div class="spacer"></div>
</div><!-- 入力 -->

<div class="spacer"></div>
<div title="result">
<div id="id_debugResults" class="resultPanel mb-3"></div>
</div><!-- result -->

<div title="description" class="mt-3 border-top">
<div class="text-break mt-3">
<p>例えばリクエストヘッダを追加するなどの特殊なクロスサイトアクセスでは、プリフライト【preflight】リクエストが発生します。</p>
<p>この場合、まず OPTIONS で許可があるかどうか事前に確認し、その後に実際のリクエストが送信されます。</p>
<p>受信側は OPTIONS を受け取る可能性があることを考慮して実装します。</p>
<p>JSONP ではプリフライトは発生しません。</p>
</div>
</div><!-- description -->

<div class="spacer" style="height:300px;"></div>