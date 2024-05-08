<?php
include ("../../configuration/connection.php");

if (isset($_POST['blogPost'])) {
    $blog_id = $_POST['blog_id'];
    $blog_content = $_POST['blogContent'];
    $blog_description = $_POST['blogDescription'];

$query = "INSERT INTO blog_comment (blog_id, c_name, c_email, c_comment, c_date) VALUES (?,?,?,?,?)";

$stmt = $conn->prepare($query);

$stmt->bind_param("sssss", $category_name);

$insert_category = $stmt->execute();

if ($insert_category) {
    header("Location: ../Category.php");
    exit();
} else {
    echo "Error: " . $stmt->error;
}

$stmt->close();
$conn->close();
}
?>