<?php
    include_once('../config/db.php');

if(isset($_POST['btn_update'])) {
    // Collect the data from the form
    echo $id = $_POST["id"];
    $title = $_POST['title'];
    $content = $_POST['content'];
    $categories = $_POST['category'];
    $img = $_FILES['headerimage'];

    // Validate the data
    if(empty($title)) {
        echo $_SESSION['error'] = "Please enter a title";
    }
    if(empty($content)) {
        echo $_SESSION['error'] = "Please enter some content";
    }
    if(empty($categories)) {
        echo $_SESSION['error'] = "Please select at least one category";
    }
    if(empty($headerimage)) {
        echo $_SESSION['error'] = "Please select a header image";
    }

    $upload = $_FILES['headerimage']['name'];

    if ($upload != '') {
        $allow = array('jpg', 'jpeg', 'png');
        $extension = explode(".", $img['name']);
        $fileActExt = strtolower(end($extension));
        $fileNew = rand() . "." . $fileActExt;
        $filePath = "../uploads/".$fileNew;

        if (in_array($fileActExt, $allow)) {
            if ($img['size'] > 0 && $img['error'] == 0) {
                move_uploaded_file($img['tmp_name'], $filePath);
            }
        }
    } 

    // If there are no errors, update the data
    if(empty($_SESSION['error'])) {
        $query = "UPDATE article_tb SET title = :title, header_image = :headerimage, content = :content, categories = :categories WHERE id_article = :id";
        $stmt = $conn->prepare($query);
        $stmt->bindParam(':id', $id);
        $stmt->bindParam(':title', $title);
        $stmt->bindParam(':content', $content);
        $stmt->bindParam(':categories', $categories);
        $stmt->bindParam(':headerimage', $fileNew);
        $stmt->execute();
        // Redirect the user to a success page
        echo $_SESSION['success'] = "Data updated succesfully";
        // header("Location: success.php");
        exit;
    }
}

?>