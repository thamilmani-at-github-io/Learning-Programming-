<?php
$servername = "localhost";
$username = "root";
$password = '';
$db = "Test4";

$conn = new mysqli($servername,$username,$password,$db);

if($conn->connect_error){
    die("connection failed : ".$conn->connect_error);
}

$sql = "Insert into std1(Reg_no,std_Name,Mark) values('21UCA049','ThamilMani',437);";
$sql .= "Insert into std1(Reg_no,std_Name,Mark) values('21UCA024','Kumaravel',332);";
$sql .= "Insert into std1(Reg_no,std_Name,Mark) values('21UCA005','Barath',282);";

if($conn->multi_query($sql)===TRUE){
    echo "inserted data in table";
}
$conn->close();

?>