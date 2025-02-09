<?php
//$v=7;
$v=$_POST["number"];
$flag=1;
for($i=2;$i<$v;$i++)
{
    if($v%$i==0){
        $flag = 0;
        break;
    }
}
if($flag == 1)
    echo $v." is Prime Numbers ";
else
    echo $v." is Not Prime Numbers ";
?>