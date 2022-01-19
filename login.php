<?php
session_start();
if (isset($_SESSION["username"])) {
    session_destroy();
}
include_once 'dbConnection.php';
ob_start();
$ref      = @$_GET['q'];
$username = $_POST['username'];
$password = $_POST['password'];

$username = stripslashes($username);
$username = addslashes($username);
$password = stripslashes($password);
$password = addslashes($password);
$password = md5($password);
$result = mysqli_query($con, "SELECT name, id FROM user WHERE username = '$username' and password = '$password'") or die('Error');
$count = mysqli_num_rows($result);
if ($count == 1) {
    while ($row = mysqli_fetch_array($result)) {
        $name = $row['name'];
		$iduser = $row['id'];
    }
    $_SESSION["name"]     = $name;
    $_SESSION["username"] = $username;
	$_SESSION["id"] = $iduser;
	ob_end_flush();
    header("location:account.php?q=1");
} else
	ob_end_flush();
    header("location:$ref?w=Wrong Username or Password");


?>