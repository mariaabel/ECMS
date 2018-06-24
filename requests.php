<?php
//session_start();
require_once '../includes/dBconnect.php';
?>
<!DOCTYPE html>
<html lang="en">
    
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>        
        <!-- META SECTION -->
        <title>ECMS | requests</title>            
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
                    <li class="active">requests</li>
                </ul>
                <!-- END BREADCRUMB -->                
                
                <div class="page-title">                    
                    <h2><span class="fa fa-plus-square-o"></span> requests</h2>
                </div>                   
                
                <!-- PAGE CONTENT WRAPPER -->
                <div class="page-content-wrap">
                
                    <div class="row">
                        <div class="col-md-12">

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title">List of All Requests</h3>
                                </div>
                                <div  class="panel-body"> 
                                    <div class="table-responsive">
                                        <table class="table datatable" >
                                            <thead>
                                                <tr>
                                                    <th><font size="2">Name</font></th>
                                                <th><font size="2">requested Components</font> </th>
                                                    <th><font size="2">status</font></th>
                                                </tr>

                                            </thead>
                                            <tbody>
                                                <?php
$data = $connection->query("select * from cart where 1");
while ($row = mysqli_fetch_array($data)) {
    //get user id
    $userid = $row['user_id'];
    //query names
    $names = $connection->query("select * from users where id = '$userid'");
    $fetchname = mysqli_fetch_array($names);
    $fullname = ucfirst($fetchname['firstname']).'  '.ucfirst($fetchname['lastname']);

                                                ?>
                                            <tr>
                                                <td><?php echo $fullname; ?></td>
    <td><a href="requested_components.php?id=<?php echo $row['user_id']; ?> ">
        <button type="button" class="btn btn-info">
            <span class = "fa fa-plus-circle"></span>
             requested_components</button>
         </a> </td>
                                           <td><input type="checkbox" id="check" onclick="checked()" style="width:20px;height:20px;"/></td>

                                            </tr>
                                            <?php
}
                                            ?>
                                            </tbody>
                                        </table>	
								    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                
                </div>
                <!-- END PAGE CONTENT WRAPPER -->                
            </div>            
            <!-- END PAGE CONTENT -->
        </div>
        
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
        <!-- START TEMPLATE -->
         <script type="text/javascript" src="../js/plugins.js"></script>        
        <script type="text/javascript" src="../js/actions.js"></script>        
        <!-- END TEMPLATE -->
    <!-- END SCRIPTS --> 
    
    
    </body>

</html>