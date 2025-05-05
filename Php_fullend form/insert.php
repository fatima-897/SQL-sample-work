<?php 
include "db.php";
echo "connected";

if ($_SERVER["REQUEST_METHOD"] === "POSR") {
    $name = $_POST["name"];
   $email = $_POST["email"];
    $conn->query("INSERT INTO users (name, email) VALUES ('$name', '$email')");

}
header("Location :index.php");

?>