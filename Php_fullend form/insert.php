<?php

include 'db.php';

if ($_SERVER["REQUEST_METHOD"] === "POST") {
  $name = $_POST["name"];
  $email = $_POST["email"];
  $conn->query("INSERT INTO users (name, email) VALUES ('$name', '$email')");
}
header("Location: index.php");
?>
