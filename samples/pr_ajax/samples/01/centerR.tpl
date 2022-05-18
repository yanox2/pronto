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
$("#id_submit").on("click", function(){
	<code class="bold">var lod = new PRLoader();</code>
	<code class="bold">lod.enable();</code><code> // ロード開始</code>
	setTimeout(function(){
		<code class="bold">lod.disable();</code><code> // ロード終了</code>
		alert("ロードが完了しました。");
	}, 5000);
});
</pre>
<div class="desc">
<p>PRLoaderクラスをnewして使用します。</p>
<p>enable()がロード開始でdisable()がロード終了です。</p>
</div>
</div>
</div><!-- script source -->

<div title="script source" class="mb-3">
<div class="scode_title">HTML</div>
<div class="scode">
<pre>
&lt;body>
<code class="bold">&lt;div id="prTag_maskAll" class="prSt_maskAll">&lt;/div></code>
<code class="bold">&lt;div id="prTag_loader" class="prSt_loader"></code>
 <code class="bold">&lt;div class="loader">&lt;/div></code>
<code class="bold">&lt;/div></code>
</pre>
<div class="desc">
<p>bodyタグ直下に上記のタグを記述します。</p>
</div>
</div>
</div><!-- script source -->


</div><!-- rightPane -->