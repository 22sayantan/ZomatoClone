<?php
	include "navbar.php";
?>
	<div class="jumbotron">
		<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
		  <div class="carousel-inner">
		    <div class="carousel-item active">
		      <img class="d-block w-100" src="https://static.toiimg.com/thumb/msid-66145888,imgsize-116131,width-400,resizemode-4/66145888.jpg" alt="First slide" style="height: 500px;">
		    </div>
		    <div class="carousel-item">
		      <img class="d-block w-100" src="https://images.squarespace-cdn.com/content/v1/5c5c3833840b161566b02a76/1573133725500-Y5PCN0V04I86HDAT8AT0/WBC_7095.jpg?format=2500w" alt="Second slide" style="height: 500px;">
		    </div>
		    <div class="carousel-item">
		      <img class="d-block w-100" src="https://b.zmtcdn.com/data/pictures/8/11988/8e287e5636a0cfd512a2f9e82ea69b23.jpg" alt="Third slide" style="height: 500px;">
		    </div>
		  </div>
		  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
		    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		    <span class="sr-only">Previous</span>
		  </a>
		  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
		    <span class="carousel-control-next-icon" aria-hidden="true"></span>
		    <span class="sr-only">Next</span>
		  </a>
		</div>
		
	</div>

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h3 class="mb-4">Veg products</h3>
			</div>

			<?php 
				$conn = mysqli_connect("localhost","root","","zomato");

				$query = "SELECT * FROM products WHERE category LIKE 'veg' ";

				$result = mysqli_query($conn,$query);

				while($row = mysqli_fetch_assoc($result)){
					$img = substr(explode(',', $row['bg_img'])[0], 1);
					echo '<div class="col-md-3">
							<div class="card" style="margin-top:25px">
								<img src='.$img.' width="auto" height="200px" alt="">
								<div class="card-body">
									<h4>'.$row['name'].'</h4>
									<p>Rs '.$row['price'].'</p>
									<a href="description.php?product_id='.$row['product_id'].'" class="btn btn-info btn-sm">View</a>
								</div>
							</div>
						</div>';
				}
			?>
			
			
		</div>
		<div class="row">
			
			<div class="col-md-12">
				<h3>Non-Veg products</h3>
			</div>

			<?php 
				$conn = mysqli_connect("localhost","root","","zomato");

				$query = "SELECT * FROM products WHERE category LIKE 'Non-Veg'";

				$result = mysqli_query($conn,$query);

				while($row = mysqli_fetch_assoc($result)){
					$img = substr(explode(',', $row['bg_img'])[0], 1);
					echo '<div class="col-md-3">
							<div class="card" style="margin-top:25px">
								<img src='.$img.' height="175px" alt="">
								<div class="card-body">
									<h4>'.$row['name'].'</h4>
									<p>Rs '.$row['price'].'</p>
									<a href="description.php?product_id='.$row['product_id'].'" class="btn btn-info btn-sm">View</a>
								</div>
							</div>
						</div>';
				}
			?>
		</div>
		<div class="row">
			<div class="col-md-12">
				<h3>Dessert</h3>
			</div>

			<?php 
				$conn = mysqli_connect("localhost","root","","zomato");

				$query = "SELECT * FROM products WHERE category LIKE 'dessert'";

				$result = mysqli_query($conn,$query);

				while($row = mysqli_fetch_assoc($result)){
					$img = substr(explode(',', $row['bg_img'])[0], 1);
					echo '<div class="col-md-3">
							<div class="card" style="margin-top:25px">
								<img src="'.$img.'" alt="Generic placeholder image" height="200px">
								<div class="card-body">
									<h4>'.$row['name'].'</h4>
									<p>Rs '.$row['price'].'</p>
									<a href="description.php?product_id='.$row['product_id'].'" class="btn btn-info btn-sm">View</a>
								</div>
							</div>
						</div>';
				}
			?>

		</div>
	</div>

	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLabel">Login</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
	        <form action="login_validation.php" method="POST">
	        	<label>Email</label><br>
	        	<input class="form-control" type="email" name="user_email"><br>
	        	<label>Password</label><br>
	        	<input class="form-control" type="password" name="user_password"><br><br>
	        	<input type="submit" name="" value="Login" class="btn btn-secondary">
	        </form>
	        <div>
	        	<p class="mt-3">Not a member? <a id="register-popup" href="#">Sign Up</a></p>
	        </div>
	      </div>
	    </div>
	  </div>
	</div>

	<!-- Modal -->
	<div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLabel">Register</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
	        <form action="reg_validation.php" method="POST">
	        	<label>Name</label><br>
	        	<input type="text" name="user_name" class="form-control"><br>
	        	<label>Email</label><br>
	        	<input class="form-control" type="email" name="user_email"><br>
	        	<label>Password</label><br>
	        	<input class="form-control" type="password" name="user_password"><br><br>
	        	<input type="submit" name="" value="Register" class="btn btn-secondary">
	        </form>
	      </div>
	    </div>
	  </div>
	</div>

</body>
</html>