<?php
	$userid = "";
	$teacher = "";
	$subjectList = array();
	$userid = $_SESSION['user'];
	//$userid = "IIT2012024";
	$subjectList = getSubListByid($userid);
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
	<title>FeedBack Form IIITA</title>
</head>
<body>
    
	<form id='feedback_form' action='' method = 'POST'>
		<select name="sub" id="sub">
			<option value="None" selected="selected">None</option>
			<?php 
				for ($i = 0; $i < count($subjectList); $i++) {
					echo "<option value=".$subjectList[$i]['Sub_Name'].">".$subjectList[$i]['Sub_Name']."</option>";
				}
			?>
		</select>
		<input type='submit' name='submit' value='Select'/>
		<input type='submit' name='logout' value='Logout' />
	</form>
	<?php 
		if ($teacher)   {
			echo "Give FeedBack for: ";
			echo $teacher." (".$subject.")"; 
			redirectTo(HOME."?nav=form&teacher=".$teacherid."&sub=".$subject);
		}
	?>
</body>
</html>