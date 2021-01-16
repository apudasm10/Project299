<?php include 'inc/header.php';?>
<?php
    $login = Session :: get("cuslogin");
    if ($login==false) {
        header("Location:login.php");
    }
?>
<style>
	.payment {width: 500px;min-height: 200px;text-align: center;border: 1px solid #ddd;margin: 0 auto;padding: 50px;
  background-image: url("images/haww.png");
  border-radius: 50px;
  margin-bottom: 20px;
}
	.payment h2{border-bottom: 1px solid #ddd;margin-bottom: 40px;padding-bottom: 10px;    padding-top: 10px;
    background: #c5c5c5;
}
    .payment h2 p{
        font-weight: bold;
    color: #562e2e;
}
	.payment a{background: #ff0000 none repeat scroll 0 0;border-radius: 3px;color: #fff;font-size: 25px;padding: 5px 30px;background: #483131;
    }
	.back a{width: 160px;margin: 5px auto 0;padding: 7px 0;text-align: center;display: block;background: #555;border: 1px solid #333;color: #fff; border-radius: 3px; font-size: 25px;  
      border-radius: 50px;
    background: #585151;
    box-shadow: 20px -20px 60px #bebebe, -20px 20px 60px #ffffff;}
</style>
 <div class="main">
    <div class="content">
    	<div class="paymentdis group">
    			<div class="payment">
    				<h2><p>Choose Payment Option</p></h2>
    				<a href="paymentoffline.php">Offline payment</a>
    				<a href="paymentonline.php">Online payment</a>
    			</div>
    			<div class="back">
    				<a href="cart.php">Previous</a>>
    			</div>
 		</div>
 	</div>
	</div>
   <?php include 'inc/footer.php';?>

