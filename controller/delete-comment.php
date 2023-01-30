<?php
session_start();
include_once('../config/db.php');
$views = $_SESSION['views'];

if (isset($_GET['delete'])) {
    $delete_id = $_GET['delete'];
    $deletestmt = $conn->query("DELETE FROM article_comment WHERE id_comm = $delete_id");
    $deletestmt->execute();
    header("location: ../views/views.php?view_id=".$views."#comment_under");

}

?>