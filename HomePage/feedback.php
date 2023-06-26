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

$name = $_POST["name"];
$email = $_POST["email"];
$desc = $_POST["desc"];




$sql="INSERT INTO `feedback`(`name`,`email`,`desc`
) 
       VALUES ('".$name."','".$email."','".$desc."')";
        mysqli_query($conn,$sql);
}

header("Location: HomePage.html?insetion=pass");


?>