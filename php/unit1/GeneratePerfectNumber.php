<?php
$v=$_POST["number"];
for($j=2;$j<=$v;$j++)
{
    $sum=1;
    for($i=2;$i<$j;$i++){
        if($j%$i==0){
            $sum = $sum + $i;
        }
    }
    if($sum==$j){
        echo $j." is Perfect Number ";
        echo "<br>";
    }
}
echo "successfully Completed";
?>