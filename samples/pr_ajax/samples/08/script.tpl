<?php
/**
 * JavaScript
 * 送信後の自動処理3（フォーム値編集）
 *
 */
?>
<script type="text/JavaScript">
$(function(){

var ajax = new PRAjax("response.php", "post");
ajax.onClick("#id_button1", {"type":1});
ajax.onClick("#id_button2", {"type":2});

});
</script>