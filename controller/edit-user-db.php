<?php
    session_start();
    include_once('../config/db.php');
    if (isset($_POST['signup'])) {
        
        $id = $_POST['id'];
        $email = $_POST['email'];
        $password = $_POST['password'];
        $role = $_POST['role'];

        if (empty($role)) {
            $_SESSION['error'] = 'Please select user rights.';
            header("location: ../views/edit-user.php");
        }elseif (empty($id)) {
            $_SESSION['error'] = 'ID is required';
            header("location: ../views/edit-user.php");
        }elseif (empty($email)) {
            $_SESSION['error'] = 'Email is required';
            header("location: ../views/edit-user.php");
        }elseif (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
            $_SESSION['error'] = 'Invalid email format';
            header("location: ../views/edit-user.php");
        }else{
        
        try {
                $stmt = $conn->prepare("UPDATE users SET email = :email, password = :password, role = :role WHERE id = :id");
                $stmt->bindParam(':email', $email);
                $stmt->bindParam(':password', $password);
                $stmt->bindParam(':role', $role);
                $stmt->bindParam(':id', $id);
                $stmt->execute();

                $_SESSION['success'] = 'Record updated successfully';
                $_SESSION['id'] = $id;
                header("location: ../views/edit-user.php");

            } catch(PDOException $e) {
                echo $e->getMessage();
        }
    }
}
?>