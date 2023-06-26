<?php
   $host = "localhost";
   $user = "root";
   $password = "";
   $db = "zeus";
   //connect to the database
   $conn = mysqli_connect($host,$user,$password,$db);

   if($conn->connect_error)
	{
		die("connection faild:" . $conn->connect_error);
	}



if( isset( $_POST['submit'])) {

$userName = $_POST["userName"];
$password = $_POST["password"];
$contct_no = $_POST["contct_no"];
$email = $_POST["email"];
$address = $_POST["address"];



$sql="INSERT INTO `register`(`userName`,`password`,`contct_no`,`email`,`address`
) 
       VALUES ('".$userName."','".$password."','".$contct_no."','".$email ."','".$address."')";
        mysqli_query($conn,$sql);
}

header("Location: login.html?insetion=pass");


?>

