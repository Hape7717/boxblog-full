<?php 

    session_start();
    

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="icon" type="image/jpg" href="img/logo/PNG/327316533_1188676491793928_5497790955519278487_n.jpg"/>

    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="view-blog.css">
    <link rel="stylesheet" href="login.css">
    <link rel="stylesheet" href="register.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="login.css">
    <script src="login.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
</head>



<body style="background:#fffaf6;">
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
                          <a class="nav-menu" href="index.php#recommended">Recommended Blog</a>
                      </li>
                        <li class="nav-item">
                            <a class="nav-menu" href="index.php#all-blog">All blog</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-menu-active" href="login.php">Log in</a>
                        </li>
                    </ul>
                </div>
          </div>
        </div>
      </nav>
    <div class="box-body" style="display: flex; justify-content: center;">
        <div class="grid-box-body">
            <div  class="header-form">
                <h3>Register</h3>
                <p>Welcome to Box Blog</p>
            </div>
            <div>
                <form action="../controller/register_db.php" method="post">
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
                        <input type="text" class="form-control" name="username">
                    </div>
                    <div class="form-inp">
                        <label for="email" class="form-label">Email</label>
                        <input type="email" class="form-control" name="email">
                    </div>
                    <div class="item-input-box">
                        <div class="form-inp">
                            <label for="username" class="form-label">Password</label>
                            <input type="password" class="form-control" name="password" autocomplete="current-password" required="" id="id_password">
                        </div>
                        <div class="form-inp">
                            <label for="c_password" class="form-label">Confirm Password</label>
                            <input type="password" class="form-control" name="c_password">
                        </div>
                    </div><br>
                    <button type="submit" name="signup" class="btn-diy-2">Register</button>
                    &nbsp;
                    <a href="login.php" class="link-txt">Back to Log in</a>
                </form>
            </div>
            
        </div>
    </div>

<?php
    $conn = null;
?>    
</body>
</html>

<script>
    const togglePassword = document.querySelector('#togglePassword');
    const password = document.querySelector('#id_password');

  togglePassword.addEventListener('click', function (e) {
    // toggle the type attribute
    const type = password.getAttribute('type') === 'password' ? 'text' : 'password';
    password.setAttribute('type', type);
    // toggle the eye slash icon
    this.classList.toggle('fa-eye-slash');
});
</script>