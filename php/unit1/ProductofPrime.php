<?php
$v=$_POST["number"];
$i=2;
while($v!=1){
    if($v%$i==0){
        echo $i.",";
        $v=$v/$i;
    }
    else{
        $i=$i+1;
    }
}
?>