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
<code class="bold">// ユーザデータを取得しモーダルウィンドウ上のフォームへ反映
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
		$("#id_modal1").modal("hide");
	}
}
var postAjax = new PostAjax("post.php", "post");
postAjax.onSubmit("#id_form1", "入力された内容でユーザデータを更新します。よろしいですか？");
</code>
</pre>
</div>
</div><!-- script source -->

<div title="script source" class="mb-3">
<div class="scode_title">get.php</div>
<div class="scode">
<pre>
$reps = array(
	'id_name'=>$name,
	'id_handle'=>$handle,
	'name_sex'=>$sex,
	'id_userno'=>$no
);

$res = array();
$res['dom']['replace'] = $reps;
$response = json_encode($res, JSON_UNESCAPED_UNICODE);
print $response;
</pre>
</div>
</div><!-- script source -->

<div title="script source" class="mb-3">
<div class="scode_title">post.php</div>
<div class="scode">
<pre>
$name = $_REQUEST['name_name'];
$handle = $_REQUEST['name_handle'];
$sex = $_REQUEST['name_sex'];
$no = $_REQUEST['name_userno'];
$vals = array('name_name'=>$name, 'name_handle'=>$handle, 'name_sex'=>$sex, 'name_userno'=>$no);

$res = array();
$res['vals'] = $vals;
$response = json_encode($res, JSON_UNESCAPED_UNICODE);
print $response;

</pre>
</div>
</div><!-- script source -->


</div><!-- rightPane -->