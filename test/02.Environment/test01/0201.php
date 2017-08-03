<?php
/* Copyright 2016 dodat */
/*---------------------------------------------------------------------------*
 * Test
 *      sysdef_org.incの編集
 *---------------------------------------------------------------------------*/
require_once('../../etc/path.inc');
require_once('./sysdef_org.inc');

include('../../etc/header.tpl');
?>
<div id="lay_center" class="col span_14" style="min-height:1000px; padding:30px;">
<header style="margin-bottom:20px; font-size:20px;">●sysdef_org.incの編集</header>
<article style="font-size:14px;">

<?php
// システムパラメタ情報
\PR\SysEnv::println();
include('./params.tpl');
?>

</article>
</div>

<?php
include('../../etc/right.tpl');
include('../../etc/footer.tpl');
?>
