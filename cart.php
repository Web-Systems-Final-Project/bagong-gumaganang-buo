<?php 
 include 'components/connection.php';
 session_start();
 if (isset($_SESSION['user_id'])) {
		$user_id = $_SESSION['user_id'];
	}else{
		$user_id = '';
	}

	if (isset($_POST['logout'])) {
		session_destroy();
		header("location: login.php");
	}
	//update product in cart

	if (isset($_POST['update_cart'])) {
		$cart_id = $_POST['cart_id'];
		$cart_id = filter_var($cart_id, FILTER_SANITIZE_STRING);
		$qty = $_POST['qty'];
		$qty = filter_var($qty, FILTER_SANITIZE_STRING);

		$update_qty = $conn->prepare("UPDATE `cart` SET qty = ? WHERE id = ?");
		$update_qty->execute([$qty, $cart_id]);

		$success_msg[] = 'cart quantity updated successfully';
	}
	

	//delete item from wishlist
	if (isset($_POST['delete_item'])) {
		$cart_id = $_POST['cart_id'];
		$cart_id = filter_var($cart_id, FILTER_SANITIZE_STRING);

		$varify_delete_items = $conn->prepare("SELECT * FROM `cart` WHERE id =?");
		$varify_delete_items->execute([$cart_id]);

		if ($varify_delete_items->rowCount()>0) {
			$delete_cart_id = $conn->prepare("DELETE FROM `cart` WHERE id = ?");
			$delete_cart_id->execute([$cart_id]);
			$success_msg[] = "cart item delete successfully";
		}else{
			$warning_msg[] = 'cart item already deleted';
		}
	}

	//empty cart
	if (isset($_POST['empty_cart'])) {
		$varify_empty_item = $conn->prepare("SELECT * FROM `cart` WHERE user_id=?");
		$varify_empty_item->execute([$user_id]);

		if ($varify_empty_item->rowCount() > 0) {
			$delete_cart_id = $conn->prepare("DELETE FROM `cart` WHERE user_id = ?");
			$delete_cart_id->execute([$user_id]);
			$success_msg[] = "empty successfully";
		}else{
			$warning_msg[] = 'cart item already deleted';
		}
		
	}
?>
<style type="text/css">
	<?php include 'style.css'; ?>
</style>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
	<title>Cart</title>
	<link rel="icon" type="image/png" sizes="16x16" href="img/small leaf.png">
</head>
<body>
	<?php include 'components/header.php'; ?>
	<div class="main">
		<div class="banner7">
			<h1>my cart</h1>
		</div>
		<div class="title2">
			<a href="home.php">home </a><span>/ cart</span>
		</div>
		<section class="products">
			<h1 class="title">products added in wishlist</h1>
			<div class="box-container">
				<?php 
					$grand_total = 0;
					$select_wishlist = $conn->prepare("SELECT * FROM `wishlist` WHERE user_id = ?");
					$select_wishlist->execute([$user_id]);
					if ($select_wishlist->rowCount()>0) {
						while($fetch_wishlist = $select_wishlist->fetch(PDO::FETCH_ASSOC)){
							$select_products = $conn->prepare("SELECT * FROM `products` WHERE id= ?");
							$select_products->execute([$fetch_wishlist['product_id']]);
							if ($select_products->rowCount()> 0 ) {
								$fetch_products = $select_products->fetch(PDO::FETCH_ASSOC)
							
				?>
				<form method="post" action="" class="box">
					<input type="hidden" name="wishlist_id" value="<?=$fetch_wishlist['id']; ?>">
					<img src="image/<?=$fetch_products['image']; ?>">
					<div class="button">
						<button type="submit" name="add_to_cart"><i class="bx bx-cart"></i></button>
						<a href="view_page.php?pid=<?php echo $fetch_products['id']; ?>" class="bx bxs-show"></a>
						<button type="submit" name="delete_item" onclick="return confirm('delete this item');"><i class="bx bx-x"></i></button>
					</div>
					<h3 class="name"><?=$fetch_products['name']; ?></h3>
					<input type="hidden" name="product_id" value="<?=$fetch_products['id']; ?>">
					<div class="flex">
						<p class="price">price $<?=$fetch_products['price']; ?>/-</p>
					</div>
					<a href="checkout.php?get_id=<?=$fetch_products['id']; ?>" class="btn">buy now</a>
				</form>
				<?php 
							$grand_total+=$fetch_wishlist['price'];
							}
						}
					}else{
						echo '<p class="empty">no products added yet!</p>';
					}
				?>
			</div>
		</section>
		<?php include 'components/footer.php'; ?>
	</div>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
	<script src="script.js"></script>
	<?php include 'components/alert.php'; ?>
</body>
</html>