<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>
<?php include '../classes/Brand.php';?>
<?php // We have to edit those besis of their catId so we have to hold that.
    if(!isset($_GET['brandid']) ||$_GET ['brandid']==NULL ){ //if dont get any id then it will send to catlist.php 
        echo "<script>window.location='brandlist.php';</script>";
    }else{
        $id=$_GET ['brandid'];
    }
          $brand= new Brand();
         if ($_SERVER['REQUEST_METHOD']== 'POST'){
          $brandName = $_POST['brandName'];
          $updateBrand =$brand->brandUpdate($brandName,$id);
  }
?>
        <div class="grid_10">
            <div class="box round first grid">
                <h2>Update Brand</h2>
               <div class="block copyblock"> 
                <?php 
                if (isset($updateBrand)){
                    echo $updateBrand;
                }
                ?>
                <?php
                   $getBrand=$brand->getBrandById($id);
                   if($getBrand){
                    While($result=$getBrand->fetch_assoc()){

                
                ?>
                 <form action="" method="post">
                    <table class="form">					
                        <tr>
                            <td>
                                <input type="text" name="brandName" value="<?php echo $result['brandName'];//it will show the catname in box?>" class="medium" />
                            </td>
                        </tr>
						<tr> 
                            <td>
                                <input type="submit" name="submit" Value="Save" />
                            </td>
                        </tr>
                    </table>
                    </form>
                    <?php } } ?>
                </div>
            </div>
        </div>
<?php include 'inc/footer.php';?>