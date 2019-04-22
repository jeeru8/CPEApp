<?php 
	// Create Connection
	$servername = "localhost";
	$username = "root";
	$password = "";
	$db = "library";

	// Create connection
	$conn = mysqli_connect($servername, $username, $password, $db);

	// Check connection
	if (!$conn) {
	    die("Connection failed: " . mysqli_connect_error());
	}
	$select = "DELETE FROM books WHERE book_number = '".$_GET['del_id']."'";
	$query = mysqli_query($conn, $select) or die ($select);
	header("location: books.php");

?>