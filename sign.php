<?php
include_once 'dbConnection.php';
ob_start();
$name     = $_POST['name'];
$name     = ucwords(strtolower($name));
$gender   = $_POST['gender'];
$username = $_POST['username'];
$phno     = $_POST['phno'];
$password = $_POST['password'];
$branch   = $_POST['branch'];
$rollno   = $_POST['rollno'];
$name     = stripslashes($name);
$name     = addslashes($name);
$name     = ucwords(strtolower($name));
$gender   = stripslashes($gender);
$gender   = addslashes($gender);
$username = stripslashes($username);
$username = addslashes($username);
$phno     = stripslashes($phno);
$phno     = addslashes($phno);
$password = stripslashes($password);
$password = addslashes($password);
$password = md5($password);
$clrname   = stripslashes($clrname);
$clrname   = addslashes($clrname);

$q3 = mysqli_query($con, "INSERT INTO user VALUES  (NULL,'$name', '$rollno','$branch','$gender' ,'$username' ,'$phno', '$password', '$clrname')");
if ($q3) {
    header("location:index.php?q8=Successfully registered. You may login now.");
} else {
    header("location:index.php?q7=Username already exists. Please choose another&name=$name&username=$username&gender=$gender&phno=$phno&branch=$branch&rollno=$rollno&clrname=$clrname");
}
ob_end_flush();
?>