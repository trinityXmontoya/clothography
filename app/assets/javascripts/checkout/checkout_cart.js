$(document).ready(function() {
  console.log("checkout cart");

  $(".future-purchase").on("click",function(){
    $(this).appendTo($("#checkout-buy"));
  });

  $(".future-purchase").on("dblclick",function(){
    $(this).appendTo($("#checkout-cart"));
  });

});
