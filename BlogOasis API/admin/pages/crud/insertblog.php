
<?php include ("../includes/auth.php");?>

<?php
$conn = mysqli_connect("localhost","root","","blogoasis") or die("connection faild!!!");

if (isset($_POST['blogPost'])) {
    $blog_title = $_POST['blogTitle'];
    $blog_content = $_POST['blogContent'];
    $blog_description = $_POST['blogDescription'];

    $blog_category = $_POST['blogCategory'];
    $blog_date = date('Y-m-d');

    $blog_img = $_FILES['blogImage']['name'];
    $blog_temp_name_img = $_FILES['blogImage']['tmp_name'];
    $blog_tag = $_POST['blogTags'];

    move_uploaded_file($blog_temp_name_img, "../../assets/images/blog/$blog_img");

    // Use prepared statement to insert the data
    $querynew = "INSERT INTO blogpost (blog_title, blog_image, blog_categories, blog_description, blog_content, blog_tags, user_name, blog_date) ";
    $querynew .= "VALUES (?, ?, ?, ?, ?, ?, 'admin', ?)";

    $stmt = mysqli_prepare($conn, $querynew);
    mysqli_stmt_bind_param($stmt, "sssssss", $blog_title, $blog_img, $blog_category, $blog_description, $blog_content, $blog_tag, $blog_date);

    if (mysqli_stmt_execute($stmt)) {
       header("Location: ../blogs.php");
       exit();
    } else {
      die("Query not run: " . mysqli_error($conn));
    }

    mysqli_stmt_close($stmt);
  }

?>