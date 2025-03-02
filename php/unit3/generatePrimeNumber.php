<?php
// $getPrime = 100;

$prime = $_GET["name"];
for($k=2;$k<$prime;$k++){
$flag=0;
for($i=2;$i<=$k/2;$i++){
    if($k%$i==0){
        $flag =1;
    }
}
if($flag==0){
    echo $k."is Prime";
    echo "<br>";
}
}
?>