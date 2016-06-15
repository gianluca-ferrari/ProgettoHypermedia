<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "timdatabase";

// Create connection
$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = "SELECT nome, immagine FROM device, categoriedevice WHERE categoria=id and id = 1";
$result = $conn->query($sql);

$myArray = array();
if ($result -> num_rows> 0) {
    while($row = $result->fetch_assoc()) {
        $myArray[] = $row;
    }
}

echo JSON_encode($myArray);
$conn->close();
?>