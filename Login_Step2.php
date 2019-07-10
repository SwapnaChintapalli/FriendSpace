<?php
if(!empty($_POST['email']))
{
// Start the session


$servername = 'localhost';
$username = 'root';
$password = '';
$con = new mysqli($servername, $username, $password, "website");

// Check connection
if ($con->connect_error) {
    die("Connection failed: " . $con->connect_error);
}
#echo "Connected successfully";


$email = mysqli_real_escape_string($con, $_POST['email']);
$userpass = mysqli_real_escape_string($con, $_POST['user_password']);

$sql = "SELECT * FROM users WHERE email='$email'";


// $stmt = $con->prepare('SELECT * FROM employees WHERE name = ?');
// $stmt->bind_param('s', $email); // 's' specifies the variable type => 'string'
//
// $result=$stmt->execute();
$result=mysqli_query($con,$sql);
if (!result)
		{
	die('Error: ' . mysqli_error($con));
		}

// $row = $result->fetch_assoc()

	if (mysqli_num_rows($result) > 0)
	{
		$row = mysqli_fetch_array($result);
		$dbpass = $row['Password'];

    if (password_verify($userpass, $dbpass))
    {
      echo 'success';
	  session_start();
      $_SESSION["user"] =  $row['Email'];
      $_SESSION["user_id"] =  $row['user_id'];
      $adminUser =  $row['adminUser'];
	  if($adminUser){
		  header("Location: Admin/Profile/profile.php");
	  } else {
		header("Location: Profile/Profile.php");
	  }
    }
    else{

      echo 'Incorrect Password';
    }



	}
	else {
		echo 'Account with this email does not exist';
	}
}
?>-
