<?php
include ("../../configuration/connection.php");

if (isset($_POST['register'])) {
    $user_name = $_POST['userName'];
    $user_email = $_POST['userEmail'];
    $comment = $_POST['user_phone_no'];
    $user_password = $_POST['blog_id'];

    $user_img = $_FILES['blogImage']['name'];
    $user_temp_name_img = $_FILES['blogImage']['tmp_name'];
    move_uploaded_file($user_temp_name_img, "../../assets/images/user/$user_img");


$query = "INSERT INTO blog_comment (user_name, user_email, user_password, user_phone_no, user_image) VALUES (?,?,?,?,?)";

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