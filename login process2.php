<?php
session_start();
require_once 'includes/dBconnect.php';

	
	if('$_POST[username]' == '' || '$_POST[password]' == ''){
		$error_sms = "<span style = 'color:red;font-size:12px'>Fill all empty field</span>";
	}

	if(isset($_POST['submit'])){
		$query = "SELECT * FROM users WHERE username = '$_POST[username]'AND password = '$_POST[password]'";

		$result = mysqli_query($connection,$query);
		if(mysqli_num_rows($result) == 1){
			
			$_SESSION["username"]=$_POST['username'];
			echo $_SESSION["user"];
		if($_SESSION['password'] = $_POST['password']){

			$fetch_data = mysqli_fetch_array($result);
			

			switch ($fetch_data['user_roles_id']) {
				case "3":
					header('location: student/index.php');
					break;

					case "2":
					header('location: lecturer/index.php');
					break;

					case "1":
					header('location: lab_engineer/index.php');
					break;
				
				default:
					$error_sms = "<span style = 'color:red;font-size:12px'>Login failed ! Wrong username or password</span>";
					break;
			}
			
			
					
				   
				}
			}
		}
	

?>