<?php

	// Create connection
	$database_connection = mysqli_connect('127.0.0.1', 'root', 'root', 'php1Database', 9001); // HOMEWORK: write your connection

	// Check connection
	if (mysqli_connect_errno()) {
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
	}

	// class createConnection {

	// 	function connectToDatabase() {

	// 		// Create connection
	// 		$database_connection = mysqli_connect('127.0.0.1', 'root', 'root', 'php1Database', 9001); // HOMEWORK: write your connection

	// 		// Check connection
	// 		if (mysqli_connect_errno()) {
	// 			echo "Failed to connect to MySQL: " . mysqli_connect_error();
	// 		}

	// 	}

	// }

?>