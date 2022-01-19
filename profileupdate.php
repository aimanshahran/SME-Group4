<?php
include_once 'dbConnection.php';
session_start();
ob_start();
if (!(isset($_SESSION['username']))) {
    header("location:index.php");
} else {
    $name     = $_SESSION['name'];
    $username = $_SESSION['username'];
    $iduser = $_SESSION['id'];
	ob_start();
	$name     = $_POST['name'];
	$name     = ucwords(strtolower($name));
	$gender   = $_POST['gender'];
	$phno     = $_POST['phno'];
	//$password = $_POST['password'];
	$branch   = $_POST['branch'];
	$clrname = $_POST['clrname'];
	$name     = stripslashes($name);
	$name     = addslashes($name);
	$name     = ucwords(strtolower($name));
	$gender   = stripslashes($gender);
	$gender   = addslashes($gender);
	$phno     = stripslashes($phno);
	$phno     = addslashes($phno);
	//$password = stripslashes($password);
	//$password = addslashes($password);
	//$password = md5($password);
	$clrname   = stripslashes($clrname);
	$clrname   = addslashes($clrname);

	$q3 = mysqli_query($con, "UPDATE user SET name='$name', gender='$gender', branch='$branch', clrname='$clrname', phno='$phno' WHERE username='$username' AND id='$iduser'");

	if ($q3) {
		$_SESSION['name'] = $name;
		header("location:account.php?q=4&m=Profile Successfully Update.");
	} else {
		header("location:account.php?q=4&e=Error.");
	}
ob_end_flush();}
?>