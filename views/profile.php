<?php 

session_start();
require_once '../config/db.php';

  $stmt = $conn->prepare("SELECT * FROM users WHERE username = :username");
  $stmt->bindParam(":username", $_SESSION['username']);
  $stmt->execute();
  // set the resulting array to associative
  $result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
  $users = $stmt->fetch();

   $avatar = $users["avatar"];
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="view-blog.css">
    <link rel="stylesheet" href="table-manage.css">
    <link rel="stylesheet" href="userprofile.css">
    <link rel="stylesheet" href="register.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <title>Profile</title>
    <link rel="icon" type="image/jpg" href="img/logo/PNG/327316533_1188676491793928_5497790955519278487_n.jpg"/>

</head>
<body>
<!-- nav -->
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
                    
                    //default image
                    $avatar2 = 'user.PNG';
                    // print_r($avatar);

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
                                    <img src="../uploads/'.($avatar ? $avatar : $avatar2).'" 
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
  <!-- end nav -->

    <div class="header-blog">
        <p># Update profile</p>
    </div>
    
    <div class="container ">
    <form action="../controller/profile-db.php" method="post" enctype="multipart/form-data">
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
            <div class="user-profile">

                <div class="user-img">
                        <div class="align-img">
                            <img class="user-avata rounded-circle" src="../uploads/<?php echo ($users['avatar'] ? $users['avatar'] : $avatar2); ?>" alt="" srcset="">
                        </div>
                        <div style="text-align: center; padding: 20px 0;">
                          <h5 class="user-name"><?php echo $users['username']; ?></h5>
                          <h6 class="user-email"><?php echo $users['email']; ?></h6>
                          <br>
                          <label for="" class="form-label">Change image</label>
                          <input class="form-control" type="file" id="formfile" name="img_file">
                        </div>
                </div>

                <div class="user-info ">
                    <div class="header-user-edit" style="margin-bottom:  40px ;">
                        <h3>Edit your profile.</h3>
                    </div>
        
                    <div class="item-input-box-2">
                        <div>
                            <label class="form-label" for="username">Username</label>
                            <input type="hidden" name="id" value="<?php echo $users['id']; ?>">
                            <input type="hidden" name="username" value="<?php echo $users['username']; ?>">
                            <input type="text" class="form-control" id="fullName" value="<?php echo $users['username']; ?>"  disabled>
                        </div>
                        <div>
                            <label class="form-label" for="e-mail">E-mail</label>
                            <input type="email" class="form-control" id="eMail" value="<?php echo $users['email']; ?>" name="email">
                        </div>
                        <div>
                            <label class="form-label" for="password">Password</label>
                            <input type="text" class="form-control" id="phone" value="<?php echo $users['password']; ?>" name="password">
                        </div>
                    </div><br><br>
                    <button type="submit" name="udate-profile" class="btn-diy-2">Save change</button>
                </div>
            </div>
        </form><br><br>
    </div>

<?php
    $conn = null;
?>
</body>
</html>