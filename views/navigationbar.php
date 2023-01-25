<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>navigationbar</title>
    <link rel="stylesheet" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
</head>
<body>
  <nav id="navBar" class="navbar fixed-top navbar-expand-lg navbar" style="padding: 10px 50px;">
      <div class="container-fluid">
        <a class="navbar-brand" style="font-size: 30px; font-weight: 600;" href="index.php">
          <img src="img/logo/PNG/BBCard.png" class="" alt=" " width="60" height="60" srcset="">
          Box Blog
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
              <ul class="navbar-nav me-auto mb-2 mb-lg-0"></ul>
              <div class="d-flex">
                  <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                      <li class="nav-item">
                          <a class="nav-menu-active" aria-current="page" href="index.php">Home</a>
                      </li>
                      <li class="nav-item">
                          <a class="nav-menu" href="index.php#all-blog">All blog</a>
                      </li>
                      <li class="nav-item dropdown">
                        <a class="nav-menu dropdown-toggle" href="#" id="navbarDarkDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                          Manage Blog
                        </a>
                        <ul class="dropdown-menu dropdown-menu" aria-labelledby="navbarDarkDropdownMenuLink">
                          <li><a class="dropdown-item" href="#">Recommended Blog</a></li>
                          <li><a class="dropdown-item" href="manage-blog.php">Manage Blog</a></li>
                          <li><a class="dropdown-item" href="add-blog.php">Add Blog</a></li>
                        </ul>
                      </li>
                      <li class="nav-item">
                        <a class="nav-menu" href="manage-user.html">Manage User</a>
                      </li>
                      <li class="nav-item">
                          <a class="nav-menu active" href="#">Logout</a>
                      </li>
                  </ul>
              </div>
        </div>
      </div>
    </nav>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>