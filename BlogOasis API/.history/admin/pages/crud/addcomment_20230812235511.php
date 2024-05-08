<?php
include ("../../configuration/connection.php");

if (isset($_POST['comment'])) {
    $blog_id = $_POST['blog_id'];
    $user_name = $_POST['userName'];
    $user_email = $_POST['userEmail'];
    $comment = $_POST['comment'];
    $comment_date = date('Y-m-d');




$query = "INSERT INTO blog_comment (blog_id, c_name, c_email, c_comment, c_date) VALUES (?,?,?,?,?)";

$stmt = $conn->prepare($query);

$stmt->bind_param("sssss", $blog_id,$user_name,$user_email,$comment,$comment_date);

$insert_category = $stmt->execute();

if ($insert_category) {
    header("Location: ../../../blog.php?id=$blog_id");
    exit();
} else {
    echo "Error: " . $stmt->error;
}

$stmt->close();
$conn->close();
}
?>