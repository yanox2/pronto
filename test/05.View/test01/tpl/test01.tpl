<?php
/* Copyright 2016 dodat */
/*---------------------------------------------------------------------------*
 * Test
 *      test01テンプレート
 *---------------------------------------------------------------------------*/

$type = $this->get('methodType');
include('../../etc/header.tpl');
?>

<div id="lay_center" class="col span_14" style="min-height:1000px; padding:30px;">
<header style="margin-bottom:20px; font-size:20px;">●ビュー（OnePane）</header>
<article style="font-size:14px;">

<div style="background-color:aliceblue;">
<div style="">methodType - <?=$type?></div>
<div style="margin:10px 0; font-size:14px; background-color:aliceblue;">template - tpl/test01.tpl</div>
</div>

</article>
</div>

<?php
include('tpl/right.tpl');
include('../../etc/footer.tpl');
?>
