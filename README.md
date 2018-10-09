# php-blog-sandbox
A small project to play around with php and some javascript + css. This is a simple website where people can signup and make blog posts.

Note that this project requires a mysql database. A .sql file is included in the repo with the appropriate structure and some stuff pre-setup. The structure of the database is at the bottom of this file.


TO DO:

important

pseudo-important
- add blog tags
- have form alerts stay until form resubmitted
- search bar to search by tags
- contact form?
- enter key to submit

unimportant
- consider making "deny-access.php" for components OR use mod_rewrite to disallow some files e.g. components
- tidy up form styles
- add captcha to signup and maybe to contact form https://www.thesitewizard.com/general/add-captcha-to-feedback-form-script.shtml
- database constraints (e.g. email formatting)



DB SETUP:
NOTE: 255bytes = 21,844 utf8-chars

CREATE TABLE User (
email VARCHAR(255) PRIMARY KEY,
name VARCHAR(255) NOT NULL,
password VARCHAR(255) NOT NULL,
cookie VARCHAR(255),
cookie_expire VARCHAR(255)
);

CREATE TABLE Article (
title VARCHAR(255) PRIMARY KEY,
email VARCHAR(255),
body TEXT NOT NULL,
submitted DATETIME NOT NULL,
CONSTRAINT FOREIGN KEY (email) REFERENCES User (email) ON DELETE NO ACTION
);

CREATE TABLE Tags (
title VARCHAR(255),
tag VARCHAR(15) NOT NULL,
PRIMARY KEY (title, tag),
CONSTRAINT FOREIGN KEY (title) REFERENCES Article (title) ON DELETE CASCADE
);
