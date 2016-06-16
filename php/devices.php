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
$query = "SELECT nome, immagine FROM device, categoriedevice WHERE categoria=id and id = 1";
/*
$tipologia = $_GET["tipologia"];
$marca = $_GET["marca"];
$display = $_GET["display"];
$connessione = $_GET["connessione"];
$fotocamera = $_GET["fotocamera"];

if($tipologia !== null)
{
    $query = $query."and tipologia=".$tipologia;
}
if($marca !== null)
{
    $query = $query."and marca=".$marca;
}
if($display !== null)
{
    $query = $query."and display=".$display;
}
if($connessione !== null)
{
    $query = $query."and connessione=".$connessione;
}
if($fotocamera !== null)
{
    $query = $query."and fotocamera=".$fotocamera;
}*/

$sql = $query;
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