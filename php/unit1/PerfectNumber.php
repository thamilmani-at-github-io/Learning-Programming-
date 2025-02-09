<?php
$v=$_POST["number"];
$sum=1;
for($i=2;$i<$v;$i++){
    if($v%$i==0){
        $sum = $sum + $i;
    }
}
if($sum==$v){
    echo $v." is Perfect Number ";
    echo "<br>";
}
else{
    echo $v." is Not Perfect Number ";
    echo "<br>";
}
?>