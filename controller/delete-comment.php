<?php
session_start();
include_once('../config/db.php');

if (isset($_GET['delete'])) {
    $delete_id = $_GET['delete'];
    $deletestmt = $conn->query("DELETE FROM article_comment WHERE id = $delete_id");
    $deletestmt->execute();
    
    if ($deletestmt) {
        echo "<script>alert('Data has been deleted successfully');</script>";
        $_SESSION['success'] = "Data has been deleted succesfully";
        header("refresh:1; url=views.php?view_id=");
    }
}

?>