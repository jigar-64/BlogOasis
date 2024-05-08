<?php
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');

$data = json_decode(file_get_contents("php://input"), true);


$blog_category = $data['cat_name'];

include "./connection.php";

$sql = "SELECT * FROM blogpost WHERE blog_categories = '{$blog_category}'";

$result = mysqli_query($conn, $sql) or die("SQL Query Failed.");

if(mysqli_num_rows($result) > 0 ){

	$output = mysqli_fetch_all($result, MYSQLI_ASSOC);
	 echo json_encode(array('data' => $output, 'status' => true));
}
else{

 echo json_encode(array('message' => 'No Record Found.', 'status' => false));

}   

?>
