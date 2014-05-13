$(document).ready( function(){
  console.log("make me an offer!")
  $("#make-offer-button").on("click", function(){
    $("#make-offer-display").toggleClass("display-me")
  })
});
