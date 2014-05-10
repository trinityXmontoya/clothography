$(document).ready( function() {
  $(".gender-select").on("click",function(){

    if ($(".selected-gender").length) {
      $(".selected-gender").removeClass("selected-gender")
    }

    $(this).toggleClass("selected-gender");
    $("#listing-form-category").css("display", "block");
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
  });


  $(".condition-select").on("click", function(){

    if ($(".selected-condition").length) {
      $(".selected-condition").removeClass("selected-condition")
    }
    
    $(this).toggleClass("selected-condition");
    $("input#listing_condition").val($(this).data("name"));
  });

  // $(".condition-select").on("click", function(
  //
  // ))
});
