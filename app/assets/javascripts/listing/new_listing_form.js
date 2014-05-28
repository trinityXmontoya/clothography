$(document).ready( function(){
  console.log("new listing form javascript loaded!")
  loadSelectionOptions();
});


function loadSelectionOptions(){
  genderSelection();
  categorySelection();
  sizeSelection();
}


function genderSelection(){
  $(".gender-select").on("click",function(){
  // Add the selected-gender CSS class and remove that class from any previously selected gender
  $(".selected-gender").removeClass("selected-gender")
  $(this).toggleClass("selected-gender");

  // Show the related categories for this gender, and hide the selections(category, size) from the previously selected gender
  $(".displayed-category").removeClass('displayed-category');
  $(".displayed-sizes").removeClass('displayed-sizes');
  $("#listing-form-product-info").css("display", "none");
  if ($(this).data("name")=="Women's"){
    $("#womens-categories").toggleClass('displayed-category');
  }
  else if ($(this).data("name")=="Men's"){
    $("#mens-categories").toggleClass('displayed-category');
  }

  // Set this selected gender to the gender_id variable on the hidden field for the listing form
  $("input#listing_gender_id").val($(this).data("id"));
  });
}

function categorySelection(){
  $(".category-select").on("click",function(){
  // Add the selected-category class and remove that class from any previously selected category
  $(".selected-category").removeClass("selected-category");
  $(this).toggleClass("selected-category");

  // Show the rest of the listing form
  $("#listing-form-product-info").css("display", "block");

  // Show the related sizes for this category, and hide the sizes (if any) from the previously selected category
  $(".displayed-sizes").removeClass("displayed-sizes");
    if ($(this).data("name") == "Jeans") {
      $("#jean-sizes").toggleClass("displayed-sizes");
    }
    else if ($(this).data("name") == "Bottoms") {
      $("#bottom-sizes").toggleClass("displayed-sizes");
    }
    else if ($(this).data("name")=="Shoes") {
      $("#shoe-sizes").toggleClass("displayed-sizes");
    }
    else {
      $("#standard-sizes").toggleClass("displayed-sizes");
    }

  // Set this selected gender to the gender_id variable on the hidden field for the listing form
  $("input#listing_category_id").val($(this).data("id"));
  });
}

function sizeSelection(){
  $(".size-select").on("click",function(){
    // Add the selected-size class and remove that class from any previously selected size
    $(".selected-size").removeClass("selected-size");
    $(this).toggleClass("selected-size");
    // Set this selected size to the size_id variable on the hidden field for the listing form
    $("input#listing_size_id").val($(this).data("id"));
  });
}

