
<?php
include('Template_login.html');

session_start();
error_reporting(1);


?>
<html lang="en">
<head>
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
		#forgotpwd{
			display: block;
			width: 200px;
			text-align: right;

		}
		* {
			box-sizing: border-box;
		}
	</style>

	<script type='text/javascript' src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

	<script type="text/javascript">

	$(document).ready(function(){


		$("#email").change(function(){

				var email = $(this).val()
				$.ajax({

					url: 'session.php',
					method: 'post',
					data: 'email=' + email,

					})


		})
	})
</script>

</head>
    <body>
			<div style="position:absolute; left:25%; top:10%"> <img src="background_login1.jpg" width=900 height="500"> </div>
		<form id="user_info" method="post" action="Login_Step2.php">
			<div>
				<label for="email">Email ID:</label>
				<input type="text" id="email" name="email">


			<div>
				<label for="user_password">Password:</label>
				<input type="Password" id="user_password" name="user_password">

			</div>
			<div>


				<a href="./forgotpwd.php" id="forgotpwd" >Forgot password?</a>
			</div>
			<div id="user_submit">
				<button type="submit">Submit</button>
			</div>
			<div id="Message">


			</div>

		</form>
	</body>
</html>
