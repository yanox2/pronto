<?php
/**
 * View
 * 左ペイン
 *
 */

$v_menuPath = '..';
$uri = $_SERVER['REQUEST_URI'];
?>
<style>
.crrtMenu{
	background-color: mistyrose;
}
.menu{
	font-size: 14px;
}
</style>
<div style="padding:10px 0;">
<?php $cls = ''; if(strpos($uri,'/01/')) $cls = 'crrtMenu'; ?>
 <div class="<?=$cls?> menu"><a href="<?=$v_menuPath?>/01/index.php">01. ローダー</a></div>
<?php $cls = ''; if(strpos($uri,'/02/')) $cls = 'crrtMenu'; ?>
 <div class="<?=$cls?> menu"><a href="<?=$v_menuPath?>/02/index.php">02. フォームのPOST</a></div>
<?php $cls = ''; if(strpos($uri,'/03/')) $cls = 'crrtMenu'; ?>
 <div class="<?=$cls?> menu"><a href="<?=$v_menuPath?>/03/index.php">03. フォームのPOST2</a></div>
<?php $cls = ''; if(strpos($uri,'/04/')) $cls = 'crrtMenu'; ?>
 <div class="<?=$cls?> menu"><a href="<?=$v_menuPath?>/04/index.php">04. 送信データ指定</a></div>
<?php $cls = ''; if(strpos($uri,'/05/')) $cls = 'crrtMenu'; ?>
 <div class="<?=$cls?> menu"><a href="<?=$v_menuPath?>/05/index.php">05. onClickメソッド</a></div>
<?php $cls = ''; if(strpos($uri,'/06/')) $cls = 'crrtMenu'; ?>
 <div class="<?=$cls?> menu"><a href="<?=$v_menuPath?>/06/index.php">06. 送信後の自動処理</a></div>
<?php $cls = ''; if(strpos($uri,'/07/')) $cls = 'crrtMenu'; ?>
 <div class="<?=$cls?> menu"><a href="<?=$v_menuPath?>/07/index.php">07. 送信後の自動処理2</a></div>
<?php $cls = ''; if(strpos($uri,'/08/')) $cls = 'crrtMenu'; ?>
 <div class="<?=$cls?> menu"><a href="<?=$v_menuPath?>/08/index.php">08. 送信後の自動処理3</a></div>
<?php $cls = ''; if(strpos($uri,'/09/')) $cls = 'crrtMenu'; ?>
 <div class="<?=$cls?> menu"><a href="<?=$v_menuPath?>/09/index.php">09. 前処理・後処理</a></div>
<?php $cls = ''; if(strpos($uri,'/09a/')) $cls = 'crrtMenu'; ?>
 <div class="<?=$cls?> menu"><a href="<?=$v_menuPath?>/09a/index.php">09a. 前後処理<span style="font-size:12px;">（コールバック）</span></a></div>
<?php $cls = ''; if(strpos($uri,'/10/')) $cls = 'crrtMenu'; ?>
 <div class="<?=$cls?> menu"><a href="<?=$v_menuPath?>/10/index.php">10. 前処理・後処理2</a></div>
<?php $cls = ''; if(strpos($uri,'/11/')) $cls = 'crrtMenu'; ?>
 <div class="<?=$cls?> menu"><a href="<?=$v_menuPath?>/11/index.php">11. クロスサイト 許可あり</a></div>
<?php $cls = ''; if(strpos($uri,'/12/')) $cls = 'crrtMenu'; ?>
 <div class="<?=$cls?> menu"><a href="<?=$v_menuPath?>/12/index.php">12. クロスサイト JSONP</a></div>
<?php $cls = ''; if(strpos($uri,'/13/')) $cls = 'crrtMenu'; ?>
 <div class="<?=$cls?> menu"><a href="<?=$v_menuPath?>/13/index.php">13. クロスサイト Preflight</a></div>
</div>