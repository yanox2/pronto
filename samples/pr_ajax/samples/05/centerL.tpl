<?php
/**
 * View
 * センター左ペイン
 *
 */
?>
<div title="タイトル" >
<div class="border-bottom h3">onClickメソッド</div>
</div>

<div title="ユーザリスト">
<table class="table table-striped">
<thead>
<tr>
 <th scope="col">#</th>
 <th scope="col">First</th>
 <th scope="col">Last</th>
 <th scope="col">Handle</th>
 <th scope="col">編集</th>
</tr>
<thead>
<tbody>
<tr id="id_list1">
 <th scope="row">1</th>
 <td>James</td>
 <td>Smith</td>
 <td>@james</td>
 <td><i id="id_icon1" class="bi bi-pencil"></i></td>
</tr>
<tr id="id_list2">
 <th scope="row">2</th>
 <td>John</td>
 <td>Williams</td>
 <td>@john</td>
 <td><i id="id_icon2" class="bi bi-pencil"></i></td>
</tr>
<tr id="id_list3">
 <th scope="row">3</th>
 <td>Robert</td>
 <td>Brown</td>
 <td>@robert</td>
 <td><i id="id_icon3" class="bi bi-pencil"></i></td>
</tr>
<tr id="id_list4">
 <th scope="row">4</th>
 <td>Michael</td>
 <td>Miller</td>
 <td>@michael</td>
 <td><i id="id_icon4" class="bi bi-pencil"></i></td>
</tr>
<tr id="id_list5">
 <th scope="row">5</th>
 <td>William</td>
 <td>Taylor</td>
 <td>@william</td>
 <td><i id="id_icon5" class="bi bi-pencil"></i></td>
</tr>
</tbody>
</table>

</div><!-- 入力 -->

<div title="description" class="mt-3 border-top">
<div class="text-break mt-3">
<p>例えばユーザリストに対して各ユーザごとに送信するデータが異なる場合、onClick()を使用すればいちいち JQuery の on メソッドを記述せずにすみ、全体のコード量を減らすことができます。</p>
<p>onClick() にクリックに対応するタグの ID および送信するデータを指定します。</p>
<p>第３引数を true とした場合は、指定された ID の :hover（マウスオーバー）がクリッカブルになります。</p>
<p>レスポンスデータを使ってなんらかの処理をしたい場合は<a href="../09/index.php">こちら</a>。</p>
<br>
<p>サンプルでは各ユーザの行をクリックすると GET でユーザ番号が送信され、鉛筆マークをクリックすると POST でユーザデータを送信するようになっています。</p>
<p>４番目以外のレコードは、hover に true を指定しているため、マウスオーバーでマウスの形状が変わります。</p>
</div>
</div><!-- description -->

<div class="spacer" style="height:300px;"></div>