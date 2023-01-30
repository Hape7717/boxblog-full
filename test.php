
<?php
    include_once('config/db.php');
$stmt = $conn->prepare("SELECT avatar FROM users WHERE id = ?");
        $stmt->execute(['poom']);
        $articles = $stmt->fetch();

        echo $articles;

?>