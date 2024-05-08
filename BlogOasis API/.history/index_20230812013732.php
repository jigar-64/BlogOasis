<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=s, initial-scale=1.0">
    <title>Document</title>
    <!-- link custom css -->
    <link rel="stylesheet" href="public\assets\css\custom.css">
    <link rel="stylesheet" href="public\assets\css\style.css">
    <link rel="stylesheet" href="public\assets\css\responsive.css">
    <!-- link flowbits css -->
    <link rel="stylesheet" href="public\assets\css\flowbits.css">

</head>

<body>

    <!-- navigation bar -->
    <nav
        class="transperentBackground dark:bg-gray-900 fixed w-full z-20 top-0 left-0 border-b border-gray-200 dark:border-gray-600">
        <div class="max-w-screen-xl flex flex-wrap items-center justify-between mx-auto p-4">
            <a href="#" class="flex items-center">
                <img src="public\image\LOGO\logo.png" class="h-8 mr-3" alt="BlogOasis Logo" />

            </a>
            <div class="flex md:order-2">
                <button type="button" data-collapse-toggle="navbar-search" aria-controls="navbar-search"
                    aria-expanded="false"
                    class="md:hidden  dark:text-gray-400 hover:bg-gray-100 dark:hover:bg-gray-700 focus:outline-none focus:ring-4 focus:ring-gray-200 dark:focus:ring-gray-700 rounded-lg text-sm p-2.5 mr-1">
                    <svg class="w-5 h-5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none"
                        viewBox="0 0 20 20">
                        <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                            d="m19 19-4-4m0-7A7 7 0 1 1 1 8a7 7 0 0 1 14 0Z" />
                    </svg>
                    <span class="sr-only">Search</span>
                </button>
                <div class="relative hidden md:block">
                    <form class="flex items-center" action="#" method="post">
                        <label for="simple-search" class="sr-only">Search</label>
                        <div class="relative w-full">
                            <div class="absolute inset-y-0 left-0 flex items-center pl-3 pointer-events-none">
                                <svg class="w-4 h-4 text-gray-500 dark:text-gray-400" aria-hidden="true"
                                    xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 18 20">
                                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                                        stroke-width="2"
                                        d="M3 5v10M3 5a2 2 0 1 0 0-4 2 2 0 0 0 0 4Zm0 10a2 2 0 1 0 0 4 2 2 0 0 0 0-4Zm12 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4Zm0 0V6a3 3 0 0 0-3-3H9m1.5-2-2 2 2 2" />
                                </svg>
                            </div>
                            <input type="text" id="simple-search"
                                class="block w-full p-2 pl-10 text-sm text-gray-900 border border-gray-300 rounded-lg bg-gray-50 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                                placeholder="Search Category & Tags " required>
                        </div>
                        <button type="submit"
                            class="p-2.5 ml-2 text-sm font-medium text-white bg-blue-700 rounded-lg border border-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
                            <svg class="w-4 h-4" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none"
                                viewBox="0 0 20 20">
                                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                                    stroke-width="2" d="m19 19-4-4m0-7A7 7 0 1 1 1 8a7 7 0 0 1 14 0Z" />
                            </svg>
                            <span class="sr-only">Search</span>
                        </button>
                    </form>
                </div>
                <button data-collapse-toggle="navbar-search" type="button"
                    class="inline-flex items-center p-2 w-10 h-10 justify-center text-sm  rounded-lg md:hidden  focus:outline-none focus:ring-2 focus:ring-gray-200 dark:text-gray-400 dark:hover:bg-gray-700 dark:focus:ring-gray-600"
                    aria-controls="navbar-search" aria-expanded="false">
                    <span class="sr-only">Open main menu</span>
                    <svg class="w-5 h-5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none"
                        viewBox="0 0 17 14">
                        <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                            d="M1 1h15M1 7h15M1 13h15" />
                    </svg>
                </button>
            </div>
            <div class="items-center justify-between hidden w-full md:flex md:w-auto md:order-1" id="navbar-search">
                <div class="relative mt-3 md:hidden">
                    <div class="absolute inset-y-0 left-0 flex items-center pl-3 pointer-events-none">
                        <svg class="w-4 h-4 text-gray-500 dark:text-gray-400" aria-hidden="true"
                            xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 20 20">
                            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                d="m19 19-4-4m0-7A7 7 0 1 1 1 8a7 7 0 0 1 14 0Z" />
                        </svg>
                    </div>
                    <form class="flex items-center" action="#" method="post">
                        <label for="simple-search" class="sr-only">Search</label>
                        <div class="relative w-full">
                            <div class="absolute inset-y-0 left-0 flex items-center pl-3 pointer-events-none">
                                <svg class="w-4 h-4 text-gray-500 dark:text-gray-400" aria-hidden="true"
                                    xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 18 20">
                                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                                        stroke-width="2"
                                        d="M3 5v10M3 5a2 2 0 1 0 0-4 2 2 0 0 0 0 4Zm0 10a2 2 0 1 0 0 4 2 2 0 0 0 0-4Zm12 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4Zm0 0V6a3 3 0 0 0-3-3H9m1.5-2-2 2 2 2" />
                                </svg>
                            </div>
                            <input type="text" id="simple-search"
                                class="block w-full p-2 pl-10 text-sm text-gray-900 border border-gray-300 rounded-lg bg-gray-50 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                                placeholder="Search Blog Related to Category or Tags" required>
                        </div>
                        <button type="submit"
                            class="p-2.5 ml-2 text-sm font-medium text-white bg-blue-700 rounded-lg border border-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
                            <svg class="w-4 h-4" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none"
                                viewBox="0 0 20 20">
                                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                                    stroke-width="2" d="m19 19-4-4m0-7A7 7 0 1 1 1 8a7 7 0 0 1 14 0Z" />
                            </svg>
                            <span class="sr-only">Search</span>
                        </button>
                    </form>
                </div>
                <ul
                    class="flex flex-col p-4 md:p-0 mt-4 font-medium border border-gray-100 rounded-lg md:flex-row md:space-x-8 md:mt-0 md:border-0  dark:bg-gray-800 md:dark:bg-gray-900 dark:border-gray-700">
                    <li>
                        <a href="#"
                            class="block py-2 pl-3 pr-4 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700 md:p-0 md:dark:hover:text-blue-500 dark:text-white dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent dark:border-gray-700"
                            aria-current="page">Home</a>
                    </li>
                    <li>
                        <a href="#"
                            class="block py-2 pl-3 pr-4 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700 md:p-0 md:dark:hover:text-blue-500 dark:text-white dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent dark:border-gray-700">About</a>
                    </li>
                    <li>
                        <a href="#"
                            class="block py-2 pl-3 pr-4 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700 md:p-0 dark:text-white md:dark:hover:text-blue-500 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent dark:border-gray-700">Contact
                            Us</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- navigation bar over -->
    <!-- Main Content Section -->
