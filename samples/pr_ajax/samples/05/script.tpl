<?php
/**
 * JavaScript
 * onClickメソッド
 *
 */
?>
<script type="text/JavaScript">
$(function(){

var getAjax = new PRAjax("response.php", "get");
getAjax.onClick("#id_list1", {"no":1}, true);
getAjax.onClick("#id_list2", {"no":2}, true);
getAjax.onClick("#id_list3", {"no":3}, true);
getAjax.onClick("#id_list4", {"no":4});
getAjax.onClick("#id_list5", {"no":5}, true);

var postAjax = new PRAjax("response.php", "post");
postAjax.onClick("#id_icon1", {"no":1, "First":"テスト１", "Last":"テスト１"}, true);
postAjax.onClick("#id_icon2", {"no":2, "First":"テスト１", "Last":"テスト１"}, true);
postAjax.onClick("#id_icon3", {"no":3, "First":"テスト１", "Last":"テスト１"}, true);
postAjax.onClick("#id_icon4", {"no":4, "First":"テスト１", "Last":"テスト１"});
postAjax.onClick("#id_icon5", {"no":5, "First":"テスト１", "Last":"テスト１"}, true);

});

</script>