<?php
include("templete_profile_pic.php");
session_start();
$email=$_SESSION['email'];
echo "password reset for ".$_SESSION['email'];


?>
<html>
<head>


  <script type='text/javascript' src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="validate.js"></script>
  <script type="text/javascript"></script>
</head>
<body>
  <br>

<form id="user_info" method="post" action="resetpwd_step2.php">
  <div style="margin-Left: 400px; margin-Top: 100px;">
    <label for="reset">reset code:</label>
    <input type="text" id="reset" name="reset">


  <div>
    <label for="newpwd">Password:<br></label>
    <input type="Password" id="newpwd" name="newpwd">

  </div>

  <div id="user_submit">
    <button type="submit">Submit</button>
  </div>
  <div id="Message">


  </div>

</form>
</body>
</html>
