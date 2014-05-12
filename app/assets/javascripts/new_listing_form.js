$(document).ready( function() {

  // GENDER SELECTION
  $(".gender-select").on("click",function(){
  // When a gender is selected, add the selected-gender class and remove that class from any previously selected gender
    $(".selected-gender").removeClass("selected-gender")
    $(this).toggleClass("selected-gender");

    // show the related categories for this gender, and hide the selections(category, size) from the previously selected gender
    $(".displayed-category").removeClass('displayed-category');
    $(".displayed-sizes").removeClass('displayed-category');
    $("#listing-form-product-info").css("display", "none");

      if ($(this).data("id")==1){
        $("#womens-categories").toggleClass('displayed-category');
      }
      else if ($(this).data("id")==2){
        $("#mens-categories").toggleClass('displayed-category');
      }

    // then set this selected gender to the gender_id variable on the hidden field for the listing form
    $("input#listing_gender_id").val($(this).data("id"));
  });

  // CATEGORY SELECTION
  $(".category-select").on("click",function(){
    // When a category is selected, add the selected-category class and remove that class from any previously selected category
    $(".selected-category").removeClass("selected-category")
    $(this).toggleClass("selected-category");

    // show the rest of the listing form
    $("#listing-form-product-info").css("display", "block");

    // show the related sizes for this category, and hide the sizes (if any) from the previously selected category
    $(".displayed-sizes").removeClass("displayed-sizes")
      if ($(this).data("id") == 10) {
        $("#jean-sizes").toggleClass("displayed-sizes")
      }
      else if ($(this).data("id") == 8) {
        $("#bottom-sizes").toggleClass("displayed-sizes")
      }
      else if ($(this).data("id")==11) {
        $("#shoe-sizes").toggleClass("displayed-sizes")
      }
      else {
        $("#standard-sizes").toggleClass("displayed-sizes")
      }

      // then set this selected gender to the gender_id variable on the hidden field for the listing form
      $("input#listing_category_id").val($(this).data("id"));
  });


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
