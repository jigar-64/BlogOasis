<?php include ("../includes/auth.php");?>

<?php
$conn = mysqli_connect("localhost","root","","blogoasis") or die("connection faild!!!");

if (isset($_GET['delete'])) {
    $blog_id = $_GET['delete'];
    $query = "DELETE FROM blogpost WHERE blog_id = '$blog_id'";
    $delete_blog_query = mysqli_query($conn, $query);

    if ($delete_blog_query) {
        header("Location: ../blogs.php");
    }
}

?>