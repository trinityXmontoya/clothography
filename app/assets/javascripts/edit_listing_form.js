$(document).ready( function() {

  $("#listing-form-product-info").css("display", "block");

  // CONDITION SELECTION
  $(".condition-select").on("click", function(){

    $(".selected-condition").removeClass("selected-condition")
    $(this).toggleClass("selected-condition");
    $("input#listing_condition").val($(this).data("name"));
  });

  $(".size-select").on("click",function(){
    $(".selected-size").removeClass("selected-size")
    $(this).toggleClass("selected-size");
    $("input#listing_size_id").val($(this).data("id"));
  })

  $("#listing_brand_id").chosen({width: "300px"});
});
