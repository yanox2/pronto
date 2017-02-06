<?php
/* Copyright 2013 dodat */
/*---------------------------------------------------------------------------*
 * Template
 *      firstly
 *---------------------------------------------------------------------------*/

$data = $this->getAll();

?>
<!DOCTYPE html>
<!-- 文字コード判別用 -->
<html lang="ja">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="robots" content="noindex,nofollow">
<title>firstly</title>
</head>

<body>
<div class="" style="">
<h3 style="color:blue;">System Environment</h3>
<?php
SysEnv::println();
?>

<br>
<h3 style="color:blue;">Request</h3>
<?php
Request::println();
?>

<?php
if(!empty($data)){
	print '<br>'."\n";
	print '<h3 style="color:blue;">Values</h3>'."\n";
	print '<pre>'."\n";
	print_r($data);
	print '</pre>'."\n";
}
?>

</div>
</body>
</html>
