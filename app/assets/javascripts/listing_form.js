$(document).ready( function() {
  $(".gender-select").on("click",function(){

    if ($(".selected-gender").length) {
      $(".selected-gender").removeClass("selected-gender")
    }

    $(this).toggleClass("selected-gender");

    if ($(this).data("id")==1){
      $("#mens-categories").css("display","none");
      $("#womens-categories").css("display", "block");
    }
    else if ($(this).data("id")==2){
      $("#womens-categories").css("display","none");
      $("#mens-categories").css("display", "block");
    }


    $("#listing-form-product-info").css("display", "block");

    $("input#listing_gender_id").val($(this).data("id"));
  });

  $(".category-select").on("click",function(){

    if ($(".selected-category").length) {
      $(".selected-category").removeClass("selected-category")
    }

    $(this).toggleClass("selected-category");
    $("#listing-form-product-info").css("display", "block");

    $("input#listing_category_id").val($(this).data("id"));

    if ($(this).data("id") == 8) {
      $("#jean-sizes").css("display","block")
    }
    else if ($(this).data("id") == 10) {
      $("#bottoms-sizes").css("display","block")
    }
    else {
      $("#standard-sizes").css("display","block")
    }

  });


  $(".condition-select").on("click", function(){

    if ($(".selected-condition").length) {
      $(".selected-condition").removeClass("selected-condition")
    }

    $(this).toggleClass("selected-condition");
    $("input#listing_condition").val($(this).data("name"));

  });

  $(".size-select").on("click",function(){
    if ($(".selected-size").length) {
      $(".selected-size").removeClass("selected-size")
    }

    $(this).toggleClass("selected-size");
    $("input#listing_size_id").val($(this).data("id"));

  })
  // $(".condition-select").on("click", function(
  //
  // ))

  $("#brand_id").chosen({width: "300px"});
});
