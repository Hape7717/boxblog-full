<?php
    session_start();
    include_once('../config/db.php');
    if (isset($_POST['signup'])) {
        
        $id = $_POST['id'];
        $username = $_POST['username'];
        $email = $_POST['email'];
        $password = $_POST['password'];

        if (empty($id)) {
            $_SESSION['error'] = 'ID is required';
            header("location: ../views/profile.php");
        }elseif (empty($username)) {
            $_SESSION['error'] = 'username is required';
            header("location: ../views/profile.php");
        }elseif (empty($email)) {
            $_SESSION['error'] = 'Email is required';
            header("location: ../views/profile.php");
        }elseif (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
            $_SESSION['error'] = 'Invalid email format';
            header("location: ../views/profile.php");
        }else{
        
        try {
                $stmt = $conn->prepare("UPDATE users SET username = :username, email = :email, password = :password WHERE id = :id");
                $stmt->bindParam(':username', $username);
                $stmt->bindParam(':email', $email);
                $stmt->bindParam(':password', $password);
                $stmt->bindParam(':id', $id);
                $stmt->execute();

                $_SESSION['success'] = 'Record updated successfully';
                $_SESSION['username'] = $username;
                header("location: ../views/profile.php");

            } catch(PDOException $e) {
                echo $e->getMessage();
        }
    }
}
?>