<?php  
	$conn = mysql_connect('localhost', 'ixtw_foodfinder', '@f00df!nd3RrRr');
	 if (!$conn)
    {
	 die('Could not connect: ' . mysql_error());
	}
	mysql_select_db("ixtw_foodfinder", $conn);
?>

