<?php
/* Copyright 2016 dodat */
/*---------------------------------------------------------------------------*
 * Test
 *      トップページ
 *---------------------------------------------------------------------------*/
require_once('etc/path.inc');
require_once(C_INSTALL_PATH_TEST.'/testPronto/02.Environment/test01/sysdef_org.inc');

include('etc/header.tpl');
?>
<div id="lay_center" class="col span_19" style="min-height:1000px; padding:30px; background-color:#f3f3f4;">
<header style="font-size:16px;"></header>
<article>


<div style="margin:200px auto; text-align:center; color:#e9e9e9; font-size:50px; line-height:60px; font-weight:600;">Welcome to Sample Page.</div>

</article>
<div class="spacer" style="height:500px;"></div>
</div>

<?php
//include('etc/right.tpl');
include('etc/footer.tpl');
?>
