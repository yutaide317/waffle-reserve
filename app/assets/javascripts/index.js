$(function(){
  $("#form").on('change', function(e) {
    e.preventDefault();
  var TOTAL;
  TOTAL=0;//合計リセット

  $(".Selects__waffle").each(function() {

      var per = $(this).find('.Selects__waffle--fleaver').val();    //単価入力値取得
      var subtotal = per*150;                    //小計算出
      var SUBTOTAL = Math.round( subtotal );    //小計整数化

      // $(this).find('.Input_main__column--sub').val(SUBTOTAL);    //小計表示

      // if(!num || !per){                        //未入力の場合小計空欄
      //     $(this).find(".Input_main__column--sub").val('');
      // };
      if(SUBTOTAL){
          TOTAL = parseInt(SUBTOTAL)+TOTAL;        //合計額加算
          $(".Selects__waffle--total").val(TOTAL);        //合計表示
      }
    });
  });
});