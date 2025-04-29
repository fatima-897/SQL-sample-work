<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css">
</head>
<body>
  <div class="container">
  <?php
   if ($_SERVER["REQUEST_METHOD"] == "POST") {
       $name = ($_POST['name']);
       $email = ($_POST['email']);
?>  
 
 <div class="alert alert-success">
  <h4>Form submitted successfully!</h4>
  <p><strong>Name: </strong> <?=$name; ?> </p>
  <p><strong>Email: </strong> <?=$email; ?> </p>

 </div>
 
<?php
} else {
    ?> 
    <div class="alert alert-danger text-center fw-bold">
        <h2>Invalid Access!</h2>
    </div>
    <?php 
}
?>  
 </div>
</body>
</html>
