$(document).ready( function(){
  clearEmailAndUsernameInputs();
  console.log("I'm here!");
});

function clearEmailAndUsernameInputs(){
  $('input#user_email').val('');
  $('input#user_username').val('');
};
