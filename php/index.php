<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "my_facchiniferrarigaboardi";

// Create connection
$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$id = $_GET[("id")];

$query = "SELECT idDevice, nome, immagine, vetrina, disponibile FROM device WHERE idDevice=".$id;



$sql = $query;
$result = $conn->query($sql);

$myArray = array();
if ($result -> num_rows> 0) {
    while($row = $result->fetch_assoc()) {
        $row["vetrina"] = mb_convert_encoding($row["vetrina"], "UTF-8", "auto");
        $myArray[] = $row;
    }
}

echo JSON_encode($myArray);
$conn->close();
?> 

