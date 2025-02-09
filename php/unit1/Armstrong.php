<?php
    $v=$_POST["number"];
    $c=$v;
    $r = 0;
    $sum = 0;
    while($v>0){
        $r = $v%10;
        $sum = $sum + ($r*$r*$r);
        $v = $v/10;
    }
    if($c==$sum){
        echo $c.    " Is Arm strong Number";
    }
    else{
        echo $c." Is Not an Arm strong Number";
    }
?>