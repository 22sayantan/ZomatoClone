<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "zomato";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}
$name = $_POST['seller'];
$ftyp1 = $_POST['ftype1'];
$ftyp2 = $_POST['f_type'];
$sql = "INSERT INTO seller (name, type1, type2)
VALUES ('$name', '$ftyp1', '$ftyp2')";

if (mysqli_query($conn, $sql)) {
  echo "New record created successfully";
} else {
  echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

mysqli_close($conn);
?>