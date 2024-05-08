<?php
include ("../../configuration/connection.php");

if (isset($_POST['register'])) {
    $user_name = $_POST['user_name'];
    $user_email = $_POST['user_email'];
    $user_phone_no = $_POST['user_phoneNo'];
    $user_password = $_POST['user_pass'];

    // Hash the password
    $hashed_password = password_hash($user_password, PASSWORD_DEFAULT);

    $user_img = $_FILES['user_img']['name'];
    $user_temp_name_img = $_FILES['user_img']['tmp_name'];
    move_uploaded_file($user_temp_name_img, "../../assets/images/user/$user_img");

    $query = "INSERT INTO user (user_name, user_email, user_password, user_phone_no, user_image) VALUES (?,?,?,?,?)";

    $stmt = $conn->prepare($query);

    $stmt->bind_param("sssss", $user_name, $user_email, $hashed_password, $user_phone_no ,$user_img);

    $insert_category = $stmt->execute();

    if ($insert_category) {
        header("Location: ../sign-in.php");
        exit();
    } else {
        echo "Error: " . $stmt->error;
    }

    $stmt->close();
    $conn->close();
}
?>
