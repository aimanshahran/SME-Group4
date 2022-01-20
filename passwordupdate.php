<?php
include_once 'dbConnection.php';
session_start();
ob_start();
$username = $_SESSION['username'];
$password = $_POST['password'];
$password = stripslashes($password);
$password = addslashes($password);
$password = md5($password);
$newpassword = $_POST['newpassword'];
$cpassword = $_POST['cpassword'];

//Check new password and confirm password 
if($newpassword!=$cpassword){
	header("location:account.php?q=5&m=New Password not match with confirm password");
	exit();
}
$newpassword = stripslashes($newpassword);
$newpassword = addslashes($newpassword);
$newpassword = md5($newpassword);

//CHECK PASSWORD
$result = mysqli_query($con, "SELECT password FROM user WHERE username = '$username'") or die('Error');
$row = mysqli_fetch_array($result);
$oldpassword=$row['password'];

//CHECK IF PASSWORD SAME WITH OLD PASSWORD
if($oldpassword!=$password){
	header("location:account.php?q=5&m=Password not match with old password");
}else{
	$q3 = mysqli_query($con, "UPDATE user SET password='$newpassword' WHERE username='$username'");
	if ($q3) {
		header("location:account.php?q=5&e=Successfully changed");
	} else {
		header("location:index.php?q=5&e=Error updating your password. Please try again");
	}
}
ob_end_flush();
?>