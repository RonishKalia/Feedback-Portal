<?php
require_once("config/config.php");
require_once("api/functions.php");

if (isset($_POST['logout'])) {
		session_start();
        $_SESSION = array();
        session_destroy();
		redirectTo(HOME);
	}

?>



<!DOCTYPE HTML>
    <html>
        <head>
            
            <title>Thank You </title>
            
            <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
            <link rel="stylesheet" type="text/css" href="css/fontello.css" />
            <link rel="stylesheet" type="text/css" href="css/style.css" />
            
            
            <script src="js/bootstrap.js"></script>
            
        </head>
        <body>
            <div class="top navbar navbar-fixed-top">
                <div class="container">
					<img src = "logo.jpg" height = '50' width = '50' align = 'left'>
                    <form name='frmlogout' action='' method='POST'>
					<p class="logo pull-middle">&nbsp&nbsp&nbsp&nbsp&nbspFeedback Forum IIITA</p> 
						<input name="logout" class = "navbar-btn btn-danger pull-right btn" type="submit" value="Logout" />
					</p>
                </div>
                
            </div>
            
            
            <div class="container">
                <div class="row">
                    <div class="offset2 span7">
                        <div class="box">
                            
                            <form class="form-horizontal">
                                <div class="control-group">
                                  
                                  <h2 align = "center"><font face = "Aerial Black" color = "Grey">  <br><br><br> Thank you !! <br> Your Feedback was successfully submitted. <br><br><br><br></font></h2>
								  <h4><p align = 'right' ><font face = "Aerial Black" color = 'Grey'><b> To give another Feedback </font></b>
								  <a href = "index.php" > CLICK HERE </a></h4> </p>
                                </div>
                                <div class="control-group">
                                  <div class="controls">
                                    
                                    
                                  </div>
                                </div>
                              </form>
                            
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="navbar navbar-fixed-bottom bottom">
                <div class="container">
                    <div class="center">
                        <div class="text"> Created By - Anuj, Dhruv, Harish, Ronish, Shubham</div>
                        
                
                    </div>
                </div>
            </div>
            
        </body>
    </html>