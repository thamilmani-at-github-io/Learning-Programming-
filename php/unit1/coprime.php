<?php
function gcd($a, $b) {
    while ($b != 0) {
        $temp = $b;
        $b = $a % $b;
        $a = $temp;
    }
    return $a;
}
function areCoPrime($num1, $num2) {
    if (gcd($num1, $num2) == 1) {
        return true;
    }
    return false;
}

if (isset($_GET['num1']) && isset($_GET['num2'])) {
    $num1 = $_GET['num1'];
    $num2 = $_GET['num2'];
    
    if (areCoPrime($num1, $num2)) {
        echo "$num1 and $num2 are co-prime.";
    } else {
        echo "$num1 and $num2 are not co-prime.";
    }
} else {
    echo "Please provide two numbers via URL (e.g., ?num1=5&num2=9)";
}
?>
