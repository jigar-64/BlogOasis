<?php
session_start();
define('BASE_URL', 'http://localhost/blogoasis/admin/pages');
if (isset($_SESSION["user_id"]) && isset($_SESSION["user_role"])) {
    $user_id = $_SESSION["user_id"];
    $user_role = $_SESSION["user_role"];

    if ($user_role === "user") {
        // Allow access to user-specific pages
    } elseif ($user_role === "admin") {
        header('Location:' .BASE_URL .'\sign-in.php'); // Redirect to the login page if not logged in
        exit();
    } else {
        // Handle unknown role or unauthorized access
    }
} else {
    // Redirect to login page if not logged in
    header("Location: login.php");
    exit();
}




// old

// include_once './../configuration/connection.php';

// session_start();
// define('BASE_URL', 'http://localhost/blogoasis/admin/pages');

// if (!isset($_SESSION["user_id"])) {
//     header('Location:' .BASE_URL .'\sign-in.php'); // Redirect to the login page if not logged in
//     exit();
// }

?>
