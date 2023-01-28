<?php
    session_start();
    include_once('../config/db.php');
    if (isset($_POST['signup'])) {
        
        $id = $_POST['id'];
        $username = $_POST['username'];
        $email = $_POST['email'];
        $password = $_POST['password'];


        $stmt = $conn->prepare("SELECT header_image FROM article_tb WHERE id_article = ?");
        $stmt->execute([$id]);
        $articles = $stmt->fetch();
    
        $_SESSION['error'] = array();
    
        $date1 = date("Ymd_His");
        //สร้างตัวแปรสุ่มตัวเลขเพื่อเอาไปตั้งชื่อไฟล์ที่อัพโหลดไม่ให้ชื่อไฟล์ซ้ำกัน
        $numrand = (mt_rand());
        $img_file = (isset($_POST['headerimage']) ? $_POST['headerimage'] : '');
        $upload = $_FILES['headerimage']['name'];
    
        //มีการอัพโหลดไฟล์
        if ($upload != '') {
            //ตัดขื่อเอาเฉพาะนามสกุล
            $typefile = strrchr($_FILES['headerimage']['name'], ".");
    
            //สร้างเงื่อนไขตรวจสอบนามสกุลของไฟล์ที่อัพโหลดเข้ามา
            if ($typefile == '.jpg' || $typefile == '.jpeg' || $typefile == '.png') {
    
                //โฟลเดอร์ที่เก็บไฟล์
                $path = "../uploads/";
                //ตั้งชื่อไฟล์ใหม่เป็น สุ่มตัวเลข+วันที่
                $newname = $numrand . $date1 . $typefile;
                $path_copy = $path . $newname;
                //คัดลอกไฟล์ไปยังโฟลเดอร์
                move_uploaded_file($_FILES['headerimage']['tmp_name'], $path_copy);
            }
        }else{
            $newname = $articles['header_image'];
        }
        
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