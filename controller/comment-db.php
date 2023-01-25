<?php 

    session_start();
    include_once('../config/db.php');

    if (isset($_POST['comm'])) {
        $username = $_POST['user_comment'];
        $id_article = $_POST['id_article'];
        $comment = $_POST['comment'];

        // $views_id = array();

        if (empty($username)) {
            echo $_SESSION['error'] = 'User not logged in';
            // echo $views_id['id'] = $id_article;
            header("location: ../views/views.php?view_id=".$id_article."#comment_under");

        } else if (empty($comment)) {
            echo $_SESSION['error'] = 'Please enter your thoughts in the comment box.';
            // echo $views_id['id'] = $id_article;
            header("location: ../views/views.php?view_id=".$id_article."#comment_under");

        } else if (empty($id_article)) {
            echo $_SESSION['error'] = 'Article ID not found';
            // echo $views_id['id'] = $id_article;
            header("location: ../views/views.php?view_id=".$id_article."#comment_under");

        } else {
            try {

            if (!isset($_SESSION['error'])) {
                    $stmt = $conn->prepare("INSERT INTO article_comment(comment, username, id_article) 
                                            VALUES(:comment, :username, :id_article)");
                    $stmt->bindParam(":comment", $comment);
                    $stmt->bindParam(":username", $username);
                    $stmt->bindParam(":id_article", $id_article);
                    $stmt->execute();
                    echo $_SESSION['success'] = "Done commenting!";
                    // echo $views_id['id'] = $id_article;
                    header("location: ../views/views.php?view_id=".$id_article."#comment_under");

                } else {
                    echo $_SESSION['error'] = "something went wrong";
                    // echo $views_id['id'] = $id_article;
                    header("location: ../views/views.php?view_id=".$id_article."#comment_under");

                }

            } catch(PDOException $e) {
                echo $e->getMessage();
            }
        }
    }


?>