<?php
    include_once('../config/db.php');
    session_start();

    
    // check if the form is submitted
if (isset($_POST['insertcontent'])) {
    // get the form data
    $category = $_POST['category'];
    $title = $_POST['title'];
    $content = $_POST['content'];
    $description = $_POST['description'];
    $username = $_SESSION['username'];
    
    date_default_timezone_set("Asia/Bangkok");
    $timestamp = date("Y-m-d H:i:s");


    $_SESSION['error'] = array();

    $date1 = date("Ymd_His");
    //สร้างตัวแปรสุ่มตัวเลขเพื่อเอาไปตั้งชื่อไฟล์ที่อัพโหลดไม่ให้ชื่อไฟล์ซ้ำกัน
    $numrand = (mt_rand());
    $img_file = (isset($_POST['img_file']) ? $_POST['img_file'] : '');
    $upload = $_FILES['img_file']['name'];

    //มีการอัพโหลดไฟล์
    if ($upload != '') {
        //ตัดขื่อเอาเฉพาะนามสกุล
        $typefile = strrchr($_FILES['img_file']['name'], ".");

        //สร้างเงื่อนไขตรวจสอบนามสกุลของไฟล์ที่อัพโหลดเข้ามา
        if ($typefile == '.jpg' || $typefile == '.jpeg' || $typefile == '.png') {

            //โฟลเดอร์ที่เก็บไฟล์
            $path = "../uploads/";
            //ตั้งชื่อไฟล์ใหม่เป็น สุ่มตัวเลข+วันที่
            $newname = $numrand . $date1 . $typefile;
            $path_copy = $path . $newname;
            //คัดลอกไฟล์ไปยังโฟลเดอร์
            move_uploaded_file($_FILES['img_file']['tmp_name'], $path_copy);
        }
    }else{
        
    }
        // validation
        if (empty($category)) {
            $_SESSION['error'] = "Please select a category";
            header("location: ../views/add-blog.php");
        }
        if (empty($title)) {
            $_SESSION['error'] = "Please enter a title";
            header("location: ../views/add-blog.php");
        }
        if (empty($content)) {
            $_SESSION['error'] = "Please enter a content";
            header("location: ../views/add-blog.php");
        }

        // check if there are any errors
        if (count($_SESSION['error']) == 0) {


            // insert the data into the database
            $stmt = $conn->prepare("INSERT INTO article_tb (title,header_image,content,description,categories,time_stamp,username) VALUES (:title,:headerimage, :content, :description, :category ,:timestamp ,:username)");
            $stmt->bindParam(':title', $title);
            $stmt->bindParam(":headerimage", $newname);
            $stmt->bindParam(':content', $content);
            $stmt->bindParam(':description', $description);
            $stmt->bindParam(':category', $category);
            $stmt->bindParam(":timestamp", $timestamp);
            $stmt->bindParam(":username", $username);
            $stmt->execute();


            $_SESSION['success'] = "Post added succesfully";
            header("location: ../views/add-blog.php");

        } else {
            // print the errors
            foreach ($errors as $error) {
                echo $error . "<br>";
            }
        }
    
}    
?>
