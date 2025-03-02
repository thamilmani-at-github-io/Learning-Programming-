<?php
include('config.php');

if($_SERVER['REQUEST_METHOD']==='POST'){

$name=$_POST['name'];
$value=$_POST['value'];

$sql="insert into master (product_name,product_value) values ('$name','$value')";

if($conn->Query($sql)===TRUE){
echo"inserted completed....";
}
else{
    echo"inserted failed...";
}
}
?>