<?php
session_start();
if (!isset($_SESSION['client_login'])) {
	header('Location: index.php');
	exit();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Client Dashboard</title>
	<link href="img/gcs.ico" rel="shortcut icon">
</head>
<body>
	<a href="logout.php">logout</a>
</body>
</html>