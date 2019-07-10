<?php
include('session.php');
//require('PHPMailer/PHPMailerAutoload.php');
session_start();
$email=$_SESSION['email'];
echo "welcome".$_SESSION['email'];

echo "hi";

$servername = 'localhost';
$username = 'root';
$password = '';

// Create connection
$con = new mysqli($servername, $username, $password, "website");

// Check connection
if ($con->connect_error) {
    die("Connection failed: " . $con->connect_error);
}
//echo "Connected successfully";
$sql = "SELECT * FROM users WHERE email='$email'";
$result=mysqli_query($con,$sql);
if (!result)
		{
	die('Error: ' . mysqli_error($con));
		}



if(mysqli_num_rows($result) == 1){


$pass = rand(999, 99999);

  $headers  = "From: Friendspace admin <kurrasravya41@gmail.com>\r\n";
  $headers .= "Reply-To: Siddharth Jain <kurrasravya41@gmail.com>\r\n";
  $headers .= "Return-Path: kurrasravya41@gmail.com\r\n";
  $headers .= "Bcc: Siddharth Jain <kurrasravya41@gmail.com>\r\n";
  $headers .= "PHP/" . phpversion();



  $to = "kurrasravya41@gmail.com";



  $subject="Password Rest for your account";


  $mailcontent="Your Temporary Password is ".$pass;
  mail($to,$subject,$mailcontent,$headers);
   $sql1 = "update users set password=$pass WHERE Email='$email'";
   $result1=mysqli_query($con,$sql1);

    header("location: resetpwd.php");

//
//
// require 'PHPMailer/PHPMailerAutoload.php';
//
//
// $mail = new PHPMailer;
// echo "hi";
//
// $mail->SMTPDebug = 4;                               // Enable verbose debug output
//
// $mail->isSMTP();                                      // Set mailer to use SMTP
// $mail->Host = 'smtp1.gmail.com';  // Specify main and backup SMTP servers
// $mail->SMTPAuth = true;                               // Enable SMTP authentication
// $mail->Username = 'kurrasravya41@gmail.com';                 // SMTP username
// $mail->Password = '';                           // SMTP password
// $mail->SMTPSecure = 'tls';                            // Enable TLS encryption, `ssl` also accepted
// $mail->Port = 465;                                    // TCP port to connect to
//
// $mail->setFrom('kurrasravya41@gmail.com', 'Mailer');
// $mail->addAddress('kurrasravya41@gmail.com', 'Joe User');     // Add a recipient
//            // Name is optional
// $mail->addReplyTo('kurrasravya41@gmail.com');
//
//
// // $mail->addAttachment('/var/tmp/file.tar.gz');         // Add attachments
// // $mail->addAttachment('/tmp/image.jpg', 'new.jpg');    // Optional name
// $mail->isHTML(true);                                  // Set email format to HTML
//
// $mail->Subject = 'Here is the subject';
// $mail->Body    = 'This is the HTML message body <b>in bold!</b>';
// $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';
//
// if(!$mail->send()) {
//     echo 'Message could not be sent.';
//     echo 'Mailer Error: ' . $mail->ErrorInfo;
// } else {
//     echo 'Message has been sent';
// }
		}


?>
