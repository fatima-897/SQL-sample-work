<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-4 w-50">

<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "formrecord";

    // var_dump($conn);

    $conn = new mysqli($servername,$username,$password,$dbname);
    // var_dump($conn);
    if ($conn->connect_error) {
        die("Connecting Error" .$conn->connect_errno);
    }

    // echo "Connected Successfully";

   if ($_SERVER["REQUEST_METHOD"] == "POST") {
       $name = ($_POST['name']);
       $email = ($_POST['email']);


       $sql = "INSERT INTO users (name, email) values ('$name', '$email')";

       if ($conn->query($sql) === true) {
        echo "Record Inserted Successfully";
       } else {
        echo "Error:" .conn->error;
       }
}
$conn->close()
?>  
 </div>
</body>
</html>