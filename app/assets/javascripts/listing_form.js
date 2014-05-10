$(".gender-select").on("click",function(){
  $(this).toggleClass("selected-gender");
  $("#listing-form-category").css("display", "block");

  $("#listing-form-product-info").css("display", "block");
})

$(".category-select").on("click",function(){
  $(this).toggleClass("selected-category");
  $("#listing-form-product-info").css("display", "block");
})
