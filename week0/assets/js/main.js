console.log("main.js");

$(document).ready(function(){
	
	$("#update").on("click", function() {

		$.ajax({
			url: "getGalleryItems.php",
			success:  function(data) {
				updateUI(data);
				console.log(data);
			},
			dataType: 'json'
		});

		function updateUI(data) {
			console.log(data);
			for (var i = data.length - 1; i >= 0; i--) {
				console.log(data[i]);
				$("#items").append('<li><img src="'+data[i].filename+'"><h1>'+data[i].title+'</h1><p>'+data[i].description+'</p></li>');			
			};

		}

		// write the AJAX code to request JSON data from getGalleryItems.php
		// hint, you can use the $.ajax function and tell it to parse the recieved data as JSON into JS objects,
		// or use $.json, which is a shortcut for the same thing. Point is, you need to tell it jQuery
		// to expect JSON, because it it's getting it from a .php file, so it will expect html or text.

		// upon recieiving that data, loop through it and create gallery items inside ul#items, 
		// in this structure
		/*
		<li>
			<img src="">
			<h1>title</h1>
			<p>description</p>
		</li>
		*/

		// make sure you empty the ul#items element first, so you don't get duplicate items

	})
	

});