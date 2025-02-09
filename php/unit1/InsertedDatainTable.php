<?php
$servername = "localhost";
$username = "root";
$password = '';
$db = "Test4";

$conn = new mysqli($servername,$username,$password,$db);

if($conn->connect_error){
    die("connection failed : ".$conn->connect_error);
}


$sql = "CREATE table std1(Reg_no varchar(50),std_Name varchar(100),Mark int)";

if($conn->query($sql)===TRUE){
    echo "Table Created Successfully";
}
else{
    echo "Error Creating Database";
}

$conn->close();

?>