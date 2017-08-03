<?php
/* Copyright 2016 dodat */
/*---------------------------------------------------------------------------*
 * Test
 *      トップページ
 *---------------------------------------------------------------------------*/
require_once('../etc/path.inc');
require_once(C_INSTALL_PATH_TEST.'/testPronto/02.Environment/test01/sysdef_org.inc');

include('../etc/header.tpl');

function sp($end=false){
	if($end){
		return '</span>'."\n";
	}else{
		return '<span style="color:orange;">';
	}
}
function sp2($str){
	return '<span style="color:green; font-weight:bold;">'.htmlspecialchars($str).'</span>';
}
function sp3($str){
	return '<span style="color:red; font-weight:normal;">'.htmlspecialchars($str).'</span>';
}
function hs($str){
	return htmlspecialchars($str);
}
?>
<div id="lay_center" class="col span_19" style="min-height:1000px; padding:30px;">
<header style="font-size:16px;">Overview</header>
<article style="font-size:14px; line-height:16px;">
<div class="descript">
<p>まず基底クラス Controller を継承してコントローラを作成します。必要であれば、before()、after() をオーバライドして共通の前後処理を実装します。</p>
</div>

<p style="margin:0 20px;">●MyController.php</p>
<pre class="preCode">
<?=sp()?>// コントローラクラス<?=sp(true)?>
class MyController extends \PR\Controller{
	<?=sp()?>// フォーム画面<?=sp(true)?>
	public function page(){
		$cntr = new \sample\UserProfile(); <?=sp()?>// UserProfileコンテナ<?=sp(true)?>
		$cntr->newEntity(); <?=sp()?>// エンティティの生成<?=sp(true)?>
		<?=sp2('$cntr->readX();');?> <?=sp()?>// フォームデータ読み込み<?=sp(true)?>
		$view = $this->getView(); <?=sp()?>// ビュー<?=sp(true)?>
		$view->setValue('UserProfile',$cntr); <?=sp()?>// ビューへの引数<?=sp(true)?>
		$view->setTemplate('page.tpl'); <?=sp()?>// HTMLファイル設定<?=sp(true)?>
	}

	<?=sp()?>// POSTデータをAjaxで受けDBを更新<?=sp(true)?>
	public function post(){
		$this->ajax(); <?=sp()?>// Ajax応答宣言<?=sp(true)?>
		$cntr = new \sample\UserProfile(); <?=sp()?>// コンテナ<?=sp(true)?>
		$cntr->newEntity(); <?=sp()?>// エンティティの生成<?=sp(true)?>

		<?=sp2('$cntr->post();');?> <?=sp()?>// POSTデータの取得<?=sp(true)?>
		<?=sp2('$msg = $cntr->checkPostByTarget();');?> <?=sp()?>// POSTデータのチェック<?=sp(true)?>
		if(!empty($msg)){
			$this->resAjax(-1,$msg); <?=sp()?>// Ajax応答（エラー）<?=sp(true)?>
			return;
		}
		<?=sp2('$cntr->updateX();');?> <?=sp()?>// DBの更新<?=sp(true)?>

		<?=sp()?>// HTMLの動的更新<?=sp(true)?>
		$entity = $cntr->getEntity(); <?=sp()?>// エンティティオブジェクトの取得<?=sp(true)?>
		$target = array('sLoginId','sName','sEMail','sNote'); <?=sp()?>// ターゲット設定<?=sp(true)?>
		$items = $cntr->getArrayX($target,
			\PR\Container::VARIABLE,<?=sp3('\'div_\'.$entity->iUserId.\'_\'')?>); <?=sp()?>// データ配列の取得<?=sp(true)?>
		<?=sp2('$res = array(\'dom\'=>array(\'replace\'=>$items));');?> <?=sp()?>// 応答データ<?=sp(true)?>
		$this->resAjax(0,'Success !!',$res); <?=sp()?>// Ajax応答（正常）<?=sp(true)?>
	}
}
</pre>

<div class="descript">
<p>Pronto のデータバインドの仕組みは、DB の参照・更新、POST データの取得・チェック、HTML パーサなどを簡潔なコードにしてくれます（緑色の部分）。</p>
</div>

