<?php

// function insert_blog() {
//   global $conn;

//   if (isset($_POST['blogPost'])) {
//     $blog_title = $_POST['blogTitle'];
//     $blog_content = $_POST['blogContent'];
//     $blog_category = $_POST['blogCategory'];
//     $blog_date = date('d-m-y');

//     $blog_img = $_FILES['blogImage']['name'];
//     $blog_temp_name_img = $_FILES['blogImage']['tmp_name'];
//     $blog_tag = $_POST['blogTags'];

//     move_uploaded_file($blog_temp_name_img, "../assets/images/blog/$blog_img");

//     // Use prepared statement to insert the data
//     $querynew = "INSERT INTO blogpost (blog_title, blog_image, blog_categories, blog_content, blog_tags, user_name, blog_date) ";
//     $querynew .= "VALUES (?, ?, ?, ?, ?, 'admin', ?)";

//     $stmt = mysqli_prepare($conn, $querynew);
//     mysqli_stmt_bind_param($stmt, "ssssss", $blog_title, $blog_img, $blog_category, $blog_content, $blog_tag, $blog_date);

//     if (mysqli_stmt_execute($stmt)) {
//        header("Location: newBlog.php");
//     } else {
//       die("Query not run: " . mysqli_error($conn));
//     }

//     mysqli_stmt_close($stmt);
//   }
// }


function breadcrumb($data){
  echo " <nav>
            <ol class='flex flex-wrap pt-1 mr-12 bg-transparent rounded-lg sm:mr-16 adjustBredcrum'>
              <li class='text-sm leading-normal'>
                <a class='opacity-50 text-slate-700' href='../index.php'>Dashboard</a>
              </li>
              <li class='text-sm pl-2 capitalize leading-normal text-slate-700 before:float-left before:pr-2 before:text-gray-600  aria-current='page'>/ $data</li>
            </ol>
            <h6 class='mb-0 font-bold capitalize'>$data</h6>
          </nav>
";
}



function ThreeLineMenu(){
    echo '<div class="flex items-center mt-2 grow sm:mt-0 sm:mr-6 md:mr-0 lg:flex lg:basis-auto">
    <div class="flex items-center md:ml-auto md:pr-4">
      <div class="relative flex flex-wrap items-stretch w-full transition-all rounded-lg ease-soft">
        <span class="text-sm ease-soft leading-5.6 absolute z-50 -ml-px flex h-full items-center whitespace-nowrap rounded-lg rounded-tr-none rounded-br-none border border-r-0 border-transparent bg-transparent py-2 px-2.5 text-center font-normal text-slate-500 transition-all">
          <i class="fas fa-search" aria-hidden="true"></i>
        </span>
        <input type="text" class="pl-8.75 text-sm focus:shadow-soft-primary-outline ease-soft w-1/100 leading-5.6 relative -ml-px block min-w-0 flex-auto rounded-lg border border-solid border-gray-300 bg-white bg-clip-padding py-2 pr-3 text-gray-700 transition-all placeholder:text-gray-500 focus:border-fuchsia-300 focus:outline-none focus:transition-shadow" placeholder="Type here..." />
      </div>
    </div>
    <ul class="flex flex-row justify-end pl-0 mb-0 list-none md-max:w-full">
    <li class="flex items-center pl-4 xl:hidden">
        <a href="javascript:;" class="block p-0 text-sm transition-all ease-nav-brand text-slate-500" sidenav-trigger>
          <div class="w-4.5 overflow-hidden">
            <i class="ease-soft mb-0.75 relative block h-0.5 rounded-sm bg-slate-500 transition-all"></i>
            <i class="ease-soft mb-0.75 relative block h-0.5 rounded-sm bg-slate-500 transition-all"></i>
            <i class="ease-soft relative block h-0.5 rounded-sm bg-slate-500 transition-all"></i>
          </div>
        </a>
      </li>
    </ul>
  </div>';
}


// function insert_blog() {
//   global $conn;
//   $conn = mysqli_connect("localhost","root","","blogoasis") or die("connection faild!!!");

//   if (isset($_POST['blogPost'])) {
//     $blog_title = $_POST['blogTitle'];
//     // $blog_description = $_POST['blogDescription'];
//     $blog_content = $_POST['blogContent'];
//     $blog_category= $_POST['blogCategory'];
//     // $blog_category = $_POST['blogCategory'];
//     // $blog_user = $_POST['post_user'];
//     $blog_date = date('d-m-Y');

//     $blog_img = $_FILES['blogImage']['name'];
//     $blog_temp_name_img = $_FILES['blogImage']['tmp_name'];
//     $blog_tag = $_POST['blogTags'];

//     move_uploaded_file($blog_temp_name_img, "../assets/images/blog/$blog_img");

//     $querynew ="INSERT INTO blogpost ( blog_title, blog_image, blog_categories, blog_content, blog_tags, user_name, blog_date) ";
//     $querynew .=" VALUES ( '$blog_title','$blog_img','$blog_category','$blog_content','$blog_tag','admin','$blog_date')";


//     // $query = "INSERT INTO blogpost (blog_title,blog_image, blog_categories,blog_description, blog_content, blog_tags, user_name, blog_date) ";
//     // $query .= "VALUES ('$blog_title','$blog_img','$blog_category','$blog_description','$blog_content','$blog_tag','admin','$blog_date')";

//     $query_insert_post = mysqli_query($conn, $querynew);

//     if (!$query_insert_post) {
//         die("Query not run" . mysqli_error($conn));
//     } else {
//         header("Location:blogs.php");
//     }

// }
// }


?>