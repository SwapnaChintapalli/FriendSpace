<?php
include('Template_login.php');
echo '*All the feilds are mandatory';
session_start();
error_reporting(1);

if(empty($_POST['name'])||($_POST['gender']=="")||empty($_POST['email'])||empty($_POST['bday'])||empty($_POST['password'])||strlen($_POST['password'])>5)
{
  header("location: Signup.php");
}


if(!empty($_POST['email']))
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
//echo "Connected successfully";

$name = mysqli_real_escape_string($con, $_POST['name']);
$gender = mysqli_real_escape_string($con, $_POST['gender']);
$email = mysqli_real_escape_string($con, $_POST['email']);
$bday = mysqli_real_escape_string($con, $_POST['bday']);
#$avatar = mysqli_real_escape_string($con, $_POST['avatar']);
$name1 = str_replace(' ', '', $name);
$sql = "SELECT * FROM users WHERE email='$email'";
$result=mysqli_query($con,$sql);
if (!result)
		{
	die('Error: ' . mysqli_error($con));
		}

    if (mysqli_num_rows($result) == 0)
    {

if($name1==$name)
{
$userpass = password_hash($_POST['password'], PASSWORD_BCRYPT);


  // alert('Some of the feilds are empty');
//header('Location: '.$_SERVER['PHP_SELF']);

// $sql="INSERT INTO users (Name, Email, Password, Gender, Birthday_Date) VALUES "
//         . "('$name', '$email', '$userpass', '$gender', '$bday')";



        $stmt = $con->prepare("INSERT INTO users (Name, Email, Password, Gender, Birthday_Date) VALUES (?,?,?,?,?)");
        $stmt->bind_param("sssss", $name, $email, $userpass,$gender,$bday);
        $exec=$stmt->execute();
        if ( false===$exec ) {
  die('execute() failed: ' . htmlspecialchars($stmt->error));
}


// if (!mysqli_query($con,$sql))
//         {
//         die('Error: ' . mysqli_error($con));
//         }

        session_start();
        $_SESSION['tempuser']=$email;
        if(isset($_SESSION['tempuser']))
        {
        header("location: profile_pic_upload.php");
      }
//echo "1 record added";
}
else{
    header("location: Signup.php");
}
}}
else{
    header("location: Signup.php");
}


?>
