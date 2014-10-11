<?php include('header.php'); ?>
		
	<?
		// Connect
		include_once("connect.php");

		$query1 = $database_connection->query("SELECT * FROM galleries"); // HOMEWORK: write your query to get just the stuff in the galleries table 

		// loop through the resulting rows, putting them in an array so we can carry them around in one variable.
		// my php's mysqli insists on only spitting out one row at a time is beyond me.
		$results = array();
		while ($result = $query1->fetch_assoc()) {
			array_push($results, $result);
		};

	?>

	<ul id="items">
		<!--li>
			<a href="gallery.php?name=nameofgallery">nameofgallery</a>
		</li-->
		<? foreach ($results as $r): ?>
			<? echo '<a href="gallery.php?name=' . $r['name'] . '">' . $r['name'] . '</a>'; ?>
			<!-- HOMEWORK: put links here, structured like the comment above. -->
		<? endforeach; ?>
	</ul>

<?php include('footer.php'); ?>