<main>
    <div class="container mx-auto ">
        <div class="container flex flex-col space-y-4 items-center">
            <h1 class="typeAnimation">BlogOasis <span></span></h1>
        </div>

        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
            <!-- Repeat this card structure for each blog -->
            <!-- You can adjust the number of cards as needed -->
            <?php
                        include "./admin/configuration/connection.php";

                        /* Calculate Offset Code */
                        $limit = 3;
                        if(isset($_GET['page'])){
                          $page = $_GET['page'];
                        }else{
                          $page = 1;
                        }
                        $offset = ($page - 1) * $limit;

                        $query=  "SELECT * FROM blogpost ORDER BY blog_id DESC LIMIT {$offset},{$limit} ";
                                    $result= mysqli_query($conn,$query) or die("query Faild");
                                    while($blog=mysqli_fetch_assoc($result)){
?>
            <!-- Card 1 -->
            <div class="bg-white rounded-lg shadow-md overflow-hidden" data-aos="fade-up">
                <img src=".\admin\assets\images\blog\<?php echo $blog['blog_image'];?>" alt="Blog Image" class="w-full h-48 object-cover">
                <div class="p-4">
                    <h2 class="text-xl font-semibold text-gray-800 mb-2"><?php echo $blog['blog_title']; ?></h2>
                    <p class="text-gray-600"><?php echo $blog['blog_description']; ?>.</p>
                    <div class="mt-4">
                        <a href="#" class="text-blue-500 hover:underline">Read more</a>
                    </div>
                </div>
            </div>
           <?php }; ?>
            <!-- End of Card 1 -->

            <!-- Repeat similar card structures for more blogs (Card 2 to Card 10) -->
            <!-- <div class="bg-white rounded-lg shadow-md overflow-hidden" data-aos="fade-up">
                <img src="path_to_your_image_1.jpg" alt="Blog Image" class="w-full h-48 object-cover">
                <div class="p-4">
                    <h2 class="text-xl font-semibold text-gray-800 mb-2">Blog Title 1</h2>
                    <p class="text-gray-600">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    <div class="mt-4">
                        <a href="#" class="text-blue-500 hover:underline">Read more</a>
                    </div>
                </div>
            </div> <div class="bg-white rounded-lg shadow-md overflow-hidden" data-aos="fade-up">
                <img src="path_to_your_image_1.jpg" alt="Blog Image" class="w-full h-48 object-cover">
                <div class="p-4">
                    <h2 class="text-xl font-semibold text-gray-800 mb-2">Blog Title 1</h2>
                    <p class="text-gray-600">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    <div class="mt-4">
                        <a href="#" class="text-blue-500 hover:underline">Read more</a>
                    </div>
                </div>
            </div> <div class="bg-white rounded-lg shadow-md overflow-hidden" data-aos="fade-up">
                <img src="path_to_your_image_1.jpg" alt="Blog Image" class="w-full h-48 object-cover">
                <div class="p-4">
                    <h2 class="text-xl font-semibold text-gray-800 mb-2">Blog Title 1</h2>
                    <p class="text-gray-600">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    <div class="mt-4">
                        <a href="#" class="text-blue-500 hover:underline">Read more</a>
                    </div>
                </div>
            </div> <div class="bg-white rounded-lg shadow-md overflow-hidden" data-aos="fade-up">
                <img src="path_to_your_image_1.jpg" alt="Blog Image" class="w-full h-48 object-cover">
                <div class="p-4">
                    <h2 class="text-xl font-semibold text-gray-800 mb-2">Blog Title 1</h2>
                    <p class="text-gray-600">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    <div class="mt-4">
                        <a href="#" class="text-blue-500 hover:underline">Read more</a>
                    </div>
                </div>
            </div> <div class="bg-white rounded-lg shadow-md overflow-hidden" data-aos="fade-up">
                <img src="path_to_your_image_1.jpg" alt="Blog Image" class="w-full h-48 object-cover">
                <div class="p-4">
                    <h2 class="text-xl font-semibold text-gray-800 mb-2">Blog Title 1</h2>
                    <p class="text-gray-600">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    <div class="mt-4">
                        <a href="#" class="text-blue-500 hover:underline">Read more</a>
                    </div>
                </div>
            </div> <div class="bg-white rounded-lg shadow-md overflow-hidden" data-aos="fade-up">
                <img src="path_to_your_image_1.jpg" alt="Blog Image" class="w-full h-48 object-cover">
                <div class="p-4">
                    <h2 class="text-xl font-semibold text-gray-800 mb-2">Blog Title 1</h2>
                    <p class="text-gray-600">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    <div class="mt-4">
                        <a href="#" class="text-blue-500 hover:underline">Read more</a>
                    </div>
                </div>
            </div> -->
            <!-- Make sure to update content, image URLs, and other details -->

        </div>
