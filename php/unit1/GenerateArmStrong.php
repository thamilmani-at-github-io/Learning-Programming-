<?php
    $v = $_POST["number"];
    $c = $v;
    $r = 0;
    for($i=1;$i<=$v;$i++){
        $sum = 0;
        $j=$i;
        while($j>0){
            $r = $j%10;
            $sum = $sum + ($r*$r*$r);
            $j = $j/10;
        }
        if($i==$sum){
            echo $sum." Is Arm strong Number";
            echo "<br>";
        }
    }
?>