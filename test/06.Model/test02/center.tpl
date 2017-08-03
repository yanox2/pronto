<?php
/* Copyright 2016 dodat */
/*---------------------------------------------------------------------------*
 * Test
 *      centerテンプレート
 *---------------------------------------------------------------------------*/
include('../../etc/header.tpl');
?>

<div id="lay_center" class="col span_14" style="min-height:1000px; padding:30px;">
<header style="margin-bottom:20px; font-size:20px;">●Model - POSTチェック</header>
<article style="font-size:14px;">

<?php
if(!empty($msg)){
	print '<div style="width:500px; padding:10px; background-color:lightpink;">'.$msg.'</div>'."\n";
}else{
	print '<div style="width:500px; padding:10px; background-color:lightgreen;">All OK!</div>'."\n";
}
?>

<div style="width:500px; margin:10px 0; background-color:aliceblue;">
<form id="form_update" name="form_update" method="post" action="0602.php">
<table>
<tr><td style="font-weight:bold;">Numeric</td><td><?=\PR\INPTAG($cntr,'iNumeric');?></td></tr>
<tr><td style="font-weight:bold;">Float</td><td><?=\PR\INPTAG($cntr,'fFloat');?></td></tr>
<tr><td style="font-weight:bold;">Alphabet</td><td><?=\PR\INPTAG($cntr,'sAlphabet');?></td></tr>
<tr><td style="font-weight:bold;">AlphaNumeric</td><td><?=\PR\INPTAG($cntr,'sAlphaNumeric');?></td></tr>
<tr><td style="font-weight:bold;">Text</td><td><?=\PR\INPTAG($cntr,'sText');?></td></tr>
<tr><td style="font-weight:bold;">Password</td><td><?=\PR\INPTAG($cntr,'sPassword');?></td></tr>
<tr><td style="font-weight:bold;">Url</td><td><?=\PR\INPTAG($cntr,'sUrl');?></td></tr>
<tr><td style="font-weight:bold;">EMail</td><td><?=\PR\INPTAG($cntr,'sEMail');?></td></tr>
<tr><td style="font-weight:bold;">PostCode</td><td><?=\PR\INPTAG($cntr,'sPostCode');?></td></tr>
<tr><td style="font-weight:bold;">Tel</td><td><?=\PR\INPTAG($cntr,'sTel');?></td></tr>
<tr><td style="font-weight:bold;">Date</td><td><?=\PR\INPTAG($cntr,'iDate');?></td></tr>
<tr><td style="font-weight:bold;">Domain</td><td><?=\PR\INPTAG($cntr,'sDomain');?></td></tr>
</table>
<input type="submit" name="post_submit" value="送信">
</form>
</div>

</article>
</div>

<?php
include('../../etc/right.tpl');
include('../../etc/footer.tpl');
?>
