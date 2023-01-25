<?php 

    session_start();
    include_once('../config/db.php');

    if (isset($_POST['signup'])) {
        $username = $_POST['username'];
        $email = $_POST['email'];
        $password = $_POST['password'];
        $c_password = $_POST['c_password'];
        $urole = 'user';

        if (empty($username)) {
            $_SESSION['error'] = 'Please enter your username';
            header("location: ../views/register.php");
        } else if (empty($email)) {
            $_SESSION['error'] = 'Please enter your email';
            header("location: ../views/register.php");
        } else if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
            $_SESSION['error'] = 'Invalid email format';
            header("location: ../views/register.php");
        } else if (empty($password)) {
            $_SESSION['error'] = 'Please enter your password';
            header("location: ../views/register.php");
        } else if (strlen($_POST['password']) > 20 || strlen($_POST['password']) < 5) {
            $_SESSION['error'] = 'The password must be between 5 and 20 characters long.';
            header("location: ../views/register.php");
        } else if (empty($c_password)) {
            $_SESSION['error'] = 'Please confirm your password.';
            header("location: ../views/register.php");
        } else if ($password != $c_password) {
            $_SESSION['error'] = 'Passwords do not match';
            header("location: ../views/register.php");
        } else {
            try {

                $check_user = $conn->prepare("SELECT username FROM users WHERE username = :username");
                $check_user->bindParam(":username", $username);
                $check_user->execute();
                $row = $check_user->fetch(PDO::FETCH_ASSOC);

                if ($row['username'] == $username) {
                    $_SESSION['warning'] = "This username is already in the system!";
                    header("location: ../views/register.php");
                } else if (!isset($_SESSION['error'])) {
                    $stmt = $conn->prepare("INSERT INTO users(username, password, email, role) 
                                            VALUES(:username, :password, :email, :urole)");
                    $stmt->bindParam(":username", $username);
                    $stmt->bindParam(":password", $password);
                    $stmt->bindParam(":email", $email);
                    $stmt->bindParam(":urole", $urole);
                    $stmt->execute();
                    $_SESSION['success'] = "You have successfully subscribed!";
                    header("location: ../views/register.php");
                } else {
                    $_SESSION['error'] = "something went wrong";
                    header("location: ../views/register.php");
                }

            } catch(PDOException $e) {
                echo $e->getMessage();
            }
        }
    }


?>