<?php

$conn = new mysqli('localhost', 'root', '', 'library');


if($conn->connect_errno){
	echo $db->connect_error;
	//die( '<br />Sorry we are having some problems');

}

?>