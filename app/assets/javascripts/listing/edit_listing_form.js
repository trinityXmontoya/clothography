$(document).ready( function() {

  console.log("i'm alive!")

  $("#listing-form-product-info").css("display", "block");

  // CONDITION SELECTION
  $(".condition-select").on("click", function(){

    $(".selected-condition").removeClass("selected-condition")
    $(this).toggleClass("selected-condition");
    $("input#listing_condition").val($(this).data("name"));
  });

  $("#listing_brand_id").chosen({width: "300px"});
});
