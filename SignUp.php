
<?php
include('Template_login.html');
echo '*All the feilds are mandatory';
session_start();
error_reporting(1);


?>
<html>
    <head>
        <link href="Template_login.html" type="text/css" rel="stylesheet"/>
      <style>
        #user_info label{
          display: inline-block;
          width: 100px;
          text-align: right;
        }
        #user_submit{
          padding-left: 100px;
        }
        #user_info div{
          margin-top: 1em;
        }

        * {
          box-sizing: border-box;
        }

      </style>

      <script type='text/javascript' src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      <script src="Validate_field.js"></script>
      <script type="text/javascript">

      $(document).ready(function(){


        $("#email").change(function(){
          var email = $(this).val()
        document.getElementById("password").disabled = true;


        $.ajax({

          url: 'validate.php',
          method: 'post',
          data: 'email=' + email,
          success:function(data){
            if(data)
            {
            document.getElementById("password").disabled = false;
            }
            else{
              alert('Email already exists');
            }

            }
          })

      })
    })
    	</script>
      <link rel="stylesheet" href="validate.css">
    </head>
    <body>
     <div style="position:absolute; left:40%;"> <img src="background_2.jpg" width="700" height="400"> </div>
        <form id="user_info" method="post" action="SignUp_step2.php">
			<div>
				<label for="name">Name:</label>
				<input type="text" id="name" name="name">
            </div>
			<div>
				<label for="email">Email ID:</label>
				<input type="email" id="email" name="email">
			</div>
			<div>
				<label for="password">Password:</label>
				<input type="Password" id="password" name="password">

			</div>
      <div>
				<label for="gender">Gender:</label><br>
        <div style="margin-Left: 100px">
        <input type="radio" name="gender" value="male"> Male<br>
        <input type="radio" name="gender" value="female"> Female<br>
        <input type="radio" name="gender" value="other"/> Other<br>
      </div>


			</div>
      <div>
				<label for="bday">Birthday:</label>
        <input type="date" name="bday">

			</div>

			<div id="user_submit">
				<button type="submit" >Submit</button>
			</div>


			</div>
		</form>
    </body>
</html>
