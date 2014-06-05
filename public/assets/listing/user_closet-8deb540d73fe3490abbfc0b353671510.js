$(document).ready( function(){
  console.log("Closet listing js loaded")
  showAllListings();
});

function showAllListings(){
  showAvailableListings();
  showSoldListings();
  showReservedListings();
}

function removeCurrentListingDisplay(){
  $(".closet-listings").removeClass("display-me");
}

function showAvailableListings(){
  $("#available-listings").addClass("display-me")
  $("#available-listings-header").on("click",function(){
    removeCurrentListingDisplay();
    $("div#available-listings").addClass("display-me")
  });
};

function showSoldListings(){
  $("#sold-listings-header").on("click",function(){
    removeCurrentListingDisplay();
    $("div#sold-listings").appendTo("#listing-display-box").addClass("display-me")
  });
};

function showReservedListings(){
  $("#reserved-listings-header").on("click",function(){
    removeCurrentListingDisplay();
    $("div#reserved-listings").appendTo("#listing-display-box").addClass("display-me")
  });
};
