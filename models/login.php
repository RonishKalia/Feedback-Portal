<?php
$username = "";
$pass = "";
$msg = "";
$logout = "";
$val="";
if(isLogin()) {
 	redirectTo(HOME);
}
if (isset($_POST['tlogin'])) {
	header('Location: teacher');
}
if(isset($_GET['logout'])) {
	$logout = "Your are successfully logged out.";
}
if (isset($_POST['login'])) {
	$username = $_POST['user'];
	$pass = $_POST['pass'];
	
	if (authenticate($username, $pass)) {
		redirectTo(HOME);
	} else {
		$msg = "Incorrect Login Credentials";
	}
}

?>
    <html>
        <head>
            
            <title>FeedBack Login</title>
            
            <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
            <link rel="stylesheet" type="text/css" href="css/fontello.css" />
            <link rel="stylesheet" type="text/css" href="css/style.css" />
            
            <script src="js/bootstrap.js"></script>
            
        </head>
        <body>
            
            <div class="top navbar navbar-fixed-top">
                <div class="container">
					<img src = "logo.jpg" height = '50' width = '50' align = 'left'>
                    <p class="logo" >&nbsp&nbsp&nbspFeedback Forum IIITA</p>
                </div>
                
            </div>
            
            <div class="container">
                <div class="row">
                    <div class="offset2 span7">
                        <div class="box">
                            
                            <div class="heading">Sign In With Your Id</div>
                            
                            <form class="form-horizontal" action='?page=login' method = "POST">
                                <div class="control-group">
                                  <label class="control-label" for="inputEmail">Email</label>
                                  <div class="controls">
                                    <input type="text" value = '' name ='user' id="inputEmail" placeholder="Email">
                                  </div>
                                </div>
                                <div class="control-group">
                                  <label class="control-label" for="inputPassword">Password</label>
                                  <div class="controls">
                                    <input type="password" value = '' name='pass' id="inputPassword" placeholder="Password">
                                  </div>
                                </div>
                                <div class="control-group">
                                  <div class="controls">
                                    <p>
							
									<b>*Student ID will not be revealed to anyone </b>
									
									</p>
                                    <button type="submit" name='login' class="btn btn-success">Sign in</button>
                                    <button type="reset" class="btn">Clear</button>
									&nbsp <button type="submit" name='tlogin' class="btn btn-success">Teacher Login</button>
                                  </div>
                                </div>
                              </form>
                            
                        </div>
                    </div>
                </div>
            </div>
            
        </body>
    </html>