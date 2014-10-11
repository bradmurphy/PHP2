<?php

// make a mysql database (and import that .sql file I provided)

// connect to it in this file.
include_once("includes/connect.php");

// use mysqli to get all the rows from the "gallery" table
$sql = "SELECT * FROM gallery";
$results = $database_connect -> query($sql);
$rows = $results->num_rows;
$rowArray = array();

if($rows>=1) {
	while($row = $results->fetch_assoc()) {
		$rowDescript = addSlashes($row['description']);
		$rowObj =array(
			"id" => $row["id"],
			"filename" => $row["filename"],
			"title" => $row["title"],
			"description" => $rowDescript,
		);
		array_push($rowArray, $rowObj);
	}
}

$resultsJSON = json_encode($rowArray);
echo $resultsJSON;

// find a way to output that data set as JSON. 
// encode_json is part of it, but before that we need to get all those rows into one array.

// echo the JSON
?>

