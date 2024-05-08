<?php
// include_once './../configuration/connection.php';
session_start();
define('BASE_URL', 'http://localhost/blogoasis/admin/pages/');
if (isset($_SESSION["user_id"]) && isset($_SESSION["user_role"])) {
    $user_id = $_SESSION["user_id"];
    $user_role = $_SESSION["user_role"];
    
    if ($user_role === "user") {
        header('Location:' .BASE_URL .'blogs.php');
    } elseif ($user_role === "admin") {
        
    } else {
        echo "you are not any user";
    }
} else {
    // Redirect to login page if not logged in
    header('Location:' .BASE_URL .'/sign-in.php');
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
