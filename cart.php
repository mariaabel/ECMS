<?php
require_once '../includes/dBconnect.php';
if(isset($_POST['submit']))
{ 
    session_start();
    $user=$_SESSION['user_id'];   
    $insert = "INSERT INTO cart (lab_components, quantity,container_no,user_id) VALUES ('".$_POST['lab_component']."', '".$_POST['quantity']."','".$_POST['container_no']."','".$user."')";
    $insertdata = mysqli_query($connection, $insert);
    if($insertdata)
    {
    }
    else
    {
        echo "Failed".mysqli_error($connection);
    }

}

?>

<!DOCTYPE html>
<html lang="en">
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>        
        <!-- META SECTION -->
        <title>ECMS | cart</title>            
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        
        <link rel="icon" href="favicon.ico" type="image/x-icon" />
        <!-- END META SECTION -->
        
        <!-- CSS INCLUDE -->        
        <link rel="stylesheet" type="text/css" id="theme" href="../css/theme-default.css"/>
        <!-- EOF CSS INCLUDE -->    
    </head>
    <body>
        <!-- START PAGE CONTAINER -->
        <div class="page-container">
            
            <!-- START PAGE SIDEBAR -->
            <div class="page-sidebar">
                <!-- START X-NAVIGATION -->
                <?php require_once 'incs/sider.php';?>
                <!-- END X-NAVIGATION -->
            </div>
            <!-- END PAGE SIDEBAR -->
            
            <!-- PAGE CONTENT -->
            <div class="page-content">
                
                <!-- START X-NAVIGATION VERTICAL -->
                <ul class="x-navigation x-navigation-horizontal x-navigation-panel">
                    <!-- TOGGLE NAVIGATION -->
                    <li class="xn-icon-button">
                        <a href="#" class="x-navigation-minimize"><span class="fa fa-dedent"></span></a>
                    </li>
                    <!-- END TOGGLE NAVIGATION -->                    
                </ul>
                <!-- END X-NAVIGATION VERTICAL -->                     
                
                <!-- START BREADCRUMB -->
                <ul class="breadcrumb">
                    <li><a href="index.html">Home</a></li> 					
                   
                </ul>
                <!-- END BREADCRUMB -->                
                
                <div class="page-title">                    
                    <h2><span class="fa fa-plus-square-o"></span> view cart</h2>
                </div>                   
                
                <!-- PAGE CONTENT WRAPPER -->
                
         <div class="col-md-6">
                                          
        <a href="lab_components.php"><font size="4">back </font></a>
        <form method="POST" action="..lab_engineer/requested_components.php">
        
                <div class="panel-body">
                <div class="table-responsive">
                <table class="table datatable">
                <thead>
                <tr>
                     <th><font size="2">lab Components</font></th>
                      <th><font size="2">Quantity</font></th>
                      <th><font size="2">Container Number</font></th>
                      <th><font size="2">username</font></th>
                </tr>
                                   
                </thead>
                <tbody>
                                            
                <?php
                $q=$connection->query("SELECT * FROM cart");
                while($row_data = $q->fetch_assoc()){ 
                     $components = $row_data['lab_components'];
                     $quantity = $row_data['quantity'];
                     $container_no= $row_data['container_no']; 
                     $user_id= $row_data['user_id'];    
                    ?> 
                  <tr> 
                            <td><?php echo $components; ?></td> 
                            <td><?php echo $quantity; ?></td> 
                            <td><?php echo $container_no; ?></td>
                            <td><?php echo $_SESSION["username"]; ?></td>
                            
                     </tr> 
                    <?php 
                          
                    } 
        ?> 
    </tbody>
                    
    </table> 
    <br /> 
    <button class="btn btn-primary pull-right" name="submit">
        submit <span class="fa fa-floppy-o fa-right"></span></button>
    
</form> 
<br /> 
<!-- END PAGE CONTAINER -->

        <!-- MESSAGE BOX-->
        <?php require_once '../incs/sms_box.php';?>
        <!-- END MESSAGE BOX-->

        <!-- START PRELOADS -->
        <audio id="audio-alert" src="../audio/alert.mp3" preload="auto"></audio>
        <audio id="audio-fail" src="../audio/fail.mp3" preload="auto"></audio>
        <!-- END PRELOADS -->                 
        
<!-- START SCRIPTS -->
        <!-- START PLUGINS -->
        <script type="text/javascript" src="../js/plugins/jquery/jquery.min.js"></script>
        <script type="text/javascript" src="../js/plugins/jquery/jquery-ui.min.js"></script>
        <script type="text/javascript" src="../js/plugins/bootstrap/bootstrap.min.js"></script>                
        <!-- END PLUGINS -->
        
        <!-- THIS PAGE PLUGINS -->
        
        <!-- END THIS PAGE PLUGINS -->       
        
        <!-- START TEMPLATE -->
        
        <script type="text/javascript" src="../js/plugins.js"></script>        
        <script type="text/javascript" src="../js/actions.js"></script>        
        <!-- END TEMPLATE -->
                    
    </body>


</html>