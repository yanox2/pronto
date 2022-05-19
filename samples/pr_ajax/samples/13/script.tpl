<?php
/**
 * JavaScript
 * クロスサイト Preflight
 *
 */
?>
<script type="text/JavaScript">
$(function(){

var data = {"name_inputText1":"テキスト１", "name_textArea1":"テキスト２"};
var url = "<?=C_CROSSSITE_DEST?>/13/response.php";

// GET (JSON, set header)
var getAjax = new PRAjax(url, "get");
getAjax.setHeaders({"abc":"def"});
getAjax.onClick("#id_button", data);

// GET (JSONP, set header)
var getAjax2 = new PRAjax(url, "get", true);
getAjax2.setHeaders({"abc":"def"});
getAjax2.onClick("#id_btnGET", data);

});
</script>