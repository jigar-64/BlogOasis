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
            <div class="text-center p-6 pb-0 mb-0 bg-white border-b-0 border-b-solid rounded-t-2xl border-b-transparent">
              
              <div class="d-flex justify-content-between align-items-center"> 
              <!-- <h6 class="fw-bolder"></h6> -->
              <p class="h5  text-dark fw-bolder">Category</p>
              <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#newCategory" >+</button>

             
              </div>
              </div>
              <div class="flex-auto px-0 pt-0 pb-2">
                <div class="p-6 overflow-x-auto">
            <table class="table  table-hover table-borderless text-center" id="Category_tabel">
                      <thead class="table-light ">
                        <tr>
                          <th>No</th>
                          <th>Category Name</th>
                          <th>Actions</th>
                        </tr>
                      </thead>
                      <tbody>
                            <?php
                                    $query=  "SELECT * FROM blog_category ";
                                    $result= mysqli_query($conn,$query) or die("query Faild");
                                    while($cat=mysqli_fetch_assoc($result)){
                            ?>
                            <tr>
                              <td><?php echo $cat['cat_id']; ?></td>
                              <td><?php echo $cat['cat_name']; ?></td>
                              
                              <td>
                                    <button type="button" class="" data-bs-toggle="modal" data-bs-target="#editModel" data-bs-whatever="<?php echo $cat['cat_id']; ?>" data-bs-new="<?php echo $cat['cat_name']; ?>">
                                      <i class="fa-solid fa-pen"></i>
                                    </button>
                                  <a href="crud/deleteCategory.php?category_id=<?php echo $cat['cat_id'];?>">
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


       
        
        <!-- fotter -->
        <?php include "includes/footer.php"; ?>
        <!-- fotter -->
      </div>
    </main>
   
<!-- Scripts -->

<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<script src="https://cdn.datatables.net/1.13.6/js/dataTables.bootstrap5.min.js"></script>
<script>
new DataTable('#Category_tabel');
</script>
  <?php include "includes/script.php"?> 
<!-- End Scripts -->


<!-- modal -->
<div class="modal fade" id="newCategory" tabindex="-1" aria-labelledby="newCategoryLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="newCategoryLabel">New Category</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
         <form action="./crud/addCategory.php" method="post">
              <div class="modal-body">
                  <div class="mb-3">
                    <label for="newCategory" class="col-form-label">Category:</label>
                    <input type="text" class="form-control" id="newCategory" name="newCategory">
                  </div> 

                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>  
                    <button type="submit" class="btn btn-primary" name="ADD">ADD</button>
                  </div> 
            </div>
         </form>
    </div>
  </div>
</div>
<!-- end modal -->




<!-- edit modal -->


<div class="modal fade" id="editModel" tabindex="-1" aria-labelledby="editModelLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="editModelLabel">Edit Category</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form action="./crud/update_Category.php" method="post">
          <div class="mb-3">
            <label for="Category_id" class="col-form-label">Category Id:</label>
            <input type="text" class="form-control" id="Category_id" name="Category_id" readonly>
          </div>
          <div class="mb-3">
            <label for="Category_name" class="col-form-label">Category Name:</label>
            <input type="text" class="form-control one" id="Category_name" name="Category_name">
          </div>
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary" name="updateCategory">Update</button>
      </div>
      </form>
    </div>
  </div>
</div>

<!-- script -->
<script>
  const editModel = document.getElementById('editModel')
  editModel.addEventListener('show.bs.modal', event => {
  // Button that triggered the modal
  const button = event.relatedTarget
  // Extract info from data-bs-* attributes
  const recipient = button.getAttribute('data-bs-whatever')
  // If necessary, you could initiate an AJAX request here
  // and then do the updating in a callback.
  //data-bs-new
  const newtry = button.getAttribute('data-bs-new')
  console.log(recipient);
  // Update the modal's content.
  const modalTitle = editModel.querySelector('.modal-title')
  const modalBodyInput = editModel.querySelector('.modal-body input')
  const modalBody = editModel.querySelector('.modal-body .one')

  // modalTitle.textContent = `New message to`
  modalBodyInput.value = recipient
  modalBody.value = newtry

})
</script>
<!-- end edit modal -->
</html>

