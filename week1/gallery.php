<? include_once('header.php'); ?>
		
	<?
		// Connect
		include_once("connect.php");

		// HOMEWORK: write a query that gets all the rows in the images table that have the gallery_id 
		// matching a row in the galleries table with the name in the var $_GET['name'] (which is a URL var
		// that we applied to this page when it was linked from index.php
		$query1 = $database_connection->query("SELECT * FROM images INNER JOIN galleries ON images.gallery_id = galleries.id");  

		$results = array();
		while ($result = $query1->fetch_assoc()) {
			array_push($results, $result);
		};

	?>

	<a href="index.php">Back</a><br />

	<? if $results(): ?> <!-- HOMEWORK: if there are items in this gallery... -->
		<ul id="items">
			<? foreach ($results as $r): ?>
				<li>
					<img src="<?=$r['filename'];?>">
					<h1><?=$r['title'];?></h1>
					<p><?=$r['description'];?></p>
				</li>
			<? endforeach; ?>
		</ul>
	<? else: ?> 
		<p>
			No results found.
		</p>
	<? endif; ?>

<? include_once('footer.php'); ?>