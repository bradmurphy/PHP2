<?php

// connect to your database

$database_connect = mysqli_connect('127.0.0.1', 'root', 'root', 'php0Database', 9001);

 if (mysqli_connect_errno()) {
 	die('Could not connect to server.' . mysqli_error());
 }
?>