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
      if (isset($_POST['submit'])) {

      $item = $_POST['item'];
      $seller = $_POST['seller'];
      $food = $_POST['food'];
      $price = $_POST['price'];
      $description = $_POST['desc'];
      $img = $_POST['image'];
      $sql = "INSERT INTO products( `name`, `seller`, `category`, `price`, `details`, `bg_img`)
      VALUES ('$item', '$seller', '$food', '$price', '$description', '\"$img\"')";

      if (mysqli_query($conn, $sql)) {
        echo "New record created successfully";
      } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
      }
        }
      mysqli_close($conn);
?>