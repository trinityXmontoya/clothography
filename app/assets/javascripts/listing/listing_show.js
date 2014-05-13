$(document).ready( function(){
  console.log("Listing show js ready baby!")

  $("#message-user-button").on("click", function(){
    $("#message-user-popout").toggleClass("message_box_display");
    console.log($(this));
  });

});
