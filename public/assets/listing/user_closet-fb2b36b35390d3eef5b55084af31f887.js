$(document).ready( function(){
  showAvailableListings();
  showSoldListings();
});

function showAvailableListings(){
  $("#available-listings").addClass("display-me")
  $("#available-listings-header").on("click",function(){
    $("div#sold-listings").removeClass("display-me")
    $("div#available-listings").addClass("display-me")
  });
};

function showSoldListings(){
  $("#sold-listings-header").on("click",function(){
    $("div#available-listings").removeClass("display-me")
    $("div#sold-listings").appendTo("#listing-display-box")
    $("div#sold-listings").addClass("display-me")
  });
}
;
