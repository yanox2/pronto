<?php
/**
 * JavaScript
 * クロスサイト 許可あり
 *
 */
?>
<script type="text/JavaScript">
$(function(){

var data = {"name_inputText1":"テキスト１", "name_textArea1":"テキスト２"};
var url = "<?=C_CROSSSITE_DEST?>/11/response.php";

// get
var getAjax = new PRAjax(url, "get");
getAjax.onClick("#id_btnGET", data);

// post
var postAjax = new PRAjax(url, "post");
postAjax.onClick("#id_btnPOST", data);

});
</script>