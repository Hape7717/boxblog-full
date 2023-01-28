<?php
    include_once('../config/db.php');


        // check if the form is submitted
if (isset($_POST['btn_update'])) {
    // get the form data
    $id = $_POST["id"];
    $category = $_POST['category'];
    $title = $_POST['title'];
    $content = $_POST['content'];
    $description = $_POST['description'];

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
        // Validate the data


    // If there are no errors, update the data
    if(empty($_SESSION['error'])) {
        $query = "UPDATE article_tb SET title = :title, header_image = :headerimage, content = :content, categories = :categories WHERE id_article = :id";
        $stmt = $conn->prepare($query);
        $stmt->bindParam(':id', $id);
        $stmt->bindParam(':title', $title);
        $stmt->bindParam(':content', $content);
        $stmt->bindParam(':categories', $category);
        $stmt->bindParam(':headerimage', $newname);
        $stmt->execute();
        // Redirect the user to a success page
        echo $_SESSION['success'] = "Data updated succesfully";
        header("Location: ../views/edit-blog.php?update_id=".$id);
        exit;
    }
}

?>