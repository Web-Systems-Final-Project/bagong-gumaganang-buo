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
	<title>Contact Us</title>
	<link rel="icon" type="image/png" sizes="16x16" href="img/small leaf.png">
</head>
<body>
	<?php include 'components/header.php'; ?>
	<div class="main">
		<div class="banner4">
			<h1>contact us</h1>
		</div>
		<div class="title2">
			<a href="home.php">home </a><span>/ contact us</span>
		</div>
		
		<div class="form-container">
			 <form method="post">
			 	<div class="title">
			 		<img src="img/small leaf.png" class="logo">
			 		<h1>leave a message</h1>
			 	</div>
			 	<div class="input-field">
			 		<p>your name <sup>*</sup></p>
			 		<input type="text" name="name">
			 	</div>
			 	<div class="input-field">
			 		<p>your email <sup>*</sup></p>
			 		<input type="email" name="email">
			 	</div>
			 	<div class="input-field">
			 		<p>your number <sup>*</sup></p>
			 		<input type="text" name="number">
			 	</div>
			 	<div class="input-field">
			 		<p>your message <sup>*</sup></p>
			 		<textarea name="message"></textarea>
			 	</div>
			 	<button type="submit" name="submit-btn" class="btn">send message</button>
			 </form>
			 
		</div>
		<div class="address">
			 	<div class="title">
			 		<img src="img/small leaf.png" class="logo">
			 		<h1>contact details</h1>
			 		<p>Customer satisfaction is our priority. Reach out to us, and we'll ensure your queries are resolved promptly</p>
			 	</div>
			 	<div class="box-container">
			 		<div class="box">
			 			<i class="bx bxs-map-pin"></i>
			 			<div>
			 				<h4>address</h4>
			 				<p>2211 Taft Avenue, Malate, Manila, Philippines</p>
			 			</div>
			 		</div>
			 		<div class="box">
			 			<i class="bx bxs-phone-call"></i>
			 			<div>
			 				<h4>phone number</h4>
			 				<p>+63 920 128 7545</p>
			 			</div>
			 		</div>
			 		<div class="box">
			 			<i class="bx bxs-map-pin"></i>
			 			<div>
			 				<h4>email</h4>
			 				<p>theseedco@gmail.com</p>
			 			</div>
			 		</div>
			 	</div>
			 </div>
		<?php include 'components/footer.php'; ?>
	</div>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
	<script src="script.js"></script>
	<?php include 'components/alert.php'; ?>
</body>
</html>