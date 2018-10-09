<?php $title = "Blog" ?>
<?php
  if (isset($_GET['title'])){
    if (empty($_GET['title'])){
      http_response_code(404); //nothing found so 404
      include('../components/404.php');
      die();
    } else {

      //Get a specific post to display
      $db = mysqli_connect("localhost", "myuser",	"mypass", "blogdb");
      if (!$db){
        //db connection error
        echo "<div class='alert alert-danger'>Error accessing blog entries from database!</div>";
      } else {
        $title = urldecode($_GET['title']);
        $result = $db->query("SELECT name, title, body, submitted FROM Article NATURAL JOIN User WHERE title = '$title'");
        if ($result === false || $result->num_rows === 0) {
          http_response_code(404); //nothing found so 404
          include('../components/404.php');
          die();
        } else {
          $post = $result->fetch_array();
          $display = "one";
        }
        mysqli_close($db);
      }
    }

  } else {
    //Get all posts to display preview
    $db = mysqli_connect("localhost", "myuser",	"mypass", "blogdb");
    if (!$db){
      //db connection error
      echo "<div class='alert alert-danger'>Error accessing blog entries from database!</div>";
    } else {
      $result = $db->query("SELECT name, title, body, submitted FROM Article NATURAL JOIN User");
      if ($result !== false) {
        $posts = $result->fetch_all();
        $display = "all";
      }
      mysqli_close($db);
    }
  }
?>

<?php include "../components/nav.php" ?>
<h1>Blog</h1>

<?php
  if ($display === "all" && !empty($posts)){ //display preview of all posts
    $shortenedPost = 100;
    foreach ($posts as $post) {
      $name = $post[0];
      $title = $post[1];
      $encoded_title = urlencode($title);
      $body = $post[2];
      $date = $post[3];
      echo "<div class='blog-entry'><span class='blog-title'><a href='?title=$encoded_title'>$title</a></span>\n";
      echo "<br><span class='blog-name'>by $name </span>";
      echo "<span class='blog-date'>$date</span>\n";
      echo "<p class='blog-body'>";
      if (strlen($body) > $shortenedPost) {
        echo nl2br(substr($body, 0, $shortenedPost));
        echo "<a href='?title=$encoded_title'> read more</a>";
      } else {
        echo nl2br($body);
      }
      echo "</p>\n";
      echo "</div>";
    }

  } else if ($display === "one" && !empty($post)){ //display one specific post
    $name = $post[0];
    $title = $post[1];
    $body = $post[2];
    $date = $post[3];
    echo "<div class='blog-entry'><span class='blog-title'>$title</span>\n";
    echo "<p class='blog-undertitle'><span class='blog-name'>by $name - </span>";
    echo "<span class='blog-date'>$date</span></p>\n";
    echo "<p class='blog-body'>" . nl2br($body) . "</p>\n";
    echo "</div>";
  }
?>

<?php include "../components/footer.html" ?>
