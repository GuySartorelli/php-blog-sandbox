<?php

  $valid = false;
  #for signing up a new user
  if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['title']) && isset($_POST['body'])) {
      $valid = true;
      $db = mysqli_connect("localhost", "myuser",	"mypass", "blogdb");
      if (!$db){
        echo -1;
      } else {
        $cookie = $_COOKIE["localhostUser"];
        $result = $db->query("SELECT email FROM User WHERE cookie = '$cookie'");
        if ($result !== false) {
          $email = $result->fetch_array()['email'];
          $title = mysqli_escape_string($db, $_POST['title']);
          $body = mysqli_escape_string($db, $_POST['body']);
          $time = (new DateTime('NOW'))->format('Y-m-d H:m:s');
          $success = $db->query("INSERT INTO Article VALUES ('$title', '$email', '$body', '$time')");
          echo $success;
        }
        mysqli_close($db);
      }
    }
  }

  #for verifying if an existing user with that email address exists
  else if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    if (isset($_GET['title'])) {
      $valid = true;
      $db = mysqli_connect("localhost", "myuser",	"mypass", "blogdb");
      if (!$db){
        echo -1;
      } else {
        $title = mysqli_escape_string($db, $_GET['title']);
        $response = $db->query("SELECT title FROM Article WHERE title = '$title'");
        mysqli_close($db);
        echo $response->num_rows;
      }
    }
  }

  if (!$valid){
    http_response_code(403); //not valid so wasn't sent by a valid client
    include('../components/403.php');
    die();
  }
?>
