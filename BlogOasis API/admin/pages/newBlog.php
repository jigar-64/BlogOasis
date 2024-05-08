<?php include ("./includes/auth.php");?>

<?php include "includes/head.php"?>



<!-- h-sidenav -->
<?php include "includes/navigationBar.php";?>
<!--end h-sidenav -->


<main class="ease-soft-in-out xl:ml-68.5 relative h-full max-h-screen rounded-xl transition-all duration-200">
  <!-- Navbar -->
  <nav
    class="relative flex flex-wrap items-center justify-between px-0 py-2 mx-6 transition-all shadow-none duration-250 ease-soft-in rounded-2xl lg:flex-nowrap lg:justify-start navColor mt-4"
    navbar-main navbar-scroll="true">
    <div class="flex items-center justify-between w-full px-4 py-1 mx-auto flex-wrap-inherit">
      <?php  include "includes/function.php";?>
      <?php 
                $data="Create a New Blog";
                breadcrumb($data); 
            ?>
      <?php ThreeLineMenu(); ?>
    </div>
  </nav>

  <div class="w-full px-6 py-6 mx-auto">
    <!-- table 1 -->
    <div
      class="relative flex flex-col min-w-0 mb-6 break-words bg-white border-0 border-transparent border-solid shadow-soft-xl rounded-2xl bg-clip-border">
      <!--    <div class="p-6 pb-0 mb-0 bg-white border-b-0 border-b-solid rounded-t-2xl border-b-transparent">
                <h6>BLOGS</h6>
              </div>
              <div class="flex-auto px-0 pt-0 pb-2">
                <div class="p-0 overflow-x-auto">
                  
                </div>
              </div>
            </div> -->

      <!-- <form action="/submit" method="post" class="needs-validation" novalidate>
                      <div class="form-group">
                        <label for="title">Title</label>
                        <input type="text" class="form-control" id="title" name="title" required>
                        <div class="invalid-feedback">Please enter a title.</div>
                      </div>
                      <div class="form-group">
                        <label for="image">Image</label>
                        <input type="text" class="form-control" id="image" name="image">
                        <div class="invalid-feedback">Please enter an image URL.</div>
                      </div>
                      <div class="form-group">
                        <label for="description">Description</label>
                        <textarea class="form-control" id="description" name="description" rows="5"></textarea>
                        <div class="invalid-feedback">Please enter a description.</div>
                      </div>
                      <div class="form-group">
                        <label for="category">Category</label>
                        <select class="form-control" id="category" name="category">
                          <option value="1">Category 1</option>
                          <option value="2">Category 2</option>
                          <option value="3">Category 3</option>
                        </select>
                      </div>
                      <div class="form-group">
                        <label for="tags">Tags</label>
                        <input type="text" class="form-control" id="tags" name="tags">
                        <div class="invalid-feedback">Please enter some tags.</div>
                      </div>
                      <div class="form-group">
                        <label for="posting_date">Posting Date</label>
                        <input type="date" class="form-control" id="posting_date" name="posting_date">
                      </div>
                <button class="btn btn-primary" type="submit">Submit</button>
              </form> -->
      <div class="flex flex-wrap -mx-3">
        <div class="flex-none w-full max-w-full px-3">
          <div class="container mt-2 mb-4 w-75 ">
            <h2 class="text-center ">
              Create Blog
            </h2>

            <form action="crud/insertblog.php" method="post" enctype="multipart/form-data">

              <div class="form-group mb-2">
                <label for="blogTitle fw-bolder">Blog Title:</label>
                <input type="text" class="form-control" id="blogTitle" name="blogTitle" placeholder="Enter Title Of Blog" required>
              </div>
              <div class="form-group mb-2">
                <label for="blogDescription fw-bolder">Description</label>
                <input type="text" class="form-control" id="blogDescription" name="blogDescription" placeholder="Enter 3-4 Line Description About Blog" required>
              </div>
              <!-- <div class="form-group mb-2">
                <label for="blogDescription">Description</label>
                <textarea class="form-control textareaResize" id="blogDescription" name="blogDescription " rows="2" placeholder="Enter 3-4 Line Description About Blog" required></textarea>
              </div> -->

              <div class="form-group mb-2">
                <label for="blogContent">Blog content:</label>
                <textarea class="form-control textareaResize" id="blogContent" name="blogContent" rows="7"  placeholder="Enter Full Description About Blog" required></textarea>
              </div>
                             
              <div class="form-group mb-2">
                <label for="blogCategory">Category:</label>
                <select class="form-control" id="blogCategory" name="blogCategory" required>
                <option value="">Select Category</option>
                        <?php
                                $query=  "SELECT * FROM blog_category ";
                                $result= mysqli_query($conn,$query) or die("query Faild");
                                while($cat=mysqli_fetch_assoc($result)){
                        ?>
                      <option value="<?php echo $cat['cat_name']; ?>">
                          <?php echo $cat['cat_name']; ?>
                      </option>
                      <?php };?>
                </select>
              </div>
              <div class="form-group mb-2">
                <label for="blogImage">Select Image:</label>
                <input type="file" class="form-control" id="blogImage" name="blogImage" required>
              </div>
              
              <div class="form-group mb-2">
                <label for="blogTags">Blog Tags (multiple):</label>
                <input type="text" class="form-control " id="blogTags" name="blogTags"
                  placeholder="Enter tags separated by commas" required>
              </div>
              
              <button type="submit" class="btn btn-primary" name="blogPost">Submit</button>
            </form>
          </div>


        </div>
      </div>
    </div>
    <!-- fotter -->
    <?php include "includes/footer.php"; ?>
    <!-- fotter -->
  </div>
</main>

            <!-- <script>
              ClassicEditor
                .create(document.querySelector('#blogDescription'))
                .then(editor => {
                  console.log(editor);
                  config.height = '300px';
                })
                .catch(error => {
                  console.error(error);
                });
        </script> -->

   <!-- <script>
      // Required For Bootstrap 5 & 4
          $('#blogTags').tagsinput({
            tagClass: 'badge bg-info',
          });
    </script> -->
        <!-- Scripts -->
                    <?php include "includes/script.php"?>
        <!-- End Scripts -->







</html>