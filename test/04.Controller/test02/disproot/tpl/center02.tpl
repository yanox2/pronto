<?php
/* Copyright 2016 dodat */
/*---------------------------------------------------------------------------*
 * Test
 *      center02テンプレート
 *---------------------------------------------------------------------------*/

$type = $this->get('methodType');
include('../../etc/header.tpl');
?>

<div id="lay_center" class="col span_14" style="min-height:1000px; padding:30px;">
<header style="margin-bottom:20px; font-size:20px;">●コントローラ（ディスパッチあり）</header>
<article style="font-size:14px;">

<div style="background-color:aliceblue;">
<div style="">methodType - <?=$type?></div>
<div style="margin:10px 0; font-size:14px; background-color:aliceblue;">template - tpl/center02.tpl</div>
</div>

</article>
</div>

<?php
$root = \PR\SysEnv::getYourDispRoot();
include($root.'/tpl/right.tpl');
include('../../etc/footer.tpl');
?>
