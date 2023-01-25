<?php 

    session_start();
    require_once '../config/db.php';
    
    if(!isset($_SESSION['admin_login'])){
        header("location: index.php");
    }


    if (isset($_GET['delete'])) {
        $delete_id = $_GET['delete'];
        $deletestmt = $conn->query("DELETE FROM users WHERE id = $delete_id");
        $deletestmt->execute();
        
        if ($deletestmt) {
            echo "<script>alert('Data has been deleted successfully');</script>";
            $_SESSION['success'] = "Data has been deleted succesfully";
            header("refresh:1; url=index.php");
        }
    }
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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.1/css/jquery.dataTables.min.css">

    <!-- sweetalert2 -->
    <link rel="stylesheet" href="sweetalert2.min.css">
    <!-- end sweetalert2 -->

    <title>Manage User</title>
    <link rel="icon" type="image/jpg" href="img/logo/PNG/327316533_1188676491793928_5497790955519278487_n.jpg"/>

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
        <p># Manage User</p>
        <h1>All User in Box Blog</h1>
    </div>
    <div class="container-our-blog" id="all-blog">
        <h2 style="font-size: 25px; color: #2F200A; font-weight: 700;">Manage User</h2>
    </div>

    <div class="container" style="margin-top: 100px; margin-bottom: 100px;">
        
    <table id="myTable" class="table">
        <thead>
            <th>Username</th>
            <th>Password</th>
            <th>Email</th>
            <th>Privileges</th>
            <th>Option</th>
        </thead>
        <tbody>
<?php
    $user_stmt = $conn->prepare("SELECT * FROM users");
    $user_stmt->execute();
    // set the resulting array to associative
    $result = $user_stmt->setFetchMode(PDO::FETCH_ASSOC);
                    
    foreach($user_stmt->fetchAll() as $users) {
                ?>
                <tr>
                    <td data-label="Name Blog"><?php echo $users['username']; ?></td>
                    <td data-label="type"><?php echo $users['password']; ?></td>
                    <td data-label="type"><?php echo $users['email']; ?></td>
                    <td data-label="type"><?php echo $users['role']; ?></td>
                    <td data-label="Option">
                        <a class="btn-diy" href="edit-user.php?id=<?php echo $users['id']; ?>">Edit</a>
                        <!-- <a class='btn-diy-2' href="?delete=">Delete</a> -->
                        <a data-id="<?php echo $users['id']; ?>" href="?delete=<?php echo $users['id']; ?>" class="btn-diy-2 delete-btn">Delete</a>
                    </td>
                </tr>
                <?php } ?>
            </tbody>        
        </table>
    </div>


</div>
<footer id="sticky-footer" class="flex-shrink-0 py-4 bg-dark text-white-50">
    <div class="container text-center">
      <small>Copyright &copy; Website</small>
    </div>
</footer>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>

<script>   
    $(document).ready( function () {
        $('#myTable').DataTable();
    } );
</script>

        <script>
            $(".delete-btn").click(function(e) {
                        var userId = $(this).data('id');
                        e.preventDefault();
                        deleteConfirm(userId);
                    })

                    function deleteConfirm(userId) {
                        Swal.fire({
                            title: 'Are you sure?',
                            text: "It will be deleted permanently!",
                            showCancelButton: true,
                            cancelButtonColor: '#7E7979',
                            confirmButtonColor: '#684107',
                            confirmButtonText: 'Yes, delete it!',
                            showLoaderOnConfirm: true,
                            preConfirm: function() {
                                return new Promise(function(resolve) {
                                    $.ajax({
                                            url: 'manage-user.php',
                                            type: 'GET',
                                            data: 'delete=' + userId,
                                        })
                                        .done(function() {
                                            Swal.fire({
                                                title: 'success',
                                                text: 'Data deleted successfully!',
                                                icon: 'success',
                                            }).then(() => {
                                                document.location.href = 'manage-user.php';
                                            })
                                        })
                                        .fail(function() {
                                            Swal.fire('Oops...', 'Something went wrong with ajax !', 'error')
                                            window.location.reload();
                                        });
                                });
                            },
                        });
                    }
    </script>

            <!-- action to edit_data.php end -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.1.0/mdb.min.js"></script>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="sweetalert2.all.min.js"></script>


<?php
    $conn = null;
?>
</body>
</html>