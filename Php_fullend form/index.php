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
    <form action="insert.php" method="post">
      <div class="mb-3">
        <label class="form-label">Name</label>
        <input type="text" name="name" class="form-control">
      </div>
      <div class="mb-3">
        <label class="form-label">Email</label>
        <input type="email" name="email" class="form-control">
      </div>
      <button type="submit" class="btn btn-primary">Submit</button>
    </form>

    <h3> Retrive user</h3>
    <table class=" table table-bordered ">
      <thead class="table-info text-center fw-bold">
        <tr>
          <td>#</td>
          <td>Name</td>
          <td>Email</td>
          <td>Action</td>
        </tr>
      </thead>
      <tbody>
        <?php
        include 'db.php';
        $result = $conn->query("SELECT * from users");
        while ($row = $result->fetch_assoc()) {
        ?>
          <tr>
            <td><?php echo $row['id']; ?></td>
            <td><?php echo $row['name']; ?></td>
            <td><?php echo $row['email']; ?></td>
          </tr>

        <?php
        }
        ?>
      </tbody>
    </table>
  </div>
</body>

</html>
