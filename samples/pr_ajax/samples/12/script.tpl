<?php
/**
 * JavaScript
 * クロスサイト 許可なし（JSONP）
 *
 */
?>
<script type="text/JavaScript">
$(function(){

var data = {"name_inputText1":"テキスト１", "name_textArea1":"テキスト２"};
var url = "<?=C_CROSSSITE_DEST?>/12/response.php";

// get (JSON)
var getAjax = new PRAjax(url, "get");
getAjax.onClick("#id_button", data);

// get (JSONP)
var getAjax2 = new PRAjax(url, "get", false, true);
getAjax2.onClick("#id_btnGET", data);

// post (JSONP)
var postAjax = new PRAjax(url, "post", false, true);
postAjax.onClick("#id_btnPOST", data);

});
</script>