<?php
require_once '../includes/dBconnect.php';
?>
<!DOCTYPE html>
<html lang="en">
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>        
        <!-- META SECTION -->
        <title>ECMS | Electronic Components</title>            
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
                    <li class="active">Electronic Components</li>
                </ul>
                <!-- END BREADCRUMB -->                
                
                <div class="page-title">                    
                    <h2><span class="fa fa-glass"></span> Electronic Components</h2>
                </div>                   
                
                <!-- PAGE CONTENT WRAPPER -->
                <div class="page-content-wrap">
                
                    <div class="row">
                        <div class="col-md-12">

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title">List of All Components</h3>
                                </div>
                                <div class="panel-body">
                                    <div class="table-responsive">
                                        <table class="table datatable">
                                            <thead>
											    <tr>
                                                    <th><font size="2">Name</font></th>
                                                    <th> </th>
                                                    <th><font size="2">Quantity</font></th>
                                                    <th><font size="2">Component group id</font></th>
                                                    <th> <font size="2">Container number</font></th>
                                                    <th><font size="2">Action</font></th>
                                                </tr>
											</thead>
											<tbody>
                                                <?php
                                                $q=$connection->query("SELECT * FROM lab_components");
                                                $sn=1;
                                                while($row_data=$q->fetch_assoc()){
                                                ?>
											<tr>
                                                    <td><?php echo $row_data['name'];?></td>
                                
                                                    <!--      

                      Create a form which you pass component details which are name ,quantity,container_no and id
                                                        -->
                                                    <td><form method='POST' action="requested_components.php">
                                                   <input type="hidden"
                                                   name="component"
                                                   value="<?php echo $row_data['id'];?>"
                                                   > 
                                                   <input type="hidden"
                                                   name="container_no"
                                                   value="<?php echo $row_data['container_no'];?>"
                                                   > 
                                                   <input type="submit"
                                                    
                                                   name="submit"
                                                   value="Select"
                                                   class ="btn btn-success"
                                                   value="<?php echo $row_data['id'];?>"
                                                   > 
                                                    
                                                    </form></td>
                                                    <td><?php echo $row_data['quantity'];?></td>
                                                    <td><?php echo $row_data['component_group_id'];?></td>
                                                    <td><?php echo $row_data['container_no'];?></td>
                                                    <td><a href = "#"> <button class="btn btn-primary btn-rounded btn-condensed btn-sm"><span class="glyphicon glyphicon-eye-open"></span></button></a></td>
                                                </tr>
                                                <?php
                                                 $sn++;
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






