<?php

// connect to database
$conn = mysqli_connect("localhost","root","","zomato");


// receive form data
$name = $_POST['sname'];
echo "$name";

?>