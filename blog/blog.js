/* -------------- UPDATE CHAR COUNTER -------------- */
let textarea = document.getElementById('body');
let numCharsText = document.getElementById('numberChars');
textarea.onkeyup = function() {
  let numChars = (21844 - textarea.value.length);
  if (numChars < 0){
    numCharsText.classList.add("red");
  } else {
    numCharsText.classList.remove("red");
  }
  numCharsText.childNodes[0].nodeValue = numChars.toLocaleString();
};

/* -------------- POST METHOD -------------- */

async function post() {
  //form validation
  let title = validateTitle();
  let title_is_unique = checkUniqueTitle(title);
  let body = validateBody();

  //attempt signup request to server
  if (title && body){
    var alertText = document.createTextNode("Attemping to post...");
    makeAlert("alert-warning", alertText, "submit-help");

    let result = await blogPost(title, body);
    //remove temporary alert here
    if (result === "-1"){
      var alertText = document.createTextNode("There was an error connecting to the database.");
      makeAlert("alert-danger", alertText, "submit-help");
    } else if (result !== "1") {
      console.log(result);
      var alertText = document.createTextNode("There was an error inserting your post into the database.");
      makeAlert("alert-danger", alertText, "submit-help");
    } else {
      var alertText = document.createTextNode("Posted! Redirecting to blog page...");
      makeAlert("alert-success", alertText, "submit-help");
      document.location.assign("../blog?title=" + encodeURIComponent(title));
    }
  }
}

/* -------------- VALIDATION FUNCTIONS -------------- */

let validateTitle = function() {
  let title = document.getElementById('title');
  if (title.value.length < 1) {
    var alertText = document.createTextNode("You gotta type a title!");
    makeAlert("alert-warning", alertText, "title-help");
    return null;
  }
  return title.value;
}

let checkUniqueTitle = async function(title) {
  let result = await checkTitleGet(title);
  if (isNaN(parseInt(result)) ) {
      var alertText = document.createTextNode("There was an error connecting to the database.");
      makeAlert("alert-danger", alertText, "title-help");
      return false;
  }
  if (parseInt(result) === -1){
    var alertText = document.createTextNode("There was an error checking your title against the database.");
    makeAlert("alert-danger", alertText, "title-help");
    return false;
  }
  if (parseInt(result) > 0){
    var alertText = document.createTextNode("There is post with that title!");
    makeAlert("alert-warning", alertText, "title-help");
    return false;
  }
  return true;
}

let validateBody = function() {
  let body = document.getElementById('body');
  if (body.value.length < 1) {
    var alertText = document.createTextNode("You gotta type a post!");
    makeAlert("alert-warning", alertText, "body-help");
    return null;
  }
  if (body.value.length > 21844) {
    var alertText = document.createTextNode("Your post is too long!");
    makeAlert("alert-warning", alertText, "body-help");
    return null;
  }
  return body.value;
}

/* -------------- POST AND GET FUNCTIONS -------------- */

let checkTitleGet = async function(title){
  title = decodeURIComponent(title);
  let response = await fetch("/server/blog.php?title=" + title);
  let result = await response.text();
  return result;
}


let blogPost = async function(title, body){
  let response = await fetch("/server/blog.php",
  { method: 'POST',
    headers: {
      'Content-type': 'application/x-www-form-urlencoded',
    },
    body:  'title=' + decodeURIComponent(title) +
      '&body=' + decodeURIComponent(body)
  });
  let result = await response.text();
  return result;
}
