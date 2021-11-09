<?php

include "dbconn.php";
include "navbar.php";


?>

<div class="container mt-5">
	<div class="row">
		<div class="col-md-12">
			<h2 class="mt-5">Search Results</h2>
		</div>
	</div>

	<div class="row">
		<?php

			$term = $_GET['term'];

			$query = "SELECT * FROM products WHERE name LIKE '%$term%'";

			$result = mysqli_query($conn,$query);
			$counter = 0;
			while($row = mysqli_fetch_assoc($result)){
				$img = substr(explode(',', $row['bg_img'])[0], 1);
				echo '<div class="col-md-4">
						<div class="card">
							<img src='.$img.'>
							<div class="card-body">
								<h4>'.$row['name'].'</h4>
								<p>Rs '.$row['price'].'</p>
								<a href="description.php?product_id='.$row['product_id'].'" class="btn btn-info btn-sm">View</a>
							</div>
						</div>
					</div>';
				$counter++;
			}

			if($counter == 0){
				echo "<h4>No products found</h4>";
			}
		?>
		
	</div>
	
</div>