<?php
/**
 * View
 * HTMLヘッダー
 *
 */

$v_assetsURI = C_ASSETS_URI;

?>
<!doctype html>
<html lang="ja">
<!-- 文字コード判別 -->
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet">
<link href="<?=$v_assetsURI?>/bootstrap.min.css" rel="stylesheet">
<link href="<?=$v_assetsURI?>/animate.css" rel="stylesheet">
<link href="<?=$v_assetsURI?>/pronto.css" rel="stylesheet">
<link href="<?=$v_assetsURI?>/demo_style.css" rel="stylesheet">
<script src="<?=$v_assetsURI?>/jquery-3.2.1.min.js"></script>
<script src="<?=$v_assetsURI?>/bootstrap.min.js"></script>
<script src="<?=$v_assetsURI?>/pronto.js?t=<?=time();?>"></script>
<title>Pronto - ajax script</title>
</head>
<body>
<div id="prTag_maskAll" class="prSt_maskAll"></div>
<div id="prTag_loader" class="prSt_loader">
 <div class="loader"></div>
</div>