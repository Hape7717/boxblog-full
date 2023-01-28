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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <title>Box Blog</title>
    <link rel="icon" type="image/jpg" href="img/logo/PNG/327316533_1188676491793928_5497790955519278487_n.jpg"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@latest/css/all.min.css" />

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

    <div class="header-blog" id="recommended">
      <p># Our Blog</p>
      <h1>That We Recommended</h1>
    </div>

    <div class="container" >
      <section class="blog-grid" >

        <?php
          $stmt = $conn->prepare("SELECT * FROM article_tb ORDER BY views DESC LIMIT 1");
          $stmt->execute();
          $articles = $stmt->fetchAll();
          
          foreach ($articles as $article) {
        ?>  
          <!-- Recommended Blog 1-->
        <a href="views.php?view_id=<?php echo $article['id_article']; ?>" class="blog-grid-item-active">
          <div style="padding: 20px;">
            <img src="<?php echo '../uploads/'.$article['header_image']; ?>" class="img-item-blog-lg" alt="">
            <div class="blog-grid-tag">
              <p href="" class="tag"><?php echo $article['categories']; ?></p>
            </div>
            <p class="blog-grid-item-title" style="  white-space: nowrap; width: 600px; overflow: hidden; text-overflow: ellipsis; "><?php echo $article['title']; ?></p>
            <p class="blog-grid-item-Detail" style=" max-width: 200ch; white-space: nowrap; width: 600px; overflow: hidden; text-overflow: ellipsis;"><?php echo $article['description']; ?></p>
            <p class="blog-grid-item-Detail-sm article-sec" style="max-width: 200ch;"><i class="fa-regular fa-user"></i> : <?php echo $article['username'];?> <i class="fa-regular fa-eye"></i> :  <?php echo $article['views'];?></p>
          </div>
        </a>
        <hr class="line-gr">

<?php
}

    $query = "SELECT * FROM article_tb WHERE views != (SELECT MAX(views) FROM article_tb) ORDER BY views DESC LIMIT 3";
// Execute the query and fetch the results
  $stmt = $conn->prepare($query);
  $stmt->execute();
  $results = $stmt->fetchAll(PDO::FETCH_ASSOC);

// Use a foreach loop to iterate through the results
        foreach ($results as $article2) {
?>
        <!-- Recommended Blog 2-->

        <a href="views.php?view_id=<?php echo $article2['id_article']; ?>" class="blog-grid-item" style="flex-direction: row;">
          <img class="img-item-blog" src="<?php echo '../uploads/'.$article2['header_image']; ?>"  alt="">
          <div class="allin-blog">
            <div class="blog-grid-tag">
              <p href="" class="tag"><?php echo $article2['categories']; ?></p>
            </div>
            <p class="blog-grid-item-title-sm" style="  white-space: nowrap; width: 400px; overflow: hidden; text-overflow: ellipsis; "><?php echo $article2['title']; ?></p>
            <p class="blog-grid-item-Detail-sm" style="max-width: 200ch;"><?php echo $article2['description']; ?></p>
            <p class="blog-grid-item-Detail-sm article-sec" style="max-width: 200ch;"><i class="fa-regular fa-user"></i> : <?php echo $article2['username'];?> <i class="fa-regular fa-eye"></i> :  <?php echo $article2['views'];?></p>
          </div>
        </a>
        <hr class="line-gr">


<?php 
  } 
?>      
      </section>  
    </div>

    <div class="section-body" style="margin-top: 7%;">
      <div class="item-section">
        <img class="img-sec-body" src="img/logo/PNG/pngb-logoCard.png"  alt="">
      </div>
      <div class="item-section">
        <div>
          <p class="txt-lg">Great things never come</p>
          <p class="txt-sm">from comfort zones.</p>
      </div>
      </div>
    </div>
    <div class="container-our-blog" id="all-blog">
      <h2 style="font-size: 25px; color: #2F200A; font-weight: 700;">All blog post</h2>
      <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn-diy" type="submit">Search</button>
      </form>
    </div>


    <div class="container-all-blog" id="all-blog">

      <?php
        $stmt = $conn->prepare("SELECT * FROM article_tb");
        $stmt->execute();
        $articleAlls = $stmt->fetchAll();
        foreach ($articleAlls as $articleAll) {
        ?>  

    <a href="views.php?view_id=<?php echo $articleAll['id_article']; ?>" class="blog-grid-item" style="flex-direction: row;">
        <img class="img-item-blog" src="<?php echo '../uploads/'.$articleAll['header_image']; ?>"  alt="">
        <div style="width: 100%; margin-left: 20px; padding: 10px;">
          <div class="blog-grid-tag">
            <p href="" class="tag"><?php echo $articleAll['categories']; ?></p>
          </div>
          <p class="blog-grid-item-title-sm" style="  white-space: nowrap; width: 400px; overflow: hidden; text-overflow: ellipsis; "><?php echo $articleAll['title']; ?></p>
          <p class="blog-grid-item-Detail-sm all-article"></p><?php echo $articleAll['description']; ?></p>
          <p class="blog-grid-item-Detail-sm article-sec" style="max-width: 200ch;"><i class="fa-regular fa-user"></i> : <?php echo $articleAll['username'];?> <i class="fa-regular fa-eye"></i> :  <?php echo $articleAll['views'];?></p>
        </div>
      </a>
      <hr class="line-gr">

      <?php } ?>
      <hr class="line-gr">
      
    </div>
    
    <footer id="sticky-footer" class="flex-shrink-0 py-4 bg-dark text-white-50">
      <div class="container text-center">
        <small>Copyright &copy; Website</small>
      </div>
    </footer>

</body>

<?php
    $conn = null;
?>  
</html>