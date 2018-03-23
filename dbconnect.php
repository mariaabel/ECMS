<?php 

$servername="localhost";
$username="root";
$password="";
$dbname="ecms";
#create connection
$connection=mysqli_connect($servername,$username,$password,$dbname);
//$db = mysqli_select_db("ecms", $connection)
mysqli_select_db("ecms", $connection);
#check connection

if (!$connection) {

	die("Server Not Found". mysqli_connect_error());

	 
} 
   else {

   	echo "connected successful..";
   }

	// die("connection failed due to an error:".mysql_error());

	?>