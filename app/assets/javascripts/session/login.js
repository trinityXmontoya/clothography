$(document).ready( function(){
  console.log("ready to login baby?");
  usernameSelection();
});

function usernameSelection(){
  // select user to send login link to
  $("#login-username-selection").chosen({
    placeholder_text_single: "Enter username"
  }).on("change", function(){
      var username = $("#login_username_selection_chosen span").text();
      var newActionLink = "/login/"+ username + "/send_login_link"
      $("#login-form").attr("action", newActionLink)
  });
}
