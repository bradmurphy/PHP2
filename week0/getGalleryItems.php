<?

// make a mysql database (and import that .sql file I provided)

// connect to it in this file.
include_once("includes/connect.php");

// use mysqli to get all the rows from the "gallery" table
$sql = "SELECT * FROM gallery";
$results = $database_connect -> query($sql);
while ($row = $results -> fetch_assoc()) {
	echo json_encode($row['filename'] . $row['title'] . $row['description']);
}

// find a way to output that data set as JSON. 
// encode_json is part of it, but before that we need to get all those rows into one array.

// echo the JSON