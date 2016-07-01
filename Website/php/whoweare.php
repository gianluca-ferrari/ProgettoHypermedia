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

$tipo = $_GET[("tipo")];
$query = "SELECT nome, img, frase FROM sferette WHERE tipo =".$tipo;
$sql = $query;
$result = $conn->query($sql);

$myArray = array();
if ($result -> num_rows> 0) {
    while($row = $result->fetch_assoc()) {
        $row["frase"] = mb_convert_encoding($row["frase"], "UTF-8", "auto");
        $myArray[] = $row;
    }
}

echo JSON_encode($myArray);

$conn->close();
?>