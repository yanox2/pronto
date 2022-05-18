<?php
/**
 * View
 * センター左ペイン
 *
 */
?>
<div title="タイトル" >
<div class="border-bottom h3">クロスサイト 許可あり</div>
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
<p>クロスサイト（外部サイト、外部サーバ）への通信は、受信側がそれを許可している場合にのみ有効です。</p>
<p>具体的には、レスポンスヘッダ Access-Control-Allow-Origin に許可するアクセス元が設定され、それに合致する必要があります。</p>
<br>
<p>サンプルでは応答を返す response.php でアクセス元 <?=C_CROSSSITE_ORIGIN?> を許可するようヘッダを設定しています。</p>
<p>Access-Control-Allow-Origin にはワイルドカードも設定可能です。</p>
</div>
</div><!-- description -->

<div class="spacer" style="height:300px;"></div>