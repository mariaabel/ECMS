<?php
session_start();


?>


<ul class="x-navigation">
                    <li class="xn-logo">
                        <a href="index.html">ECMS </a>
                        <a href="#" class="x-navigation-control"></a>
                    </li>                                                                      
                    <li class="xn-title">Hi <?php echo $_SESSION["user"]; ?></li>
                    <li>
                        <a href="index.php"><span class="fa fa-desktop"></span> <span class="xn-text">Dashboard</span></a>
                    </li>
                    
                    <li >
                        <a href="lab_exercise.php"><span class="fa fa-file-text"></span> <span class="xn-text">lab_exercise</span></a>
                    </li>
                    <li >
                        <a href="Requests.php"><span class="fa fa-file-text"></span> <span class="xn-text">Requests</span></a>
                    </li>
                    <li><a href="#" class="mb-control" data-box="#mb-signout"><span class="fa fa-sign-out"></span> Sign Out</a></li>					
                </ul>