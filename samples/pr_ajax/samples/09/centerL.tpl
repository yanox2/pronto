<?php
/**
 * View
 * センター左ペイン
 *
 */
?>
<div title="タイトル" >
<div class="border-bottom h3">前処理・後処理</div>
</div>

<div title="入力" class="inputPanel">
<form id="id_form1" name="name_form1" method="post" action="response.php">

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
 <option value="" selected>Open this select menu</option>
 <option value="val_option1">option1</option>
 <option value="val_option2">option2</option>
 <option value="val_option3">option3</option>
</select>
</div><!-- select -->

<div class="spacer"></div>

<button id="id_button1" type="submit" name="name_button1" class="btn btn-sm btn-secondary">submit</button>

</form>
</div><!-- 入力 -->

<div title="description" class="mt-3 border-top">
<div class="text-break mt-3">
<p>Ajax 通信時の前処理・後処理を実装できます。</p>
<p>PRAjax を継承し、before() をオーバーライドして前処理を、after() をオーバーライドして後処理を記述します。</p>
<br>
<p>before() への引数は、onSubmit() の第２引数、onClick() の第４引数、send() の第２引数で指定します。</p>
<p>return false することで Ajax 送信を中止することができます。</p>
<p>サンプルでは入力チェックが NG の場合にエラーメッセージを出力して送信が中止されます。</p>
<p>また引数を元に確認メッセージを出力し、「キャンセル」であれば送信を中止します。</p>
<br>
<p>after() の引数 data からレスポンスデータを取得することができます。</p>
<p>サンプルではレスポンスデータ全体の文字列や、一部の要素の値を出力しています。</p>
<p>また第４引数はサーバ側から命令ワード "confirm" が使用された場合の選択結果が設定されます。</p>
</div>
</div><!-- description -->

<div class="spacer" style="height:300px;"></div>