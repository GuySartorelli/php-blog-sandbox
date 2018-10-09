<?php $title = "New Blog Post" ?>
<?php include "../components/nav.php" ?>
<h1>New Blog Post</h1>

<h2>Craft a new blog post</h2>
<div class="form-horizontal form-group form-group-lg row">

  <div>
    <input type="text" name="title" id="title" class="form-control" placeholder="Please type the title">
    <div id="title-help"></div>
    <br>
    <textarea class="form-control" id="body" placeholder="Please type the main post"></textarea>
    <span class="form-text text-muted right">
      <small>Characters remaining: <span id='numberChars'>21,844</span></small>
    </span>
    <div id="body-help"></div>
    <br>
    <button onclick="post()" value="submit" id="submit" class="btn btn-primary btn-lg btn-block">Post</button>
    <div id="submit-help"></div>
  </div>

</div>

<?php include "../components/footer.html" ?>
<script type="text/javascript" src="blog.js"></script>
