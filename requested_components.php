<?php
require_once '../includes/dBconnect.php';
?>
<!DOCTYPE html>
<html lang="en">
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>        
        <!-- META SECTION -->
        <title>ECMS | requested_components</title>            
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
                    <li class="active">Add Request</li>
                </ul>
                <!-- END BREADCRUMB -->                
                
                <div class="page-title">                    
                    <h2><span class="fa fa-plus-square-o"></span> Requested Components</h2>
                </div>                   
                
                <!-- PAGE CONTENT WRAPPER -->
                <div class="page-content-wrap">
                
                    <div class="row">
                        <div class="col-md-12">

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Make Request</h3>
                                </div>
                                <div class="panel-body">
                                    <form class="form-horizontal" action="cart.php" method="post">
                                    <div class="panel-body tab-content">
                                        <div class="tab-pane active" id="tab-first">

                                        </div>
                                            <div class="form-group">
                                            <label class="col-md-3 control-label">username</label>
                                            <div class="col-md-6">                                                                                
                                                <select name = "student" class="form-control select" data-live-search="true">

                                    <option value = "id"><?php echo $_SESSION["username"]; ?></option>
                                                </select>
                                            </div>
                                        </div> 

                                            <div class="form-group">
                                            <label class="col-md-3 control-label">lab component </label>
                                            <div class="col-md-6">

                                            <?php  
                                             $component=$_POST['component'];
                                             $q=$connection->query("SELECT * FROM lab_components where id =$component");
                                         $result=$q->fetch_assoc();
                                         $name=$result['name'];                                                              
                                          echo  '<select name = "lab_component" class="form-control select" data-live-search="true">
                                                <option value = "'.$name.'"> '.
                                                    
                                             $name.'
                                                    </option>
                                                    
                                                </select>';
                                                ?>
                                            </div>
                                        </div>   
                                    </div>

                                    <div class="form-group">
                                            <label class="col-md-3 col-xs-12 control-label">quantity </label>
                                                <div class="col-md-6 col-xs-12">   
                                                <?php                                                                                         
                                             $component=$_POST['component'];
                                             $q=$connection->query("SELECT * FROM lab_components where id =$component");
                                         $result=$q->fetch_assoc();
                                         $quantity=$result['quantity'];                                                              
                                          echo  '<select name = "quantity" class="form-control select" data-live-search="true">';
                                             //convert quantity to integer
                                             $count=intval($quantity);
                                             for($value=1; $value<=$count; $value++){
                                                echo '<option value = "'.$value.'"> '.$value.'</option>'; 

                                             }
                          
                                             echo '</select>';
                                                    ?>                                                  
                                                </div>
                                            </div>
                                     <div class="form-group">
                                         <label class="col-md-3 control-label">container number </label>
                                            <div class="col-md-6">
                                            
                                            <?php  
        
                                             $component=$_POST['component'];
                                             $q=$connection->query("SELECT * FROM lab_components where id =$component");
                                         $result=$q->fetch_assoc();
                                         $container_no=$result['container_no']; 
                                         echo "<input type='hidden' name='id' value='".$component."'/>";                                                             
                                          echo  '<select name = "container_no" class="form-control select" data-live-search="true">';
                                          //convert quantity to integer
                                           $count=intval($container_no);
                                             for($value=1; $value<=$count; $value++){
                                                echo '<option value = "'.$value.'"> '.$value.'</option>'; 

                                             }
                          
                                             echo '</select>';
                                                    ?>    
                                    
                                            </div>
                                        </div>   
                            
                                    
                                    <div class="panel-footer">
                                        <button class="btn btn-primary pull-right" name="submit">
                                        submit <span class="fa fa-floppy-o fa-right"></span></button>
                                                                        
                                
                                    </div>                               
                            
                            </form>
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