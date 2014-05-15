$(document).ready( function(){
  console.log("ready to login baby?")
  $("#login-username-selection").chosen({
    width: "300px",
    placeholder_text_single: "Start typing your username"
  }).on("change", function(){
      var username = $("#login_username_selection_chosen span").text();
      var newActionLink = "/login/"+ username + "/send_login_link"
      $("#login-form").attr("action", newActionLink)
  });

});
