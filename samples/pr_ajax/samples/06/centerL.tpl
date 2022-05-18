<?php
/**
 * View
 * センター左ペイン
 *
 */
?>
<div title="タイトル" >
<div class="border-bottom h3">送信後の自動処理</div>
</div>

<div title="入力" class="inputPanel">
<form id="id_form1" name="name_form1" method="post" action="response.php">

<div title="textArea" class="mb-3">
 <label for="id_textArea1" class="form-label">メッセージ</label>
 <textarea id="id_textArea1" name="name_textArea1" class="form-control" rows="3">送信後メッセージを出力します。</textarea>
</div><!-- textArea -->

<div title="radio">
<div class="form-check form-check-inline">
 <input id="id_radio1" type="radio" name="name_radio" value="1" class="form-check-input" checked>
 <label class="form-check-label" for="id_radio1">メッセージ出力</label>
</div>
<div class="form-check form-check-inline">
 <input id="id_radio2" type="radio" name="name_radio" value="2" class="form-check-input">
 <label class="form-check-label" for="id_radio2">確認メッセージ</label>
</div>
<div class="form-check form-check-inline">
 <input id="id_radio3" type="radio" name="name_radio" value="3" class="form-check-input">
 <label class="form-check-label" for="id_radio3">ページ移動</label>
</div>
<div class="form-check form-check-inline">
 <input id="id_radio4" type="radio" name="name_radio" value="4" class="form-check-input">
 <label class="form-check-label" for="id_radio4">リロード</label>
</div>
</div><!-- radio -->

<div class="spacer"></div>

<button id="id_button1" type="submit" name="name_button1" class="btn btn-sm btn-secondary">submit</button>

</form>
</div><!-- 入力 -->

<div title="description" class="mt-3 border-top">
<div class="text-break mt-3">
<p>レスポンスデータに命令ワードを設定することにより、送信後（応答受信後）に所定の処理を行います。</p>
<br>
<p><strong>・メッセージ出力</strong></p>
<p>"message" に出力するメッセージ文を指定すると、送信後に alert() でメッセージを出力します。</p>
<br>
<p><strong>・確認メッセージ</strong></p>
<p>"confirm" にメッセージ文を指定すると、送信後に confirm() で確認メッセージを出力します。</p>
<p>ユーザの選択結果は後述の<a href="../09/index.php">後処理</a>に渡されます。</p>
<br>
<p><strong>・ページ移動</strong></p>
<p>"location" に移動先 URL を指定すると、送信後に location.href() でページを移動します。</p>
<br>
<p><strong>・リロード</strong></p>
<p>"reload" に true を指定すると、送信後にページのリロードを行います。</p>
<p style="text-decoration:line-through;">スクロール位置を cookie に保持し、<span class="text-danger">リロード後も同じ場所に戻ります</span>。</p>
</div>
</div><!-- description -->

<div class="spacer" style="height:300px;"></div>