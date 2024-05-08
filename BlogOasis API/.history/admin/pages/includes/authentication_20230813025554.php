
<?php
session_start();
include "../../configuration/connection.php"; // Include your database connection script

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $username = $_POST["useremail"];
    $password = $_POST["userpassword"];

    $sql = "SELECT user_id, user_password FROM user WHERE user_email = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $stmt->bind_result($user_id, $stored_password);
    $stmt->fetch();

    if (password_verify($password, $stored_password)) {
        // Password is correct, create a session
        $_SESSION["user_id"] = $user_id;
        header("Location: ../../index.php"); // Redirect to the dashboard or protected page
        exit();
    } else {
        // Invalid credentials, show an error message
        echo "Invalid username or password";
    }
}
?>

