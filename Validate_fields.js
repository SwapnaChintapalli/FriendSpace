$(document).ready(function() {
  $("#name").after("<span id='uname'> </span>");
	$("#password").after("<span id='pwd'> </span>")
	$("#email").after("<span id='mail'> </span>");

  $("#name").focus(function(){
    $("#uname").removeClass('ok');
		$("#uname").removeClass('error');
		$("#uname").addClass('info');
		$("#uname").text("No white spaces");

  })
  $("#name").blur(function(){
    var name=$("#name").val();
    if(name=="")
    {
      $("#uname").removeClass('info')
      $("#uname").removeClass('error');
      $("#uname").removeClass('ok');
      $("#uname").text("");
    }
    else{
    var testExp= new RegExp(/[A-Za-z].*[0-9]|[0-9].*[A-Za-z]+$/);
    if(!testExp.test(name))
    {
      $("#uname").removeClass('ok')
      $("#uname").removeClass('info');
      $("#uname").addClass('error');
      $("#uname").text("name incorrect!");
    }
    else {
      $("#uname").removeClass('info')
      $("#uname").removeClass('error');
      $("#uname").removeClass('ok');
      $("#uname").text("");
    }
}

  })

  $("#password").focus
  (function(){
    $("#pwd").removeClass('ok');
    $("#pwd").removeClass('error');
    $("#pwd").addClass('info');
    $("#pwd").text("Should be atleast 6 characters");
  });
  $("#password").blur
  (function(){
    var testpwd= new RegExp(/^.(?=.{8,})((?=.[!@#$%^&()\-_=+{};:,<.>]){1})(?=.\d)((?=.[a-z]){1})((?=.[A-Z]){1}).*$/g);
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
  $("#email").focus
  (function(){
    $("#mail").removeClass('ok');
    $("#mail").removeClass('error');
    $("#mail").addClass('info');
    $("#mail").text("Enter valid Email format");
  });

  $("#email").blur
  (function(){
    var testEmail= new RegExp(/^([a-zA-Z0-9._-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/);
    var email = $("#email").val();
    if(email=="")
    {
      $("#mail").removeClass('info')
      $("#mail").removeClass('error');
      $("#mail").removeClass('ok');
      $("#mail").text("");
    }
    else
    {
    if(testEmail.test(email))
    {
      $("#mail").removeClass('error');
      $("#mail").removeClass('info');
      $("#mail").removeClass('ok');
      $("#mail").text("");
    }
    else
    {
      $("#mail").removeClass('info');
      $("#mail").removeClass('ok');
      $("#mail").addClass('error');
      $("#mail").text("Email incorrect!");

    }
  }


  });







});
