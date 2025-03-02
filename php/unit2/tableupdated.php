<?php
$servername = "localhost";
$username = "root";
$password = '';
$db = "Test4";

$conn = new mysqli($servername,$username,$password,$db);

if($conn->connect_error){
    die("connection failed : ".$conn->connect_error);
}

$sql = "update std1 set Mark = 335 where Reg_no = '21UCA024';";

if($conn->multi_query($sql)===TRUE){
    echo "Update data in table Successfully";
}
$conn->close();

?>
