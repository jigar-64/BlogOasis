<?php
// include_once './../configuration/connection.php';
session_start();
define('BASE_URL', 'http://localhost/blogoasis/admin/pages');

if (!isset($_SESSION["user_id"])) {
    header('Location:' .BASE_URL .'\sign-in.php'); // Redirect to the login page if not logged in
    exit();
}

?>
