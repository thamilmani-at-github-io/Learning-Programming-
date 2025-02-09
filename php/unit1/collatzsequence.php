<?php
$v=$_POST["number"];
while($v!=1){
    if($v%2==0){
        $v=$v/2;
        echo $v.",";
    }
    else{
        $v=3* $v+1;
        echo $v.",";
    }
}
?>