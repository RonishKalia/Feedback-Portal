
<?php
	
	$userid = "";
	$teacher = "";
	$subjectList = array();
	$userid = $_SESSION['teacher'];
	$teacher = getTeacherByid($userid);
	$sql_query = "SELECT * FROM subject_teacher WHERE Teacher = :teacher";
	$params = array(':teacher' => $teacher);
	$subjectList = DatabaseHandler::GetAll($sql_query, $params);
	$teacherid = "";
	$subject = "";
	if (isset($_POST['sub'])) {
		$subject = $_POST['sub'];
		for ($i = 0; $i < count($subjectList); $i++) {
			if ($subjectList[$i]['Sub_Name'] == $subject) {
				$teacherid = $subjectList[$i]['Teacher_ID'];
				$teacher = getTeacherByid($subjectList[$i]['Teacher_ID']);
				break;
			}
		}
	}
	if (isset($_POST['logout'])) {
		session_start();
        $_SESSION = array();
        session_destroy();
		redirectTo(HOME);
	}


?>

<html>
<head>

<title>
Teacher Feedback IIIT-A
</title>

<!-- CSS -->
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
            <link rel="stylesheet" type="text/css" href="css/fontello.css" />
            <link rel="stylesheet" type="text/css" href="css/style.css" />
            
            
            <script src="js/bootstrap.js"></script>
<link href="css/structure.css" rel="stylesheet">
<link href="css/form.css" rel="stylesheet">

<!-- JavaScript -->
<script src="scripts/wufoo.js"></script>

<!--[if lt IE 10]>
<script src="https://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
</head>

<body id="public">
<div class="top navbar navbar-fixed-top ">
                <div class="container">
					<img src = "logo.jpg" height = '50' width = '50' align = 'left'>
                    <form name='frmlogout' action='' method='POST'>
					<p class="logo" >&nbsp&nbsp&nbsp&nbsp&nbspFeedback Form IIITA</p> 
						<input name="logout" class = "navbar-btn btn-danger pull-right btn" type="submit" value="Logout" />
					</p>
					</form></h2>
					
				</div>
            </div>

<div id="container" class="ltr">

<form id="form1" name="feedback_form" class="wufoo page" accept-charset="UTF-8" autocomplete="off" enctype="multipart/form-data" method="post" novalidate
      action=''>
	  
<header id="header" class="info">
<h1 align = "center"><font face = "Bookshelf Symbol 7" color = "Grey"><br>Teacher Feedback </font></h1>
<div align = "center"><font face = "Bookshelf Symbol 7"><h4>Select a subject:</font></h4>
		<select name="sub" id="sub">
			<option value="None" selected="selected">None</option>
			<?php 
				for ($i = 0; $i < count($subjectList); $i++) {
					echo "<option value=".$subjectList[$i]['Subject'].">".$subjectList[$i]['Subject']."</option>";
				}
			?>
		</select>
<li class="buttons ">
					<input id="saveForm" name="submit" class="btn btn-success pull-middle btn" type="submit" value="Submit" />
</li>
</div>
</header>


</form> 

</div><!--container-->

			
			
</body>
</html>