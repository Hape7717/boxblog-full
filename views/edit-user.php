<?php 

    session_start();
    require_once '../config/db.php';
    
    if(!isset($_SESSION['admin_login'])){
        header("location: index.php");
    }


?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="view-blog.css">
    <link rel="stylesheet" href="login.css">
    <link rel="stylesheet" href="register.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="login.css">
    <script src="login.js"></script>
</head>


<body >
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

                  <!-- Menu list -->

                    <li class="nav-item">
                        <a class="nav-menu-active" aria-current="page" href="index.php">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-menu" href="index.php#all-blog">All blog</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-menu" href="about.php">About</a>
                    </li>

                    <!-- show when admin session -->
                    <?php
                        if(isset($_SESSION['admin_login']) && $_SESSION['admin_login'] == "admin"){
                            echo '<li class="nav-item dropdown">
                                    <a class="nav-menu dropdown-toggle" href="#" id="navbarDarkDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                        Manage Blog
                                    </a>
                                    <ul class="dropdown-menu dropdown-menu" aria-labelledby="navbarDarkDropdownMenuLink">
                                        <li><a class="dropdown-item" href="manage-blog.php">Manage Blog</a></li>
                                        <li><a class="dropdown-item" href="add-blog.php">Add Blog</a></li>
                                    </ul>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-menu" href="manage-user.php">Manage User</a>
                                </li>';
                        }if(isset($_SESSION['admin_login']) || isset($_SESSION['user_login'])){
                            echo '<li class="nav-item dropdown">
                                    <a class="nav-menu dropdown-toggle" href="#" id="navbarDarkDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                        <img src="https://media.discordapp.net/attachments/565616795491237903/1067092049179967498/326123871_704655427944305_9033912089748847351_n.png?width=404&height=606" 
                                        class="rounded-circle"
                                        height="25"
                                        width="25"
                                        alt="Black and White Portrait of a Man"
                                        loading="lazy"
                                        style="object-fit: cover;"
                                        />
                                    </a>
                                    <ul class="dropdown-menu dropdown-menu" aria-labelledby="navbarDarkDropdownMenuLink">
                                        <li><a class="dropdown-item" href="profile.php">Profile</a></li>
                                        <li><a class="dropdown-item" href="logout.php">Logout</a></li>
                                    </ul>
                                </li>';
                        }else{
                            echo '
                                <li class="nav-item">
                                    <a class="nav-menu" href="register.php">Register</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-menu-active" href="login.php">Log in</a>
                                </li>';
                        }
                    ?>
                </ul>

            </div>
      </div>
    </div>
  </nav>

<?php

    if($id = ($_GET['id'])){
        $stmt = $conn->prepare("SELECT * FROM users WHERE id = :id");
        $stmt->bindParam(':id', $id);
        $stmt->execute();
        $users = $stmt->fetch();
    }elseif($_SESSION['id']){
        $stmt = $conn->prepare("SELECT * FROM users WHERE id = :id");
        $stmt->bindParam(':id', ($_SESSION['id']));
        $stmt->execute();
        $users = $stmt->fetch();
    }

?>
    <div class="header-blog">
        <p># Manage User</p>
        <h1>Edit User in Box Blog</h1>
    </div>
    <div class="container-our-blog" id="all-blog">
        <h2 style="font-size: 25px; color: #2F200A; font-weight: 700;">Change Password or Email</h2>
    </div>
    <div class="box-body" style="display: flex; justify-content: center;">
        <div class="grid-box-body">
            <div  class="header-form">
                <h3>Edit User</h3>
                <p>Change Password or Email</p>
            </div>
            <div>
                <form action="../controller/edit-user-db.php" method="post">
                        <!-- alert  -->
                    <?php if(isset($_SESSION['error'])) { ?>
                    <div class="alert alert-danger" role="alert">
                        <?php 
                            echo $_SESSION['error'];
                            unset($_SESSION['error']);
                        ?>
                    </div>
                <?php } ?>
                <?php if(isset($_SESSION['success'])) { ?>
                    <div class="alert alert-warning" role="alert">
                        <?php 
                            echo $_SESSION['success'];
                            unset($_SESSION['success']);
                        ?>
                    </div>
                <?php } ?>
                <?php if(isset($_SESSION['warning'])) { ?>
                    <div class="alert alert-warning" role="alert">
                        <?php 
                            echo $_SESSION['warning'];
                            unset($_SESSION['warning']);
                        ?>
                    </div>
                <?php } ?>
                <!-- end alert  -->
                    <div class="form-inp">
                        <label for="username" class="form-label">Username</label>
                        <input type="hidden" name="id" value="<?php echo $users['id']; ?>">
                        <input type="text" class="form-control" value="<?php echo $users['username']; ?>" disabled>
                    </div>
                    <div class="form-inp">
                        <label for="username" class="form-label">Email</label>
                        <input type="email" class="form-control" value="<?php echo $users['email']; ?>" name="email">
                    </div>
                    <div class="item-input-box">
                        <div class="form-inp">
                            <label for="username" class="form-label">Password</label>
                            <input type="password" class="form-control" value="<?php echo $users['password']; ?>" name="password">
                        </div>

                    </div><br>
                    <button type="submit" name="signup" class="btn-diy-2">Save</button>
                    &nbsp;
                    <a href="manage-user.html" class="link-txt">Cancel</a>
                </form>
            </div>
            
        </div>
    </div>

    <footer id="sticky-footer" class="flex-shrink-0 py-4 bg-dark text-white-50">
        <div class="container text-center">
          <small>Copyright &copy; Website</small>
        </div>
      </footer>
<?php
    $conn = null;
?>  
</body>
</html>