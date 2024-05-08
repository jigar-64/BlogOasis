<?php include ("./includes/auth.php");?>

<?php include "includes/head.php"?> 


<!-- h-sidenav -->
<?php include "includes/navigationBar.php"; ?>
<!--end h-sidenav -->



    <main class="ease-soft-in-out xl:ml-68.5 relative h-full max-h-screen rounded-xl transition-all duration-200">
      <!-- Navbar -->
      <nav class="relative flex flex-wrap items-center justify-between px-0 py-2 mx-6 transition-all shadow-none duration-250 ease-soft-in rounded-2xl lg:flex-nowrap lg:justify-start navColor mt-4" navbar-main navbar-scroll="true">
        <div class="flex items-center justify-between w-full px-4 py-1 mx-auto flex-wrap-inherit">
            <?php  include "includes/function.php";?>
            <?php 
                $data="Blogs";
                breadcrumb($data); 
            ?>
            <?php ThreeLineMenu(); ?>
        </div>
      </nav>

      <div class="w-full px-6 py-6 mx-auto">
        <!-- table 1 -->

        <div class="flex flex-wrap -mx-3">
          <div class="flex-none w-full max-w-full px-3">
            <div class="relative flex flex-col min-w-0 mb-6 break-words bg-white border-0 border-transparent border-solid shadow-soft-xl rounded-2xl bg-clip-border">
              <div class="p-6 pb-0 mb-0 bg-white border-b-0 border-b-solid rounded-t-2xl border-b-transparent">
              <div class="d-flex justify-content-between align-items-center"> 
              <!-- <h6 class="fw-bolder"></h6> -->
              <p class="h5  text-dark fw-bolder">BLOGS</p>
              <a href="./newBlog.php" class="btn btn-primary">+</a>              
              </div>
              </div>
              <div class="flex-auto px-0 pt-0 pb-2">
                <div class="p-6 overflow-x-auto">
                  <div class="table-responsive">
                  <table class="table  table-hover table-borderless text-center">
                      <thead class="table-light">
                        <tr>
                          <th>No</th>
                          <th>Blog Title</th>
                          <th>Blog Image</th>
                          <th>Blog Category</th>
                          <th>Created By</th>
                          <th>Date</th>
                          <th>Actions</th>
                        </tr>
                      </thead>
                      <tbody>
                            <?php
                                    $query=  "SELECT * FROM blogpost ";
                                    $result= mysqli_query($conn,$query) or die("query Faild");
                                    while($blog=mysqli_fetch_assoc($result)){
                            ?>
                            <tr>
                              <td> <?php echo $blog['blog_id']; ?> </td>
                              <td><?php echo $blog['blog_title']; ?></td>
                              <td><img src="../assets/images/blog/<?php echo $blog['blog_image'];?>" class="img-thumbnail" alt="Not Found"></td>
                              <td><?php echo $blog['blog_categories']; ?></td>
                              <td><?php echo $blog['user_name']; ?></td>
                              <td><?php $a= $blog['blog_date']; echo $formattedDate = date('d-m-Y', strtotime($a)); ?></td>
                               <td>
                                <!--<a href="crud/editblog.php"><i class="fa-solid fa-pen"></i></a> -->
                               <a href=" crud/deleteblog.php?delete=<?php echo $blog['blog_id'];?> " >
                                 <i class="fa-regular fa-trash-can fa-shake" style="color: #e20808;"></i>
                              </a>
                              </td>
                            </tr>
                            <?php };?>
                      </tbody>
                  </table>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <!-- card 2 -->

       
        
        <!-- fotter -->
        <?php include "includes/footer.php"; ?>
        <!-- fotter -->
      </div>
    </main>
                          
<!-- Scripts -->
  <?php include "includes/script.php"?> 
<!-- End Scripts -->

</html>
