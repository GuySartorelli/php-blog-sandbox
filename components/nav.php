<?php
  //Checking whether a user is logged in
  $logged_in = false;
  if (isset($_COOKIE["localhostUser"])){
    $cookie = $_COOKIE["localhostUser"];
    $db = mysqli_connect("localhost", "myuser",	"mypass", "blogdb");
    if (!$db){
      //db connection error
      echo "<div class='alert alert-danger'>Error accessing login info from database!</div>";
    } else {
      $result = $db->query("SELECT name, email, cookie_expire FROM User WHERE cookie = '$cookie'");
      if ($result !== false) {
        $cookieValues = $result->fetch_array();
        if (!empty($cookieValues['name'])) {
          $logged_in = true;
          $username = $cookieValues['name'];
          $email = $cookieValues['email'];
          $cookieExpire = $cookieValues['cookie_expire'];
          if ($cookieExpire < time()+43200) { //less than 12 hrs to go
            $cookieExpire = time()+86400;
            $success = $db->query("UPDATE User SET cookie = '$cookie', cookie_expire = '$cookieExpire' WHERE email = '$email'");
            if (success){
              setcookie("localhostUser", $cookie, $cookieExpire, "/"); //renew for 24hrs
            }
          }
        }
      }
      mysqli_close($db);
    }
  }
?>

<?php
  //logging out
  if(isset($_GET['logout']) && isset($logged_in)){
    setcookie("localhostUser", "", time()-3600, "/");//tell browser the cookie expired
    unset($_COOKIE["localhostUser"]);
    $logged_in = false;
  }
?>

<?php
  //don't allow logged-in user to log in again or signup
  $redirect_if_logged_in = array("Login", "Signup");
  if ($logged_in && in_array($title, $redirect_if_logged_in)) {
    header('Location: /blog', true, 303);
    die();
  } else if (!$logged_in && $title === "New Blog Post") {
    header('Location: /admin/login.php', true, 303);
    die();
  }
?>

<!--Based on bootstrap templates-->
<!DOCTYPE html>
<html>
  <?php include "head.php" ?>
  <body>
    <?php if (!isset($_SERVER['HTACCESS'])): ?>
      <div class="alert alert-danger">
        htaccess not enabled on apache server! Some features may not behave as expected.
      </div>
    <?php endif; ?>
    <div class="wrapper">
      <nav class="navbar navbar-custom">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-navbar">
              <span class="sr-only">Toggle Navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/">Home</a>
          </div>

          <div class="collapse navbar-collapse" id="main-navbar">
            <ul class="nav navbar-nav">
              <li><a href="/blog">Blog</a></li>
              <?php if ($logged_in) {echo "<li><a href='/blog/new.php'>New Post</a></li>";}?>
              <li><a href="/about.php">About</a></li>
            </ul>

            <ul class="nav navbar-nav navbar-right">
              <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                  <?php if ($logged_in) {
                    echo $username;
                  } else {
                    echo "Admin";
                  }?>
                <span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <?php if ($logged_in) {
                    echo "<li><a href='?logout', onclick='logout()'>Logout</a></li>";
                  } else {
                    echo "<li><a href='/admin/login.php'>Login</a></li>";
                    echo "<li><a href='/admin/signup.php'>Signup</a></li>";
                  }?>
                </ul>
              </li>
            </ul>
          </div>
        </div>
      </nav>
      <div class="body-div container">
