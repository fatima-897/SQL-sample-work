<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5 w-50">
        <form action="insert.php" method="post" class="border p-4 shadow-sm rounded">
            <div class="mb-3">
              <label  class="form-label">Name</label>
              <input type="name" name="name" class="form-control" required>
            </div>
            <div class="mb-3">
              <label class="form-label">Email</label>
              <input type="email" name="email" class="form-control" required>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
          </form>
    </div>
</body>
</html>