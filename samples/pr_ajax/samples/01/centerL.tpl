<?php
/**
 * View
 * センター左ペイン
 *
 */
?>
<div title="タイトル" >
<div class="border-bottom h3">ローダー</div>
</div>

<div title="入力" class="inputPanel">
<form id="id_form1" name="name_form1" method="post" action="index.php">

<div title="inputText" class="row">
 <label for="id_inputText1" class="col-sm-3 col-form-label">inputText1</label>
 <div class="col-sm-9">
  <input id="id_inputText1" type="text" name="name_inputText1" class="form-control" value="val_inputText1Value">
 </div>
</div><!-- inputText -->

<div title="textArea" class="mb-3">
 <label for="id_textArea1" class="form-label">textArea1</label>
 <textarea id="id_textArea1" name="name_textArea1" class="form-control" rows="3">val_textArea1Value</textarea>
</div><!-- textArea -->

<div title="radio">
<div class="form-check form-check-inline">
 <input id="id_radio1" type="radio" name="name_radio" value="val_radio1" class="form-check-input" checked>
 <label class="form-check-label" for="id_radio1">radio1</label>
</div>
<div class="form-check form-check-inline">
 <input id="id_radio2" type="radio" name="name_radio" value="val_radio2" class="form-check-input">
 <label class="form-check-label" for="id_radio2">radio2</label>
</div>
<div class="form-check form-check-inline">
 <input id="id_radio3" type="radio" name="name_radio" value="val_radio3" class="form-check-input">
 <label class="form-check-label" for="id_radio3">radio3</label>
</div>
</div><!-- radio -->

<div title="checkbox">
<div class="form-check form-check-inline">
 <input id="id_checkbox1" type="checkbox" name="name_checkbox1" value="val_checkbox1" class="form-check-input" checked>
 <label class="form-check-label" for="id_checkbox1">checkbox1</label>
</div>
<div class="form-check form-check-inline">
 <input id="id_checkbox2" type="checkbox" name="name_checkbox2" value="val_checkbox2" class="form-check-input">
 <label class="form-check-label" for="id_checkbox2">checkbox2</label>
</div>
<div class="form-check form-check-inline">
 <input id="id_checkbox3" type="checkbox" name="name_checkbox3" value="val_checkbox3" class="form-check-input">
 <label class="form-check-label" for="id_checkbox3">checkbox3</label>
</div>
</div><!-- checkbox -->

<div title="select" class="mb-3">
<select id="id_select1" name="name_select1" class="form-select form-select-sm" aria-label=".form-select-sm example">
 <option selected>Open this select menu</option>
 <option value="val_option1">option1</option>
 <option value="val_option2">option2</option>
 <option value="val_option3">option3</option>
</select>
</div><!-- select -->

<div class="spacer"></div>

<button id="id_submit" type="button" name="name_submit" class="btn btn-sm btn-secondary">submit</button>

</form>
</div><!-- 入力 -->

<div title="description" class="mt-3 border-top">
<div class="text-break mt-3">
<p>サーバとの通信中などに使用できるローダーです。</p>
<p>ローディング中は画面の操作が無効になり、２重ポストを防ぎます。</p>
<br>
<p>サンプルでは submit ボタンを押すとローディング中となり、５秒経過した後にメッセージを表示して復帰します。</p>
<p>body の直下に所定のタグを埋め込みます。</p>
<p>&lt;div class="loader">&lt;/div>の部分を別のローダーに置き換えることで、様々なローダーを実装することができます。</p>
</div>
</div><!-- description -->

<div class="spacer" style="height:300px;"></div>