<p style="margin:0 20px;">●page.tpl</p>
<pre class="preCode">
<?php
print hs('<?php')."\n";
print '	$cntr = $this->get(\'UserProfile\');'."\n";
print '	$entity = $cntr->getEntity();'."\n";
print hs('?>')."\n\n";
print sp().htmlspecialchars('<!-- フォーム部分 -->').sp(true);
print hs('<form id="form_update" name="form_update" method="post" action="/MyController/post/">')."\n";
print hs('<table>')."\n";
print hs('<tr><td>UserId</td><td><?=$entity->iUserId?></td></tr>')."\n";
print hs('<tr><td>LoginId</td><td>').sp2('<?=\PR\INPTAG($cntr,\'sLoginId\');?>').hs('</td></tr>')."\n";
print hs('<tr><td>Name</td><td>').sp2('<?=\PR\INPTAG($cntr,\'sName\');?>').hs('</td></tr>')."\n";
print hs('<tr><td>EMail</td><td>').sp2('<?=\PR\INPTAG($cntr,\'sEMail\');?>').hs('</td></tr>')."\n";
print hs('</table>')."\n";
print sp2('<?=\PR\HIDETAG($cntr,\'iUserId\',true);?>')."\n";
print hs('<button id="btn_update" type="button" name="btn_update">update</button>')."\n";
print hs('</form>')."\n";
print sp().htmlspecialchars('<!-- フォーム部分 -->').sp(true);
print "\n";
print sp().htmlspecialchars('<!-- HTML動的更新部分 -->').sp(true);
print hs('<table>')."\n";
print hs('<tr><td>LoginId</td><td>Name</td><td>EMail</td><td>Note</td></tr>')."\n";
print hs('<tr>')."\n";
print hs('<td><div id="').sp3('div_1_sLoginId').hs('" style="color:blue;">user1</div></td>')."\n";
print hs('<td><div id="').sp3('div_1_sName').hs('">山田太郎</div></td>')."\n";
print hs('<td><div id="').sp3('div_1_sEMail').hs('">yamada@co.jp</div></td>')."\n";
print hs('<td><div id="').sp3('div_1_sNote').hs('">小笠原支店</div></td>')."\n";
print hs('</tr>')."\n";
print hs('</table>')."\n";
print sp().htmlspecialchars('<!-- HTML動的更新部分 -->').sp(true);
?>
</pre>

<div class="descript">
<p>JavaScript の PRFormAjax クラスや PRFormAjaxListener クラスを利用することにより、動的な HTML の更新処理が実現できます。</p>
</div>

<pre class="preCode">
<?print hs('<script type="text/JavaScript">')."\n";?>
	var form = Object.create(PRFormAjax,{formId:"form_update"}); <?=sp()?>// フォームクラス<?=sp(true)?>
	form.addSubmit("btn_update",0); <?=sp()?>// submitボタン追加<?=sp(true)?>

	var lis = Object.create(PRFormAjaxListener,{}); <?=sp()?>// リスナクラス<?=sp(true)?>
	form.addListener(lis); <?=sp()?>// リスナ登録<?=sp(true)?>
	form.listen();
<?print hs('</script>')."\n";?>
</pre>

<div class="descript">
<p>
例えばリストの中から１つのレコードを選択し、共通のフォームで更新する場合は以下のようになります。
PRFormAjax クラスの active()、inactive() をオーバライドし、レコードごとにリスナを登録します。
レコードデータの取得は取得用パラメタ送信フォームの ID を引数 reqId で指定します。
</p>
</div>

<pre class="preCode">
<?print hs('<script type="text/JavaScript">')."\n";?>
	<?=sp()?>// フォームクラスの継承<?=sp(true)?>
	var Temp1 = {
		active: function(){
			$("#"+this.showId_).modal("show");
		},
		inactive: function(){
			$("#"+this.showId_).modal("hide");
		}
	}
	var MyFormAjax = $.extend({},PRFormAjax,Temp1);
	var form = Object.create(PRFormAjax,{formId:"form_update",showId:"formDiv"});
	form.addSubmit("btn_update",0);

	<?=sp()?>// リスナクラス<?=sp(true)?>
	var lis = Object.create(PRFormAjaxListener,{actId:"div_1_sLoginId",reqId:"req_1",hover:true});
	form.addListener(lis);
	lis = Object.create(PRFormAjaxListener,{actId:"div_2_sLoginId",reqId:"req_2",hover:true});
	form.addListener(lis);
	lis = Object.create(PRFormAjaxListener,{actId:"div_3_sLoginId",reqId:"req_3",hover:true});
	form.addListener(lis);
	form.listen();
<?print hs('</script>')."\n";?>
</pre>

<p style="margin:20px 0 0 20px;">●page.tpl</p>
<pre class="preCode">
<?
print sp().htmlspecialchars('<!-- データ取得フォーム -->').sp(true);
print hs('<form id="req_1" name="req_1" method="post" action="/MyController/request/">')."\n";
print hs(' <input type="hidden" name="prReq_UserId" value="1">')."\n";
print hs('</form>')."\n";
print hs('<form id="req_2" name="req_2" method="post" action="/MyController/request/">')."\n";
print hs(' <input type="hidden" name="prReq_UserId" value="2">')."\n";
print hs('</form>')."\n";
print hs('<form id="req_3" name="req_3" method="post" action="/MyController/request/">')."\n";
print hs(' <input type="hidden" name="prReq_UserId" value="3">')."\n";
print hs('</form>')."\n";
print sp().htmlspecialchars('<!-- データ取得フォーム -->').sp(true);
?>
</pre>

<p style="margin:20px 0 0 20px;">●MyController.php</p>
<pre class="preCode">
	public function request(){
		$this->ajax();
		$cntr = new \sample\UserProfile();
		$cntr->newEntity();
		$cntr->post();
		$cntr->readX();
		$cntr->targetAll(); <?=sp()?>// すべての変数をターゲットにする<?=sp(true)?>
		$items = $cntr->getArray(\PR\Model::TYPE_ALL,\PR\Container::POST);
		<?=sp2('$res = array(\'dom\'=>array(\'replace\'=>$items));');?> <?=sp()?>// 応答データ<?=sp(true)?>
		$this->resAjax(0,null,$res);
	}
</pre>

</article>
<div class="spacer" style="height:500px;"></div>
</div>

<?php
//include('../etc/right.tpl');
include('../etc/footer.tpl');
?>
