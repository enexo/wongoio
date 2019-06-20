<?php include "db.php"; ?>
<?php session_start(); ?>

<?php
if (isset($_POST['login'])) {

	$username = $_POST['username'];
	// This data should be hashed in some sort. I recommend hasing it in the db
	// https://www.sitepoint.com/hashing-passwords-php-5-5-password-hashing-api/
	$password = $_POST['password'];

	$username = mysqli_real_escape_string($connection, $username);
	$password = mysqli_real_escape_string($connection, $password);

	$query = "SELECT * FROM users WHERE username = '{$username}'";
	$selectUserQuery = mysqli_query($connection, $query);

	if (!$selectUserQuery) {
		die("Query Failed" . mysqli_error($connection));
	}

	while ($row = mysqli_fetch_array($selectUserQuery)) {
		$db_id = $row['userId'];
		$db_username = $row['username'];
		$db_password = $row['password'];
		$db_firstName = $row['firstName'];
		$db_lastName = $row['lastName'];
		$db_role = $row['role'];
	}

	//check if UN and PW are correct. If not, back to index.php
	if ($username === $db_username && password_verify($password, $db_password)) {
		$_SESSION['username'] = $db_username;
		$_SESSION['firstName'] = $db_firstName;
		$_SESSION['lastName'] = $db_lastName;
		$_SESSION['role'] = $db_role;

		header("Location: ../dataEntry.php");
	} else {
		header("Location: ../index.php");
	}
}
?>
