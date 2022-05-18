<?php
/**
 * View
 * センター左ペイン
 *
 */
?>
<div title="タイトル" >
<div class="border-bottom h3">送信後の自動処理2（HTML編集）</div>
</div>

<div class="inputPanel" style"width:100%; height:500px;">
<div id="id_area1" style="padding:10px; border:1px solid black;">
 <div>ID: id_area1</div>
 <div id="id_source" class="ele text-body bg-white">Source</div>
</div>

<div class="spacer" style="height:50px;"></div>
<button id="id_button1" type="button" name="name_button1" class="btn btn-sm btn-secondary">変更</button>
<button id="id_button2" type="button" name="name_button2" class="btn btn-sm btn-secondary">元に戻す</button>

</div><!-- 入力 -->

<div title="description" class="mt-3 border-top">
<div class="text-break mt-3">
<p>レスポンスデータに "dom" を設定することにより、送信後（応答受信後）に HTML の DOM 操作を行います。</p>
<br>
<p>サンプルでは「変更」ボタンで要素の追加が行われ、「元に戻す」ボタンで追加された要素を削除します。</p>
<p>レスポンスデータ $res['dom']['XXXX'] に変更を行う要素の ID と値のセットを配列で指定します。</p>
<br>
<p><strong>・append</strong></p>
<p>ID で指定された要素の中の最後尾にタグが追加されます。</p>
<br>
<p><strong>・prepend</strong></p>
<p>ID で指定された要素の中の先頭にタグが追加されます。</p>
<br>
<p><strong>・after</strong></p>
<p>ID で指定された要素の直下にタグが追加されます。</p>
<br>
<p><strong>・before</strong></p>
<p>ID で指定された要素の直前にタグが追加されます。</p>
<br>
<p><strong>・replace</strong></p>
<p>ID で指定された要素の中身、あるいは value を上書きします。</p>
<br>
<p><strong>・removef</strong></p>
<p>ID で指定された要素を削除します。</p>
</div>
</div><!-- description -->

<div class="spacer" style="height:300px;"></div>