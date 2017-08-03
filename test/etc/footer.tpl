<?php
/* Copyright 2016 dodat */
/*---------------------------------------------------------------------------*
 * Test
 *      フッタ
 *---------------------------------------------------------------------------*/
?>
</main>

<script type="text/JavaScript">
pronload.add(function(){
  prdebug.setLevel(1);
  try{
    var h = $(window).height();

  }catch(exp){
    prdebug.alert(exp);
  }
<?
$rpath = \PR\Request::$sPATH;
$rfile = null;
if(strpos($rpath,'04.Controller') !== false){
	if(strpos($rpath,'test01') !== false){
		$rfile = '0401';
	}else if(strpos($rpath,'test02') !== false){
		$rfile = '0402';
	}
}
if(!empty($rfile)){
?>
  $("#postId").click(function(){
    $("<form/>",{action:"<?=$rfile?>.php?st=2",method:"post"})
      .append($("<input/>",{type:"hidden",name:"pd",value:"hello!!"}))
      .appendTo(document.body)
      .submit();
    //$.post("<?=$rfile?>.php?st=2",{"pd":"hello!!"});
  });
  $("#ajaxId").click(function(){
    $.ajax({
      type: "get",
      url: "<?=$rfile?>.php?st=3",
      async:false,
      cache:false,
      timeout:30000,
      dataType:"jsonp",
      jsonp:"jcbk",
      data: {"pd":"hello!!"},
    }).done(function(data,status,xhr){
      // 通信成功時の処理
      alert(status+" "+" "+data.message+" "+data.methodType+"!!");
    }).fail(function(xhr,status,error){
      // 通信失敗時の処理
    }).always(function(arg1,status,arg2){
      // 通信完了時の処理
    });
  });
<? } ?>
});
</script>

</body>
</html>
