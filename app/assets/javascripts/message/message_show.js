$(document).ready( function(){
  console.log("Listing show js ready baby!")

  $("#message-user-from-listing-button").on("click", function(){
    $("#message-user-from-listing-popout").toggleClass("display-me");
  });

  $("#message-user-from-closet-button").on("click", function(){
    $("#message-user-from-closet-popout").toggleClass("display-me");
  });

});
