<?php
/**
 * View
 * トップページ
 *
 */

$v_assetsURI = 'pr_ajax/assets';

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
<title>Pronto - samples</title>
</head>
<body>
<div style="min-height:600px; padding:10px;">
<div class="fs-2">Pronto library Demo(Samples)</div>
<div style="position:relative; padding:10px; font-size:14px;">
 <div class="">
  <div><a href="pr_ajax/index.php">Ajax</a> - JavaScript</div>
  <div><a href="pr_view/index.php">View</a> - PHP</div>
  <div><a href="pr_ormapper/index.php">O/R Mapper</a> - PHP (pending)</div>
 </div>
</div>
</div>

</body>
</html>