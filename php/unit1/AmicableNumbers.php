<?php
$v = $_POST["number"];
$sum=0;
$sum_of_sum = 0;
for($i=1;$i<$v;$i++){
    if($v%$i==0){
        $sum = $sum+$i;
    }
}

for($i=1;$i<$sum;$i++){
    if($sum%$i==0){
        $sum_of_sum = $sum_of_sum+$i;
    }
}

if($sum_of_sum == $v){
    echo $v." is Amicable Number";
}
else{
    echo $v." is No Amicable Numbers";
}
?>