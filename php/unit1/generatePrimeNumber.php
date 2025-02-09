<?php
//$v=7;
$v=$_POST["number"];
for($i=2;$i<=$v;$i++)
{
    $flag=1;
    for($j=2;$j<$i;$j++){
        if($i % $j == 0){
            $flag = 0;
            break;
        }
    }
    if($flag == 1){
        echo $i." is Prime Numbers ";
        echo "<br>";
    }
}
?>