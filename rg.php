<?php
include 'includes/dBconnect.php';
if(isset($_POST['submit'])){
             $firstname = ($_POST['firstname']);
             $lastname = ($_POST['lastname']);
             $username = ($_POST['username']);
			 $password = ($_POST['password']);
			 $reg_number = ($_POST['reg_number']);
			 $user_roles_id =( $_POST['user_roles_id']);

			 if($firstname == '' || $lastname == '' || $username == '' || $password == '' || $reg_number == '' || $user_roles_id == ''){
			 	 echo "Please all fields are required";
			 }else{
			 	$result = mysqli_query($connection,"SELECT * FROM users WHERE username='$username' ");

			 	if(mysqli_num_rows($result) >= 1){
				 echo "username exist";
			 
			 }else{
		  //  echo($firstname);
     		 $query = mysqli_query($connection, "INSERT INTO users(firstname,lastname,username,password,reg_number,user_roles_id)
      	 	VALUES('$firstname','$lastname','$username','$password','reg_number','$user_roles_id')");

     		 if($query){
      	 		echo "Congratulations You have successfully created an account";
      			}
			}

			
			 }
}
?>
     

