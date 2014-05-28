$(document).ready( function(){
  console.log("general listing form javascript loaded!")
  conditionSelection();
  addChosenJStoBrand();
  preventFormSubmissionOnEnter();
});

function addChosenJStoBrand(){
  $("#listing_brand_id").chosen({width: "300px"});
}

function preventFormSubmissionOnEnter(e)
{
  var form = $('#new_listing');
  form.bind("keyup keypress", function(e) {
  //prevent submit on enter but still allow enter in textarea
  if(e.which == 13 && e.target.nodeName != "TEXTAREA") return false;
})
}


function conditionSelection(){
  $(".condition-select").on("click", function(){
    // Add the selected-condition class and remove that class from any previously selected condition
    $(".selected-condition").removeClass("selected-condition");
    $(this).toggleClass("selected-condition");
    // Set this selected condition to the condition variable on the hidden field for the listing form
    $("input#listing_condition").val($(this).data("name"));
  });
}
