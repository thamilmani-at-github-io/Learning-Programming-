<?php
$servername = "localhost";
$username = "root";
$password = '';

$conn = new mysqli($servername,$username,$password);

if($conn->connect_error){
    die("connection failed : ".$conn->connect_error);
}

$sql = "CREATE DATABASE Test4";

if($conn->query($sql)===TRUE){
    echo "Database Created Successfully";
}
else{
    echo "Error Creating Database";
}
$conn->close();

?>