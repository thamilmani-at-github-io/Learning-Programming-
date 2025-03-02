<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "workatease-dev";
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("error". $conn->connect_error);
}
else {    
    $sql = "select name,Department,age,community from Application where community = '".$_REQUEST["q"]."'";
    $result = mysqli_query($conn,$sql);
    echo "<table border = 1 ><tr><th>Name</th><th>Department</th><th>age</th><th>community</th></tr>";
    while($row = mysqli_fetch_array($result)) {
        echo "<tr><td>".$row['name']."</td><td>".$row['Department']."</td><td>".$row['age']."</td><td>".$row['community']."</td></tr>";
    }
    echo "</table>";
    mysqli_close($conn);
}
?>