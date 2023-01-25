<?php 

    session_start();
    include_once('../config/db.php');

    if (isset($_POST['signin'])) {
        $username = $_POST['username'];
        echo    $password = $_POST['password'];

      
        if (empty($username)) {
            $_SESSION['error'] = 'Please enter your username!';
            header("location: ../views/login.php");
        } else if (empty($password)) {
            $_SESSION['error'] = 'Please enter your password';
            header("location: ../views/login.php");
        } else if (strlen($_POST['password']) > 20 || strlen($_POST['password']) < 5) {
            $_SESSION['error'] = 'The password must be between 5 and 20 characters long.';
            header("location: ../views/login.php");
        } else {
            try {

                $check_data = $conn->prepare("SELECT * FROM users WHERE username = :username");
                $check_data->bindParam(":username", $username);
                $check_data->execute();
                $row = $check_data->fetch(PDO::FETCH_ASSOC);
                // $password2 = $row['password'];
                if ($check_data->rowCount() > 0) {

                    if ($username == $row['username']) {
                        if ($password === $row['password']) {
                            if ($row['role'] == 'admin') {
                                echo $_SESSION['admin_login'] = $row['role'];
                                echo $_SESSION['username'] = $username;
                                // echo $row['password'];
                                header("location: ../views/index.php");
                            } else {
                                echo $_SESSION['user_login'] = $row['role'];
                                echo $_SESSION['username'] = $username;
                                echo $row['password'];
                                header("location: ../views/index.php");
                            }
                        } else {
                            echo $_SESSION['error'] = 'wrong password';
                            header("location: ../views/login.php");
                        }
                    } else {
                        echo $_SESSION['error'] = 'wrong email';
                        header("location: ../views/login.php");
                    }
                } else {
                    echo $_SESSION['error'] = "There is no information in the system.";
                    header("location: ../views/login.php");
                }

            } catch(PDOException $e) {
                echo $e->getMessage();
            }
        }
    }


?>