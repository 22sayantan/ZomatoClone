<?php

session_start();
if(empty($_SESSION)){
	$logged_in = 0;
}else{
	$logged_in = 1;
}

?>
<!DOCTYPE html>
<html>
<head>
	<title>zomato</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
	<link rel="stylesheet" type="text/css" href="style.css">
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.6.3/css/all.min.css">
</head>
<script type="text/javascript">
	$(document).ready(function(){
		$('#register-popup').click(function(){
			$('#exampleModal').modal('hide');
			$('#exampleModal2').modal('show');
		})
	})
</script>
<body>

	<div class="bg-danger" style="height: 60px;padding-top: 10px">
		
		
		<div class="row"> 
			<div class="col-md-2">
				<h2 class="text-white"><a href="index.php" style="text-decoration: none;color:white" class="ml-3">Zomato</a></h2>
			</div>
			<div class="col-md-1">
				<button class="btn " data-toggle="modal" data-target="#examplModal"><i class="text-white fa-2x fas fa-crown"></i></button>
				<!-- Modal -->
						<div class="modal fade" id="examplModal" tabindex="-1" aria-labelledby="examplModalLabel" aria-hidden="true">
						  <div class="modal-dialog">
						    <div class="modal-content">
						      <div class="modal-header">
						        <h5 class="modal-title" id="examplModalLabel">ADMIN</h5>
						        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
						          <span aria-hidden="true">&times;</span>
						        </button>
						      </div>
						      <div class="modal-body"> 
						      	<form action="ad_log.php" method="POST">
						      		<label><h3>Email</h3></label><br>
						    		<input type="email" name="email" style="width:300px" required><br>
						    		<label><h3>Password</h3></label><br>
						    		<input type="password" name="psw" style="width:300px" required><br>
						      </div>
						      <div class="modal-footer">
						        <button type="button" class="btn btn-secondary" data-dismiss="modal">close</button>
						        <a href="admin.php"><button type="submit" class="btn btn-primary">login</button></a>
						      </div>
						      </form>
						    </div>
						  </div>
				</div>
			</div>
			<div class="col-md-7">
				<form action="search.php" method="GET">
					<input placeholder="Search Products " type="text" class="form-control" name="term" style="width: 70%;display: inline;border-radius: 20px">
					<button class="btn btn-white" style="margin-top: -5px;height: 35px; border-radius: 20px;margin-left: -44px; background-color: lightgrey;"><i class="fas fa-search" style="color: black;"></i></button>
				</form>
			</div>
			<div class="col-md-2">
				<div class="text-md-center">
					<?php

					if($logged_in == 1){
						echo '<div class="dropdown" style="display:inline">
								<i class="text-white fa-2x fas fa-user mr-5" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></i>
								<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    								<a class="dropdown-item" href="#">Hi '.$_SESSION['name'].'</a>
    								<a class="dropdown-item" href="profile.php">My Profile</a>
    								<a class="dropdown-item" href="orders.php">My Orders</a>
    								<a class="dropdown-item" href="user_wishlist.php">My Wishlist</a>
    								<a class="dropdown-item" href="logout.php">Logout</a>
  								</div>
  							</div>';
						echo '<a href="cart.php"><i class="text-white fa-2x fas fa-shopping-cart"></i></a>';
					}else{
						echo '<button class="btn btn-light" data-toggle="modal" data-target="#exampleModal">Login</button>';
					}

				?>
				</div>
			</div>
		</div>
		
	</div>
