$(document).ready( function(){
  console.log("Message button js ready baby!")
  displayMessageBox();
});

function displayMessageBox(){
  $("#message-user-from-listing-button").on("click", function(){
    $("#message-user-from-listing-popout").toggleClass("display-me");
});
  $("#message-user-from-closet-button").on("click", function(){
    $("#message-user-from-closet-popout").toggleClass("display-me");
  });
}
