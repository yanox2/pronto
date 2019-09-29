<?php
/* Copyright 2013 dodat */
/*---------------------------------------------------------------------------*
 * Template
 *      fatal error
 *---------------------------------------------------------------------------*/

$msg = $this->get('message');
?>
<!DOCTYPE html>
<!-- 文字コード判別用 -->
<html lang="ja">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="robots" content="noindex,nofollow">
<title>error</title>
</head>

<body style="background-color:#f3f3f4;">
<div style="margin:0 auto; max-width:400px; padding-top:40px; text-align:center;">
<div style="font-size:16px; color:#676a6c !important;"><?=$msg?></div>
</div>
</body>
</html>
