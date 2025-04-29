<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <div class="container mt-4 w-50">

    <?php
        $servername = "localhost";
        $username = "root";
        $password = "";
        $dbname = "hospitaldb";

        // var_dump($conn);

        $conn = new mysqli($servername,$username,$password,$dbname);
        var_dump($conn);
        if ($conn->connect_error) {
            die("Connecting Error" .$conn->connect_errno);
        }

        echo "Connected Successfully";
     ?>

    </div>
   
</body>
</html>