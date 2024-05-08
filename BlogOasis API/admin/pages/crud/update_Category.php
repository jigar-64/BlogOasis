
<?php include ("../includes/auth.php");?>

<?php 
include ("../../configuration/connection.php");

if (isset($_POST['updateCategory'])) {
    $category_id = $_POST['Category_id'];
    $new_category_name = $_POST['Category_name'];

    // Prepare the SQL statement with a placeholder
    $query = "UPDATE blog_category SET cat_name = ? WHERE cat_id = ?";

    // Create a prepared statement
    $stmt = $conn->prepare($query);

    // Bind the parameters to the placeholders
    $stmt->bind_param("si", $new_category_name, $category_id);

    // Execute the prepared statement
    $update_category = $stmt->execute();

    // Check if the query was successful
    if ($update_category) {
        header("Location: ../Category.php");
        exit();
    } else {
        echo "Error: " . $stmt->error;
    }

    $stmt->close();
    $conn->close();
}
?>
