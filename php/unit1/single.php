<?php
function getPrimeFactors($number) {
    $factors = array();
    // Divide by 2 until the number is odd
    while ($number % 2 == 0) {
        $factors[] = 2;
        $number = $number / 2;
    }
    // Divide by odd numbers from 3 onwards
    for ($i = 3; $i <= sqrt($number); $i += 2) {
        while ($number % $i == 0) {
            $factors[] = $i;
            $number = $number / $i;
        }
    }
    // If the number is a prime number greater than 2
    if ($number > 2) {
        $factors[] = $number;
    }
    return $factors;
}

// Get the number from the form input
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $number = $_POST["name"];
    $factors = getPrimeFactors($number);

    // Calculate the highest count of prime factors
    $factorCount = array_count_values($factors);
    $maxCount = max($factorCount);
    $mostFrequentPrime = array_search($maxCount, $factorCount);

    echo "<h2>Prime factors of $number are: " . implode(", ", $factors) . "</h2>";
    echo "<h2>The most frequent prime factor is $mostFrequentPrime with a count of $maxCount.</h2>";
}
?>
