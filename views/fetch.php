<?php
//fetch.php

include_once('../config/db.php');

if(isset($_POST["query"]))
{
 $search = mysqli_real_escape_string($connect, $_POST["query"]);
 $query = "
  SELECT * FROM article_tb 
  WHERE title LIKE '%".$search."%'
  OR content LIKE '%".$search."%' 
  OR description LIKE '%".$search."%' 
  OR categories LIKE '%".$search."%' 
 ";
}
else
{
 $query = "
  SELECT * FROM article_tb ORDER BY id_article
 ";
}
$result = mysqli_query($connect, $query);
if(mysqli_num_rows($result) > 0)
{
 while($row = mysqli_fetch_array($result))
 {
  $output .= '
  <a href="views.php?view_id='.$row['id_article'].'" class="blog-grid-item" style="flex-direction: row;">
        <img class="img-item-blog" src="../uploads/'.$row['header_image'].'"  alt="">
        <div style="width: 100%; margin-left: 20px; padding: 10px;">
          <div class="blog-grid-tag">
            <p href="" class="tag">'.$row['categories'].'</p>
          </div>
          <p class="blog-grid-item-title-sm" style="  white-space: nowrap; width: 400px; overflow: hidden; text-overflow: ellipsis; ">'.$row['title'].'</p>
          <p class="blog-grid-item-Detail-sm all-article"></p>'.$row['description'].'</p>
          <p class="blog-grid-item-Detail-sm article-sec" style="max-width: 200ch; text-transform: capitalize;"><i class="fa-regular fa-user"></i> : '.$row['username'].' <i class="fa-regular fa-eye"></i> :  '.$row['views'].'</p>
        </div>
      </a>
      <hr class="line-gr">
  ';
 }
 echo $output;
}
else
{
while ($row) {
    echo '
 <a href="views.php?view_id=' . $row['id_article'] . '" class="blog-grid-item" style="flex-direction: row;">
 <img class="img-item-blog" src="../uploads/' . $row['header_image'] . '"  alt="">
 <div style="width: 100%; margin-left: 20px; padding: 10px;">
   <div class="blog-grid-tag">
     <p href="" class="tag">' . $row['categories'] . '</p>
   </div>
   <p class="blog-grid-item-title-sm" style="  white-space: nowrap; width: 400px; overflow: hidden; text-overflow: ellipsis; ">' . $row['title'] . '</p>
   <p class="blog-grid-item-Detail-sm all-article"></p>' . $row['description'] . '</p>
   <p class="blog-grid-item-Detail-sm article-sec" style="max-width: 200ch; text-transform: capitalize;"><i class="fa-regular fa-user"></i> : ' . $row['username'] . ' <i class="fa-regular fa-eye"></i> :  ' . $row['views'] . '</p>
 </div>
</a>
<hr class="line-gr">
 ';
}
}

?>