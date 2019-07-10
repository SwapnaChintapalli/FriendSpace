<?php
include("template.html");
session_start();
$email=$_SESSION['email'];
echo "password reset for ".$_SESSION['email'];
 if($_POST['reset'])
 {
   $servername = 'localhost';
   $username = 'root';
   $password = '';

   // Create connection
   $con = new mysqli($servername, $username, $password, "website");

   // Check connection
   if ($con->connect_error) {
       die("Connection failed: " . $con->connect_error);
   }
   //echo $_POST['reset'];
   $reset= mysqli_real_escape_string($con, $_POST['reset']);
   $newpwd=password_hash($_POST['newpwd'], PASSWORD_BCRYPT);
   echo $newpwd;

   $sql1 = "update users set password='$newpwd' WHERE Email='$email' and Password='$reset'";
   $result1=mysqli_query($con,$sql1);
    if($result1)
    {
      header("location: Login.php");

    }


 }
?>
