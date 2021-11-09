<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
<?php 


$email = $_POST['email'];
$password = $_POST['psw'];


if ($email == 'admin@gmail.com' && $password == '1234') { 
include'admin.php';
}
	
else{
		echo '<div class="alert alert-dark" role="alert">
  Invalid credentials
</div>';
	}


?>