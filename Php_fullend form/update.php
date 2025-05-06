<?php 
include 'db.php';
$id = $_GET['id'];

if($_SERVER["REQUEST_METHOD"] == "POST") {
    $name  = $_POST['name'];
    $email  = $_POST['email'];

    $conn->query("UPDATE users set name='$name', email='$email'  where id=$id");

    header("Location: index.php");

}else {
    $result = $conn->query("SELECT * from users where id=$id");
    $row = $result->fetch_assoc();
}


include 'header.php';
?>

<h3>Update User</h3>
<form action="" method="post">
    <div class="mb-3">
        <input type="text" name="name" class="form-control" value="<?php echo $row['name'] ?>" required>
    </div>
    <div class="mb-3">
        <input type="email" name="email" class="form-control" value="<?php echo $row['email'] ?>" required>
    </div>
    <button type="submit" class="btn btn-primary">Updates</button>
    <a href="index.php" class="btn btn btn-secondary">Cancel</a>
</form>

<?php
include 'footer.php';
?>
