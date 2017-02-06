<?php
/* Copyright 2016 dodat */
/*---------------------------------------------------------------------------*
 * Test
 *      フッタ
 *---------------------------------------------------------------------------*/
?>
</div>
</main>

<script type="text/JavaScript">
pronload.add(function(){
  prdebug.setLevel(1);
  try{
    var h = $(window).height();

  }catch(exp){
    prdebug.alert(exp);
  }

  $("#postId").click(function(){
    $("<form/>",{action:"0401.php?st=2",method:"post"})
      .append($("<input/>",{type:"hidden",name:"pd",value:"hello!!"}))
      .appendTo(document.body)
      .submit();
    //$.post("0401.php?st=2",{"pd":"hello!!"});
  });
  $("#ajaxId").click(function(){
    $.ajax({
      type: "get",
      url: "0401.php?st=3",
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
});
/*
var param = {
  url:$form.attr("action"),
  type:$form.attr("method"),
  async:false,
  cache:false,
  timeout:30000,
  dataType:"jsonp",
  jsonp:"jcbk",
  data:$form.serialize()
};
*/
</script>

</body>
</html>
