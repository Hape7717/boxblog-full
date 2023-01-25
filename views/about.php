<?php 

    session_start();
    require_once '../config/db.php';

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
    <link rel="stylesheet" href="aboutus.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <link rel="icon" type="image/jpg" href="img/logo/PNG/327316533_1188676491793928_5497790955519278487_n.jpg"/>
    <title>About us</title>
</head>
<body class="bg-pan-left">
  
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
  <div class="header-blog">
        <div style="font-size: 45px;;">
            <span style="color: #2F200A;" >About </span><span style="color: rgb(252, 103, 4);">Us</span>
        </div>
    </div>

    <div class="container">
        <div class="header-about">
            <div class="item-about">
                <div class="align-img">
                    <img class="user-avata" src="img/logo/PNG/pngb-logoCard.png" alt="">
                </div>
            </div>
            <div class="item-about">
                <div class="txt-about">
                    <p>
                        เว็บไซต์นี้จัดขึ้นเพื่อเป็นโปรเจคจบของนักศึกษา แผนกวิชาคอมพิวเตอร์ ประเภทวิชาเทศโนโลยีสารสนเทศและการสื่อสาร<br>              
                        สาขาวิชาเทคโนโลยีสารสนเทศ สาขางานนักพัฒนาซอฟต์แวร์คอมพิวเตอร์
                    </p>
                    <p>โดยเหตุผลของการทำเว็บบทความนี้ หนึ่งในคณะผู้จัดทำมีความเห็นว่าอยากจะทำเว็บไซต์ที่สามารถแชร์ความรู้หรือสิ่งที่ผู้จัดทำสนใจในขณะนั้น นำมาโพสต์ ลงให้เว็บไซต์นี้ เพื่อให้คนที่ต้องการหาความรู้จากทางเว็บไซต์มีช่องเข้าถึงความรู้ได้ง่ายและสามารถใช้ได้ทุกที่</p>
                </div>
            </div>
        </div>
    </div>
 
    <div class="header-boxblog">
        <h3 style="color: #2F200A;">ชื่อ Box Blog มายังไง ?</h3>
    </div>
    <div class="container bg-boxblog" >
        <div class="boxblog">
            
            <div class="boxandblog">
                <div class="box-meaning">
                    <h2>Box</h2>
                    <p>เปรียบเทียบเว็บของเราเป็นเหมือนกล่องที่เราๆ ใช้เก็บของต่างๆ เว็บบล็อกของเราก็เปรียบเสมือนกล่องที่ใช้เก็บความรู้ต่างๆที่เราสนใจ และสามารถหยิบกลับมาอ่านอีกครั้งได้เสมอ</p>
                </div>
                <div class="blog-meaning">
                    <h2>Blog</h2>
                    <p>เป็นคำรวมมาจากคำว่า เว็บล็อก (Weblog) เป็นรูปแบบเว็บไซต์ประเภทหนึ่ง ซึ่งถูกเขียนขึ้นในลำดับที่เรียงตามเวลาในการเขียน ซึ่งจะแสดงข้อมูลที่เขียนล่าสุดไว้แรกสุด บล็อกโดยปกติจะประกอบด้วย ข้อความ ภาพ ลิงก์ ซึ่งบางครั้งจะรวมสื่อต่าง ๆ ไม่ว่า เพลง หรือวิดีโอ</p>
                    <p>ที่มา : <a href="https://th.wikipedia.org/wiki/บล็อก" style="color: aliceblue;">https://th.wikipedia.org/wiki/บล็อก</a></p>
                </div>
            </div>
        </div>
    </div>
    
    <div class="container">
        <div class="boxandblog" style="margin: 5% 0;">
            <div>
                <h3 style="margin: 20px 0 ; color: #2F200A;">เบื้องหลังของเว็บ Box Blog</h3>
                <li>jQuery</li>
                <li>JavaScript</li>
                <li>HTML Hyper Text Markup </li>
                <li>PHP PDO (PHP DataObject)</li>
                <li>Bootstrap Front-end framework</li>
                <li>Structured Query Language (SQL)</li>
            </div>
            <div>
                <div class="align-img">
                    <p class="txt-lg">Great things never come</p>
                    <p class="txt-sm">from comfort zones.</p>
                </div>
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