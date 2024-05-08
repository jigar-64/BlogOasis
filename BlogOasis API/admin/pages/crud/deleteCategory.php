<?php include ("../includes/auth.php");?>

<?php
include ("../../configuration/connection.php");


    // Assuming 'category_id' is the identifier for the category to be deleted.
    $category_id = $_GET['category_id'];

    // Prepare the SQL statement with a placeholder
    $query = "DELETE FROM blog_category WHERE cat_id = ? ";

    // Create a prepared statement
    $stmt = $conn->prepare($query);

    // Bind the parameter to the placeholder
    $stmt->bind_param("i", $category_id);

    // Execute the prepared statement
    $delete_category = $stmt->execute();

    // Check if the query was successful
    if ($delete_category) {
        header("Location: ../Category.php");
        exit();
    } else {
        echo "Error: " . $stmt->error;
    }

    // Close the statement and connection
    $stmt->close();
    $conn->close();

?>
