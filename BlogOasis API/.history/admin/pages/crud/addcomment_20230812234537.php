<?php
include ("../../configuration/connection.php");


$query = "INSERT INTO blog_comment (blog_id, c_name, c_email, c_comment, c_date) VALUES (?,?,?,?,?)";

$stmt = $conn->prepare($query);

$stmt->bind_param("s", $category_name);

$insert_category = $stmt->execute();

if ($insert_category) {
    header("Location: ../Category.php");
    exit();
} else {
    echo "Error: " . $stmt->error;
}

$stmt->close();
$conn->close();

?>