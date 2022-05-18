<?php
/**
 * JavaScript
 * 前処理・後処理2（ユーザデータ編集）
 *
 */
?>
<div title="モーダルウィンドウ" id="id_modal1" class="modal" tabindex="-1">
<div class="modal-dialog">
<div class="modal-content animated fadeInDown">
<form id="id_form1" name="name_form1" method="post" action="post.php">
<div class="modal-header">
 <span id="est_title" class="modal-title" style="font-size:16px; font-weight:600;">入力情報</span>
 <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
</div>
<div class="modal-body clearfix" style="background-color: #f8fafb;">

<div title="inputText" class="row">
 <label for="id_name" class="col-sm-3 col-form-label">Name</label>
 <div class="col-sm-9">
  <input id="id_name" type="text" name="name_name" class="form-control" value="val_inputText1Value">
 </div>
</div><!-- inputText -->

<div title="textArea" class="mb-3">
 <label for="id_handle" class="form-label">Handle Name</label>
 <textarea id="id_handle" name="name_handle" class="form-control" rows="3">val_textArea1Value</textarea>
</div><!-- textArea -->

<div title="radio">
<div class="form-check form-check-inline">
 <input id="id_sex1" type="radio" name="name_sex" value="male" class="form-check-input" checked>
 <label class="form-check-label" for="id_sex1">male</label>
</div>
<div class="form-check form-check-inline">
 <input id="id_sex2" type="radio" name="name_sex" value="female" class="form-check-input">
 <label class="form-check-label" for="id_sex2">female</label>
</div>
<div class="form-check form-check-inline">
 <input id="id_sex3" type="radio" name="name_sex" value="none" class="form-check-input">
 <label class="form-check-label" for="id_sex3">none</label>
</div>
</div><!-- radio -->

</div>
<div class="modal-footer">
 <button id="btn_modal1" name="btn_modal1" type="submit" class="btn btn-primary">POST</button>
</div>
<input id="id_userno" type="hidden" name="name_userno" value="0">
</form>
</div><!-- modal-content -->
</div><!-- modal-dialog -->
</div><!-- modal -->

<script type="text/JavaScript">
$(function(){

// ユーザデータを取得しモーダルウィンドウ上のフォームデータへ反映
class MyAjax extends PRAjax{
	after(data, textStatus, jqXHR, confirm){
		$("#id_modal1").modal('show');
	}
}
var getAjax = new MyAjax("get.php", "get");
getAjax.onClick("#id_icon1", {"no":1}, true);
getAjax.onClick("#id_icon2", {"no":2}, true);
getAjax.onClick("#id_icon3", {"no":3}, true);
getAjax.onClick("#id_icon4", {"no":4}, true);
getAjax.onClick("#id_icon5", {"no":5}, true);

// モーダルウィンドウ上のフォームデータを送信
class PostAjax extends PRAjax{
	before(args){
		var confirm = window.confirm(args);
		if(!confirm) return false;
	}

	after(data, textStatus, jqXHR, confirm){
		$("#id_modal1").modal('hide');
	}
}
var postAjax = new PostAjax("post.php", "post");
postAjax.onSubmit("#id_form1", "入力された内容でユーザデータを更新します。よろしいですか？");

});

</script>