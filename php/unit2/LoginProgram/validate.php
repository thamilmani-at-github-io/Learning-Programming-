<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "workatease-dev";

session_start();
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("error : ". $conn->connect_error);
}
else{
    $sql = "select username,pwd from users where username = '".$_POST["name"]."'";
    $query = mysqli_query($conn, $sql);
    $res = mysqli_fetch_array($query);    
    if (!$res) {
        die("No login data");
    }
    else{
        $username1 = $res["username"];
        $password1 = $res["pwd"];
        $resusername = $_POST["name"];
        $respassword = $_POST["pwd"];
        if($username1 == $resusername){

            if($password1 == $respassword){
                echo"Login Successfully ...";
            }
            else{
                die("Incorrect password ");
            }
        }
        else{
            die("Incorrect username ");
        }
    }
}
?>