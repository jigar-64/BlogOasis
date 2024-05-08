<?php include ("../includes/auth.php");?>

<?php 
include ("../../configuration/connection.php");

$category_name = $_POST['newCategory'];

$query = "INSERT INTO blog_category (cat_name) VALUES (?)";

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
