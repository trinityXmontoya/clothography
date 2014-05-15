$(document).ready( function(){

   $("#search-form-reset").on("click", function(){
     $(".search-field").val('')
   });

  $("#q_category_id_eq").chosen({
    width: "150px",
    search_contains: true,
  });

  $("#q_brand_id_eq").chosen({
    width: "200px",
    search_contains: true,
    allow_single_deselect: true,
  });

  $("#q_size_id_eq").chosen({
    width: "100px",
    search_contains: true,
    placeholder_text_multiple: "Sizes"
  });

  $("#q_condition_eq").chosen({
    width: "150px",
    search_contains: true,
    placeholder_text_multiple: "Condition"
  });

  $("#q_color_id_eq").chosen({
    width: "100px",
    search_contains: true,
    placeholder_text_multiple: "Colors"
  });

  $("#q_tag_id_eq").chosen({
    width: "100px",
    search_contains: true,
    placeholder_text_multiple: "Tags"
  })

});
