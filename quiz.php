<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <link rel="icon" href="favicon.ico" type="image/icon" sizes="16x16">
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Skill's Breaker</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/bootstrap-theme.min.css" />
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/font.css">
    <script src="js/jquery.js" type="text/javascript"></script>


    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <?php
    if (@$_GET['w']) {
        echo '<script>alert("' . @$_GET['w'] . '");</script>';
    }
    ?>

</head>
<?php
include_once 'dbConnection.php';
?>

<body>
    <div class="header">
        <div class="row">
            <div class="col-lg-6">
                <span class="logo">Skill's Breaker</span>
            </div>
            <div class="col-md-4 col-md-offset-2">
                <?php
                //include_once 'dbConnection.php';
                session_start();
                if (!(isset($_SESSION['username']))) {
                    header("location:index.php");
                } else {
                    $name     = $_SESSION['name'];
                    $username = $_SESSION['username'];

                    //include_once 'dbConnection.php';
                    echo '<span class="pull-right top title1" >
                    <span style="color:white">
                    <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                    &nbsp;&nbsp;&nbsp;&nbsp;Hello,</span> 
                    <span class="log log1" style="color:lightyellow">' . $username . '&nbsp;&nbsp;|&nbsp;&nbsp;
                    <a href="logout.php?q=account.php" style="color:lightyellow">
                    <span class="glyphicon glyphicon-log-out" aria-hidden="true"></span>&nbsp;Logout</button></a></span>';
                }
                ?>
            </div>
        </div>
    </div>
    <nav class="navbar navbar-default title1">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li <?php
                        if (@$_GET['q'] == 1)
                            echo 'class="active"';
                        ?>><a href="account.php?q=1"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>&nbsp;Home<span class="sr-only">(current)</span></a></li>
                    <li <?php
                        if (@$_GET['q'] == 2)
                            echo 'class="active"';
                        ?>><a href="account.php?q=2"><span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span>&nbsp;My History</a></li>
                    <li <?php
                        if (@$_GET['q'] == 3)
                            echo 'class="active"';
                        ?>><a href="account.php?q=3"><span class="glyphicon glyphicon-stats" aria-hidden="true"></span>&nbsp;Leaderboard</a></li>
                </ul>

            </div>
        </div>
    </nav>
    <?php
    $q = mysqli_query($con, "SELECT * FROM history WHERE username='$username' AND eid='$_GET[eid]' ") or die('Error197');

    if (mysqli_num_rows($q) > 0) {
        $q = mysqli_query($con, "SELECT * FROM history WHERE username='$_SESSION[username]' AND eid='$_GET[eid]' ") or die('Error197');
        while ($row = mysqli_fetch_array($q)) {
            $timel  = $row['timestamp'];
            $status = $row['status'];
        }
        $q = mysqli_query($con, "SELECT * FROM quiz WHERE eid='$_GET[eid]' ") or die('Error197');
        while ($row = mysqli_fetch_array($q)) {
            $ttimel  = $row['time'];
            $qstatus = $row['status'];
        }
        $remaining = (($ttimel * 60) - ((time() - $timel)));
        if ($status == "ongoing" && $remaining > 0 && $qstatus == "enabled") {
            $_SESSION['6e447159425d2d'] = "6e447159425d2d";
            header('location:account.php?q=quiz&step=2&eid=' . $_GET[$eid] . '&n=' . $_GET[$n] . '&t=' . $_GET[$t]);
        } else {
            $q = mysqli_query($con, "UPDATE history SET status='finished' WHERE username='$_SESSION[username]' AND eid='$_GET[eid]' ") or die('Error197');
            $q = mysqli_query($con, "SELECT * FROM history WHERE eid='$_GET[eid]' AND username='$_SESSION[username]'") or die('Error156');
            while ($row = mysqli_fetch_array($q)) {
                $s = $row['score'];
                $scorestatus = $row['score_updated'];
            }
            if ($scorestatus == "false") {
                $q = mysqli_query($con, "UPDATE history SET score_updated='true' WHERE username='$_SESSION[username]' AND eid='$_GET[eid]' ") or die('Error197');
                $q = mysqli_query($con, "SELECT * FROM rank WHERE username='$username'") or die('Error161');
                $rowcount = mysqli_num_rows($q);
                if ($rowcount == 0) {
                    $q2 = mysqli_query($con, "INSERT INTO rank VALUES(NULL,'$username','$s',NOW())") or die('Error165');
                } else {
                    while ($row = mysqli_fetch_array($q)) {
                        $sun = $row['score'];
                    }

                    $sun = $s + $sun;
                    $q = mysqli_query($con, "UPDATE `rank` SET `score`=$sun ,time=NOW() WHERE username= '$username'") or die('Error174');
                }
            }
            header('location:account.php?q=result&eid=' . $_GET[$eid]);
        }
    } else {
        $time = time();
        $q = mysqli_query($con, "INSERT INTO history VALUES(NULL,'$username','$_GET[eid]' ,'0','0','0','0',NOW(),'$time','ongoing','false')") or die('Error137');
        $_SESSION['6e447159425d2d'] = "6e447159425d2d";
        header('location:account.php?q=quiz&step=2&eid=' . $_GET["eid"] . '&n=' . $_GET["n"] . '&t=' . $_GET["t"]);
    }
    ?>
</body>

</html>