<?php

header('Content-Type: application/json');
header('Access-Control-Allow-Origin:*');

$data= json_decode(file_get_contents("php://input"),true);

$id = json_encode($data['id']) ;


include "connection.php";

$query=  "SELECT * FROM blog_category where `cat_id` = '{id}' ";  
$result= mysqli_query($conn,$query) or die("query Faild");


if(mysqli_num_rows($result)>0){
    $output = mysqli_fetch_all($result,MYSQLI_ASSOC);
    echo json_encode($output);

}
else{
    echo json_encode(array('message'=>'no record found.','satus'=>false));
}

?>