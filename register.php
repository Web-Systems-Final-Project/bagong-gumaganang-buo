<?php 
	include 'components/connection.php';
	session_start();
	
	if (isset($_SESSION['user_id'])) {
		$user_id = $_SESSION['user_id'];
		header("location: home.php"); // redirect to home.php if user is already logged in
	} else {
		$user_id = '';
	}
	
	//register user
	
	
	if (isset($_POST['submit'])) {
		// $id = unique_id();
		$name = filter_var($_POST['name'], FILTER_SANITIZE_STRING);
		$email = filter_var($_POST['email'], FILTER_SANITIZE_STRING);
		$pass = filter_var($_POST['pass'], FILTER_SANITIZE_STRING);
		$cpass = filter_var($_POST['cpass'], FILTER_SANITIZE_STRING);
		$user_type = filter_var($_POST['user_type'], FILTER_SANITIZE_STRING);
	
		$select_user = $conn->prepare("SELECT * FROM `users` WHERE email = ?");
		$select_user->execute([$email]);
		$row = $select_user->fetch(PDO::FETCH_ASSOC);
	
		if ($select_user->rowCount() > 0) {
			$warning_msg[] = 'Email already exists';
		} else {
			if ($pass != $cpass) {
				$warning_msg[] = 'Passwords do not match';
			} else {
				// Hash the password before storing it in the database
				// $hashed_password = password_hash($pass, PASSWORD_DEFAULT);
	
				$insert_user = $conn->prepare("INSERT INTO `users` (
				 name, email, password, user_type) VALUES ( ?, ?, ?, ?)");
				$insert_user->execute([ 
				$name, $email, $pass, $user_type]);
	
				// Check if the user was inserted successfully
				if ($insert_user->rowCount() > 0) {
					$redirect_page = $user_type === 'admin' ? 'admin.php' : 'home.php';
					header("location: $redirect_page");
	
					// Log in the user after registration
					$select_user = $conn->prepare("SELECT * FROM `users` WHERE email = ?");
					$select_user->execute([$email]);
					$row = $select_user->fetch(PDO::FETCH_ASSOC);
					if ($select_user->rowCount() > 0) {
						$_SESSION['user_id'] = $row['id'];
						$_SESSION['user_name'] = $row['name'];
						$_SESSION['user_email'] = $row['email'];
						$_SESSION['user_type'] = $row['user_type'];
					}
				} else {
					$warning_msg[] = 'Failed to register user';
				}
			}
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
	<title>The Seed Co. - Registration</title>
</head>
<body>
	<div class="main-container">
		<section class="form-container">
			<div class="title">
				<img src="img/small leaf.png">
				<h1>register now</h1>
				<p>We're happy to have you join us. Please fill out the registration form to continue.</p>
			</div>
			<form action="" method="post">
				<div class="input-field">
					<p>full name <sup>*</sup></p>
					<input type="text" name="name" required placeholder="Maria Cruz" maxlength="50">
				</div>
				<div class="input-field">
					<p>email <sup>*</sup></p>
					<input type="email" name="email" required placeholder="mariacruz@gmail.com" maxlength="50" oninput="this.value = this.value.replace(/\s/g, '')">
				</div>
				<div class="input-field">
					<p>enter a password<sup>*</sup></p>
					<input type="password" name="pass" required placeholder="●●●●●●" maxlength="50" oninput="this.value = this.value.replace(/\s/g, '')">
				</div>
				<div class="input-field">
					<p>confirm your password <sup>*</sup></p>
					<input type="password" name="cpass" required placeholder="●●●●●●" maxlength="50" oninput="this.value = this.value.replace(/\s/g, '')">
				</div>
				<div class="input-field">
    				<p>account type <sup>*</sup></p>
    				<select name="user_type" id="user_type" required>
        			<option value="user">User</option>
        			<option value="admin">Admin</option>
    				</select>
				</div>

				<input type="submit" name="submit" value="register now" class="btn">
				<p>Already have an account? <a href="login.php">Login now.</a></p>
			</form>
		</section>
	</div>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
	<?php include 'components/alert.php'; ?>
</body>
</html>