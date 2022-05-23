<?php
/**
 * View
 * センター左ペイン
 *
 */
?>
<div title="タイトル" >
<div class="border-bottom h4">前処理・後処理2（ユーザデータ編集）</div>
</div>

<div title="ユーザーリスト">
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
 <td id="id_first1">James</td>
 <td id="id_last1">Smith</td>
 <td id="id_handle1">@james</td>
 <td><i id="id_icon1" class="bi bi-pencil"></i></td>
</tr>
<tr id="id_list2">
 <th scope="row">2</th>
 <td id="id_first2">John</td>
 <td id="id_last2">Williams</td>
 <td id="id_handle2">@john</td>
 <td><i id="id_icon2" class="bi bi-pencil"></i></td>
</tr>
<tr id="id_list3">
 <th scope="row">3</th>
 <td id="id_first3">Robert</td>
 <td id="id_last3">Brown</td>
 <td id="id_handle3">@robert</td>
 <td><i id="id_icon3" class="bi bi-pencil"></i></td>
</tr>
<tr id="id_list4">
 <th scope="row">4</th>
 <td id="id_first4">Michael</td>
 <td id="id_last4">Miller</td>
 <td id="id_handle4">@michael</td>
 <td><i id="id_icon4" class="bi bi-pencil"></i></td>
</tr>
<tr id="id_list5">
 <th scope="row">5</th>
 <td id="id_first5">William</td>
 <td id="id_last5">Taylor</td>
 <td id="id_handle5">@william</td>
 <td><i id="id_icon5" class="bi bi-pencil"></i></td>
</tr>
</tbody>
</table>

</div><!-- 入力 -->

<div class="spacer"></div>
<div title="result">
<div id="id_debugResults" class="resultPanel mb-3"></div>
</div><!-- result -->

<div title="description" class="mt-3 border-top">
<div class="text-break mt-3">
<p>一般的な Ajax の実装例として、ユーザデータ編集のサンプルを用意しました。</p>
<br>
<p>サンプルでは鉛筆マークをクリックすると対応するユーザのデータを取得し、モーダルウィンドウを表示して取得したデータをフォームに反映します。</p>
<p>モーダルウィンドウのボタンをクリックすると、フォームを POST しメッセージ出力後モーダルウィンドウを閉じます。</p>
</div>
</div><!-- description -->

<div class="spacer" style="height:300px;"></div>