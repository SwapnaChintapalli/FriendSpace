$(document).ready(function() {

	$("#newpwd").after("<span id='pwd'> </span>")



  $("#password").focus
	(function(){
		$("#pwd").removeClass('ok');
		$("#pwd").removeClass('error');
		$("#pwd").addClass('info');
		$("#pwd").text("Password should be atleast 6 characters long");
	});

  $("#password").blur
  (function(){
    var testpwd= new RegExp(/^([a-zA-Z0-9._-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/);
    var password = $("#password").val();
    if(!password)
    {
      $("#pwd").removeClass('info')
      $("#pwd").removeClass('error');
      $("#pwd").removeClass('ok');
      $("#pwd").text("");
    }
    else
      {
        if(password.length<6)
    {
      $("#pwd").removeClass('info');
      $("#pwd").addClass('error');
      $("#pwd").removeClass('ok');
      $("#pwd").text("password incorrect!");
    }
    else
    {

      $("#pwd").removeClass('info');
      $("#pwd").removeClass('error');
      $("#pwd").removeClass('ok');
      $("#pwd").text("");
    }
  }
  });



});
