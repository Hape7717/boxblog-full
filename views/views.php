<?php

    session_start();
    include_once('../config/db.php');

    if(isset($views_id['id'])){
        try {
            $id = $views_id['id'];
            $select_stmt = $conn->prepare('SELECT * FROM article_tb WHERE id_article = :id');
            $select_stmt->execute([$id]);
            $row = $select_stmt->fetch(PDO::FETCH_ASSOC);
            extract($row);
        } catch(PDOException $e) {
            $e->getMessage();
        }
    } elseif($_REQUEST['view_id']){
        try {
            $id = $_REQUEST['view_id'];
            $select_stmt = $conn->prepare('SELECT * FROM article_tb WHERE id_article = :id');
            $select_stmt->execute([$id]);
            $row = $select_stmt->fetch(PDO::FETCH_ASSOC);
            extract($row);
        } catch(PDOException $e) {
            $e->getMessage();
        }
    }
     
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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</head>
<body>
<?php
    $stmt = $conn->prepare("SELECT * FROM article_tb WHERE id_article = ?");
    $stmt->execute([$id]);
    $article = $stmt->fetch(PDO::FETCH_ASSOC);
?>
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
                        <a class="nav-menu" href="#all-blog">All blog</a>
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
        <p># View Blog</p>
        <h1><?php echo $article['title']?></h1>
        <p class="timestemp" style="font-size: 15px; font-weight: 600; color: #77603e;"><?php echo $article['time_stamp'];?></p>
    </div>


    <div class="container">
        <img class="img-header-blog" src="<?php echo $article['header_image'];?>" alt="" srcset="">
        <div class="detail-blog">
            <h3 class="title-detail-blog"><?php echo $article['title'];?></h3>
            <p class="read-blog">
            <?php echo $article['content'];?>
            </p>
        </div>
    </div>
    <div class="container-fluid" style="height: 120px; display: flex;justify-content: space-between; align-items: center; padding: 0 15%; ">
        <h2 style="font-size: 25px; color: #2F200A; font-weight: 700;">Comment..</h2>
    </div>
    <div class="container">
        <div class="">
            <form action="../controller/comment-db.php" method="post">
<?php 

// set $user_session = $_SESSION['username']

if(isset($_SESSION['username'])) {
    $user_session = ($_SESSION['username']);
}
// end set $user_session = $_SESSION['username']

$id_article = $article['id_article'];

// check session login can comment
if(!isset($_SESSION['username'])){
    echo '<div class="form-floating">
    <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea" name="comment" disabled></textarea>
    <label for="floatingTextarea">Comments</label>
    </div><br>';
}else{
    echo '
    <div class="form-floating">
    <input type="hidden" name="user_comment" id="user_comment" value="'. $user_session.'">   
    <input type="hidden" name="id_article" id="id_article" value="'.$id_article.'">   
    <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea" name="comment"></textarea>
    <label for="floatingTextarea">Comments</label>
    </div><br>
    ';
}
// end check session login can comment
?>
                <button type="submit" name="comm" class="btn-diy">Post</button>
            </form>
            <hr class="under-line" id="comment_under">

<!-- loop for comment -->
<?php

$stmt = $conn->prepare("SELECT * FROM article_comment WHERE id_article = ?");
$stmt->execute([$id]);
$results = $stmt->fetchAll(PDO::FETCH_ASSOC);

foreach ($results as $comm) {
    $comm_id = $comm['id_comm'];

    ?>
            <div class="comment">
                <div class="id-c">
                    <div class="user-name">
                        <p class="user-txt"><?php echo $comm['username'];?></p>
                    </div>
                    <?php
if($comm['username'] === isset($_SESSION['username']) || isset($_SESSION['admin_login'])){
    echo '
    <div class="user-name" style="display: flex;">
    <a data-id="'.$comm_id.'" href="?view_id='.$id.'?delete='.$comm_id.'" class="link-txt delete-btn">Delete</a>
    <a href="" class="link-txt">Edit</a>
    </div>
    ';
}

?>
<!-- endComment loop for comment -->

                </div>
                <div>
                    <p><?php echo $comm['comment'];?></p>
                </div>
            </div>
            <hr class="under-line">
<?php
}
?>
    </div>

    <?php
    $conn = null;
    ?>
<footer id="sticky-footer" class="flex-shrink-0 py-4 bg-dark text-white-50">
    <div class="container text-center">
      <small>Copyright &copy; Website</small>
    </div>
</footer>

</body>
</html>