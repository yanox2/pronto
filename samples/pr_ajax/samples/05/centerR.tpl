<?php
/**
 * View
 * センター右ペイン
 *
 */
?>
<div class="rightPane">

<div title="result">
<div id="id_debugResults" class="resultPanel mb-3"></div>
</div><!-- result -->

<div title="script source" class="mb-3">
<div class="scode_title">Script Source</div>
<div class="scode">
<pre>
<code class="bold">
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
</code>
</pre>
</div>
</div><!-- script source -->

<div title="script source" class="mb-3">
<div class="scode_title">HTML</div>
<div class="scode">
<pre>
&lt;tr id="id_list1">
 &lt;th scope="row">1</th>
 &lt;td>James</td>
 &lt;td>Smith</td>
 &lt;td>@james</td>
 &lt;td>&lt;i id="id_icon1" class="bi bi-pencil"></i></td>
&lt;/td>

</pre>
</div>
</div><!-- script source -->


</div><!-- rightPane -->