<?php
/* Copyright 2013 dodat */
/*---------------------------------------------------------------------------*
 * Template
 *      fatal error
 *---------------------------------------------------------------------------*/

$oExp = $this->get('exp');
$code = $oExp->getCode();
$msg = $oExp->getMessage();
$caption = $oExp->getCaption();
if(empty($caption)) $caption = 'Error occured!';

?>
<!DOCTYPE html>
<!-- 文字コード判別用 -->
<html lang="ja">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="robots" content="noindex,nofollow">
<title></title>
</head>
<body>
<h1><?=$caption?></h1>
<p><?=$msg?></p>
</body>
</html>
