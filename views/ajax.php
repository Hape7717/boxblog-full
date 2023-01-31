<?php
//fetch.php

include_once('../config/db.php');

// Getting the value of "search" variable from "script.js".
if (isset($_POST['search'])) {
  // Search box value assigning to $Name variable.
  $Name = $_POST['search'];

  // Search query.
  $query = "SELECT * FROM article_tb";
  $whereClause = "";
  
  if ($Name != "") {
    // If search criteria is set, fetch the data based on the search criteria
    $whereClause = " WHERE title LIKE :search OR content LIKE :search OR categories LIKE :search";
  }
  
  // Preparing the query for execution
  $query = $query . $whereClause;
  $stmt = $conn->prepare($query);
  
  // Binding search value to the parameter
  if ($Name != "") {
    $stmt->bindValue(':search', '%' . $Name . '%');
  }

  // Executing the query
  $stmt->execute();
 
  // Fetching result from database.
  while ($Result = $stmt->fetch(PDO::FETCH_ASSOC)) {
?>
  <!-- Creating unordered list items.
  Calling javascript function named as "fill" found in "script.js" file.
  By passing fetched result as parameter. -->
  <a href="views.php?view_id=<?php echo $Result['id_article']; ?>" class="blog-grid-item" style="flex-direction: row;">
    <img class="img-item-blog" src="<?php echo '../uploads/'.$Result['header_image']; ?>"  alt="">
    <div style="width: 100%; margin-left: 20px; padding: 10px;">
      <div class="blog-grid-tag">
        <p href="" class="tag"><?php echo $Result['categories']; ?></p>
      </div>
      <p class="blog-grid-item-title-sm"><?php echo $Result['title']; ?></p>
      <p class="blog-grid-item-Detail-sm all-article"></p><?php echo $Result['description']; ?></p>
      <p class="blog-grid-item-Detail-sm article-sec" style="max-width: 200ch; text-transform: capitalize;"><i class="fa-regular fa-user"></i> : <?php echo $Result['username'];?> <i class="fa-regular fa-eye"></i> :  <?php echo $Result['views'];?></p>
    </div>
  </a>
  <hr class="line-gr">
  <?php
}
}else{
  
}
?>
<hr class="line-gr">
