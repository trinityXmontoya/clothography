$(document).ready( function() {
  console.log("edit listing javascript loaded!")
  displayListingForm();
  addChosenJStoBrand();
  conditionSelection();
});

function addChosenJStoBrand(){
  $("#listing_brand_id").chosen({width: "300px"});
}

function displayListingForm(){
  $("#listing-form-product-info").css("display", "block");
}

function conditionSelection(){
  $(".condition-select").on("click", function(){
    // Add the selected-condition class and remove that class from any previously selected condition
    $(".selected-condition").removeClass("selected-condition");
    $(this).toggleClass("selected-condition");
    // Set this selected condition to the condition variable on the hidden field for the listing form
    $("input#listing_condition").val($(this).data("name"));
  });
