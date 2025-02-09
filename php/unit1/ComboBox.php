<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Combo Box Element</title>
</head>
<body>
    <form method="post">
        <label for="programs">Programs : </lable>
        <select id="cmbMake" name="make" 
        onchange="document.getElementById('selected_text').value = this.options[this.selectedIndex].text">
            <option value="0">Select Program</option>
            <option value="1">Prime Number</option>
            <option value="2">Generate Prime Number</option>
            <option value="3">Perfect Number</option>
            <option value="4">Generate Perfect Number</option>
            <option value="5">ArmStrong Number</option>
            <option value="6">Generate ArmStrong Number</option>
            <option value="7">Single Digit Value</option>
            <option value="8">Prime Factor</option>
            <option value="9">CollatzSequence</option>
        </select>
        <input type="hidden" name="selected_text" id="selected_text" value="" />
        <input type="submit" name="search" value="Find" />
        Number : <input type="text" name="number"><br>
        <br>
    </form>
    <?php
        if(isset($_POST['search'])){
            $maker = $_POST['selected_text'];
            if($maker=="Prime Number"){
                require_once('primeNumber.php');
            }
            if($maker=="Generate Prime Number"){
                require_once('generatePrimeNumber.php');
            }
            if($maker=="Perfect Number"){
                require_once('PerfectNumber.php');
            }
            if($maker=="Generate Perfect Number"){
                require_once('GeneratePerfectNumber.php');
            }
            if($maker=="ArmStrong Number"){
                require_once('Armstrong.php');
            }
            if($maker=="Generate ArmStrong Number"){
                require_once('GenerateArmStrong.php');
            }
            if($maker=="Single Digit Value"){
                require_once('primeNumber.php');
            }
            if($maker=="Prime Factor"){
                require_once('ProductofPrime.php');
            }
            if($maker=="CollatzSequence"){
                require_once('primeNumber.php');
            }
        }
    ?>
</body>
</html>