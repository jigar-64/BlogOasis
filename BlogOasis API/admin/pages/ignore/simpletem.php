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
                $data="Category";
                breadcrumb($data); 
            ?>
            <?php ThreeLineMenu(); ?>
        </div>
      </nav>

      <div class="w-full px-6 py-6 mx-auto">
        <div class="flex flex-wrap -mx-3">
          <div class="flex-none w-full max-w-full px-3">
            <div class="relative flex flex-col min-w-0 mb-6 break-words bg-white border-0 border-transparent border-solid shadow-soft-xl rounded-2xl bg-clip-border">
              
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
