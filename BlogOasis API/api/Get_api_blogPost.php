<?php

header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');

include "connection.php";

$query = "SELECT * FROM blogpost";
$result = mysqli_query($conn, $query) or die("Query Failed");

if (mysqli_num_rows($result) > 0) {
    $output = mysqli_fetch_all($result, MYSQLI_ASSOC);
    echo json_encode(array('data' => $output, 'status' => true));
} else {
    echo json_encode(array('message' => 'No records found.', 'status' => false));
}

?>