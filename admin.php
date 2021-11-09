
      <?php include 'navbar.php' ?>
      <style type="text/css">
         .container{
            margin-top: 50px;
         }
         .container button{
            margin-left: 60px;
         }
      </style>
      <div class="container">
         <div class="row">
            <div class="col-md-3 mr-5">
               <div class="card text-center bg-light text-dark border border-dark" style="width: 18rem;height: 100px; font-family: cursive;font-size: 25px; padding-top: 20px;" >
                     <?php
                        $dbhost = 'localhost';
                        $dbuser = 'root';
                        $dbpass = '';
                        $db = 'zomato';
                        
                        $conn = mysqli_connect($dbhost, $dbuser, $dbpass,$db);
                        
                        if(! $conn ) {
                           die('Could not connect: ' . mysql_error());
                        }
                        
                        $sql = "SELECT COUNT(*) FROM users";
                        $retval = mysqli_query( $conn, $sql);
                        $n = mysqli_num_rows($retval);

                        if(! $retval ) {
                           die('Could not get data: ' . mysql_error());
                        }
                        
                        while($row = mysqli_fetch_array($retval)) {
                           echo "Total Users <br> ";
                           echo $row['COUNT(*)']."<br>";

                        }
                        

                        
                        mysqli_close($conn);
                     ?>
               </div>
            </div>

            <div class="col-md-3 mr-5">
               <div class="card text-center bg-light text-dark border border-dark" style="width: 18rem;height: 100px; font-family: cursive;font-size: 25px; padding-top: 20px;" >
                     <?php 
                     include 'dbconn.php';

                     $sql = "SELECT SUM(amount) FROM orders";
                        $retval = mysqli_query( $conn, $sql);
                        $n = mysqli_num_rows($retval);

                        if(! $retval ) {
                           die('Could not get data: ' . mysql_error());
                        }
                        
                        while($row = mysqli_fetch_array($retval)) {
                           echo "Total selling amount: ".$row['SUM(amount)']."<br>";

                        }
                        

                        
                        mysqli_close($conn);
                      ?>
               </div>
            </div>

            <div class="col-md-3">
               <div class="card text-center bg-light text-dark border border-dark" style="width: 18rem;height: 100px; font-family: cursive;font-size: 25px; padding-top: 20px;" >
                     <?php
                     include 'dbconn.php';

                     $sql = "SELECT COUNT(*) FROM orders";
                        $retval = mysqli_query( $conn, $sql);
                        $n = mysqli_num_rows($retval);

                        if(! $retval ) {
                           die('Could not get data: ' . mysql_error());
                        }
                        
                        while($row = mysqli_fetch_array($retval)) {
                           echo "Total Order Number: ".$row['COUNT(*)']."<br>";

                        }
                        

                        
                        mysqli_close($conn);
                      ?>
               </div>
            </div>
         </div>
      </div>

<!-- division(2) -->

      <div class="container">
         <div class="row">
            <div class="col-md-3 mr-5">
               <div class="card text-center bg-light text-dark border border-dark" style="width: 18rem;height: 100px; font-family: cursive;font-size: 25px; padding-top: 20px;" >
                     <?php
                        $dbhost = 'localhost';
                        $dbuser = 'root';
                        $dbpass = '';
                        $db = 'zomato';
                        
                        $conn = mysqli_connect($dbhost, $dbuser, $dbpass,$db);
                        
                        if(! $conn ) {
                           die('Could not connect: ' . mysql_error());
                        }
                        
                        $sql = "SELECT COUNT(*) FROM seller";
                        $retval = mysqli_query( $conn, $sql);
                        $n = mysqli_num_rows($retval);

                        if(! $retval ) {
                           die('Could not get data: ' . mysql_error());
                        }
                        
                        while($row = mysqli_fetch_array($retval)) {
                           echo "Total Sellers <br> ";
                           echo $row['COUNT(*)']."<br>";

                        }
                        

                        
                        mysqli_close($conn);
                     ?>
               </div>
            </div>

            <div class="col-md-3 mr-5">
               <div class="card text-center bg-light text-dark border border-dark" style="width: 18rem;height: 100px; font-family: cursive;font-size: 25px; padding-top: 20px;" >
                                  <?php
                        $dbhost = 'localhost';
                        $dbuser = 'root';
                        $dbpass = '';
                        $db = 'zomato';
                        
                        $conn = mysqli_connect($dbhost, $dbuser, $dbpass,$db);
                        
                        if(! $conn ) {
                           die('Could not connect: ' . mysql_error());
                        }
                        
                        $sql = "SELECT COUNT(*) FROM item";
                        $retval = mysqli_query( $conn, $sql);
                        $n = mysqli_num_rows($retval);

                        if(! $retval ) {
                           die('Could not get data: ' . mysql_error());
                        }
                        
                        while($row = mysqli_fetch_array($retval)) {
                           echo "Total Items <br> ";
                           echo $row['COUNT(*)']."<br>";

                        }
                        

                        
                        mysqli_close($conn);
                     ?>
               </div>
            </div>

            <div class="col-md-3">
               <div class="card text-center bg-light text-dark border border-dark" style="width: 18rem;height: 100px; font-family: cursive;font-size: 25px; padding-top: 20px;" >
           <?php 
                     include 'dbconn.php';

                     $sql = "SELECT SUM(amount) FROM orders";
                        $retval = mysqli_query( $conn, $sql);
                        $n = mysqli_num_rows($retval);


                        if(! $retval ) {
                           die('Could not get data: ' . mysql_error());
                        }
                        
                        while($row = mysqli_fetch_array($retval)) {
                           $total = $row['SUM(amount)'];
                           $profit = (($total*22)/100);
                           echo "Total profit amount: ".$profit."<br>";

                        }
                        

                        
                        mysqli_close($conn);
                      ?>
               </div>
            </div>

         </div>
      </div>
