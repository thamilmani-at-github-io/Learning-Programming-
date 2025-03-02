<?php
$name = htmlspecialchars($_POST["name"]);
$comment = htmlspecialchars($_POST["comment"]);
echo "Hi ,".$name." Your Comment Received Successfully ..."."Your Comment is ".$comment;
?>