<?php
        $sql1 = "SELECT * FROM blogpost";
                        $result1 = mysqli_query($conn, $sql1) or die("Query Failed.");

                        if(mysqli_num_rows($result1) > 0){

                          $total_records = mysqli_num_rows($result1);

                          $total_page = ceil($total_records / $limit);

                        //   echo '<ul class="pagination admin-pagination">';
                          if($page > 1){
                            echo '<a href="index.php?page='.($page - 1).'" class="px-3 py-2 bg-blue-500 text-white rounded-l hover:bg-blue-600">Previous</a>';
                          }
                          for($i = 1; $i <= $total_page; $i++){
                            if($i == $page){
                              $active = "active";
                            }else{
                              $active = "";
                            }
                            echo '<li class="'.$active.'"><a href="index.php?page='.$i.'">'.$i.'</a></li>';
                          }
                          if($total_page > $page){
                            echo '                <a href="index.php?page='.($page + 1).'" class="px-3 py-2 bg-blue-500 text-white rounded-r hover:bg-blue-600">Next</a>
                            ';
                          }

                          echo '</ul>';
                        }
                        ?>
        <!-- Pagination -->
        <!-- <div class="mt-8 flex justify-center pagination">
            <nav class="flex items-center">
                <a href="#" class="px-3 py-2 bg-blue-500 text-white rounded-l hover:bg-blue-600">Previous</a>
                <a href="#" class="px-3 py-2 bg-blue-500 text-white hover:bg-blue-600">1</a>
                <a href="#" class="px-3 py-2 bg-blue-500 text-white hover:bg-blue-600">2</a>
                <a href="#" class="px-3 py-2 bg-blue-500 text-white rounded-r hover:bg-blue-600">Next</a>
            </nav>
        </div> -->
        <!-- End of Pagination -->
    </div>
</main>
<!-- End of Main Content Section -->

    
    <!-- footer -->
    <footer
        class="fixed bottom-0 left-0 z-20 w-full p-4 transperentBackground border-t border-gray-200 shadow md:flex md:items-center md:justify-between md:p-6 dark:bg-gray-800 dark:border-gray-600">

        <span class="text-sm  sm:text-center dark:text-gray-400"> © 2023 <a href="#"
                class="hover:underline">Flowbite™</a>. All Rights Reserved.
        </span>
        <ul class="flex flex-wrap items-center mt-3 text-sm font-medium  dark:text-gray-400 sm:mt-0">
            <li>
                <a href="#" class="mr-4 hover:underline md:mr-6">About</a>
            </li>
            <li>
                <a href="#" class="mr-4 hover:underline md:mr-6">Privacy Policy</a>
            </li>
            <li>
                <a href="#" class="mr-4 hover:underline md:mr-6">Licensing</a>
            </li>
            <li>
                <a href="#" class="hover:underline">Contact</a>
            </li>
        </ul>
    </footer>
    <!-- end footer -->

</body>
<script src="public\assets\js\flowbits.js"></script>
<script src="public\assets\js\customScript.js"></script>

</html>