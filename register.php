<?php
session_start();
include "rg.php";
?>
<!DOCTYPE html>
<html>
<head>
<title>creating an account</title>
</head>
<style>
	@import "http://fonts.googleapis.com/css?family=Droid+Serif";
/* The Above Line Is To Import Google Font Style */
.maindiv {
margin:10px auto;
width:330px;
height:50px;
background:#fff;
padding-top:20px;
font-family:'Droid Serif',serif;
font-size:14px
}
.title {
width:500px;
height:10px;
text-shadow:2px 2px 2px #cfcfcf;
font-size:16px;
text-align:center
}
.form_div {
width:70%;
float:center;
}
form {
width:400px;
border:1px dashed #aaa;
padding:10px 30px 40px;
margin-left:10px;
background-color:#f0f8ff
}
form h2 {
text-align:center;
text-shadow:2px 2px 2px #cfcfcf
}
textarea {
width:100%;
height:30px;
border-radius:1px;
box-shadow:0 0 1px 2px #123456;
margin-top:10px;
padding:7px;
border:none
}
.input {
width:100%;
height:30px;
border-radius:2px;
box-shadow:0 0 1px 2px #123456;
margin-top:10px;
padding:7px;
border:none;
margin-bottom:20px
}
.submit {
color:#fff;
border-radius:3px;
background:#1F8DD6;
padding:5px;
margin-top:40px;
border:none;
width:100%;
height:30px;
box-shadow:0 0 1px 2px #123456;
font-size:18px
}
p {
color:red;
text-align:center
}
span {
text-align:center;
color:green
}

</style>
<body>
<div class="maindiv">
<!--HTML Form -->
<div class="form_div">
<div class="title">
</div>
<form action="rg.php" method="post">
<!-- Method can be set as POST for hiding values in URL-->
<h2>Form</h2>
<label>firstname:</label>
<input class="input" name="firstname" type="text" value="">
<label>lastname:</label>
<input class="input" name="lastname" type="text" value="">
<label>username:</label>
<input class="input" name="username" type="text" value="">
<label>password:</label>
<input class="input" name="password" type="password" value="">
<label>reg_number:</label>
<input class="input" name="reg_number" type="reg_number" value="">
<label>user_roles_id:</label>
   <label>   <select name="user_roles_id">:</label>
        <option value="-1" selected>select..</option>
        <option value="1">lab_engineer</option>
        <option value="2">lecturer</option>
        <option value="3">student</option>
      </select>
<input class="submit" name="submit" type="submit" value="submit">
</form>
</div>
</div>
</body>
</html>