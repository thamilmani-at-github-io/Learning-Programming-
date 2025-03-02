<?php
$servername = "localhost";
$username = "root";
$password = '';
$db = "Test4";

$conn = new mysqli($servername,$username,$password,$db);

if($conn->connect_error){
    die("connection failed : ".$conn->connect_error);
}

$sql = "delete from std1 where Reg_no = '21UCA005';";

if($conn->multi_query($sql)===TRUE){
    echo "Deleted Record Successfully in table";
}
$conn->close();

?>