<script language="JavaScript" src="javascript.js" type="text/javascript">
</script>

<script>
function myFunction()
{
var person = alert ("Please answer all Questions");
}
function myFunction1()
{
var person = alert ("Please select a subject.");
}
</script>
<?php
	$userid = "";
	$teacher = "";
	$subjectList = array();
	$userid = $_SESSION['user'];
	$subjectList = getSubListByid($userid);
	$teacherid = "";
	$subject = "";
	$errormsg = "";
	if (isset($_POST['submit']) ) {
		if (isset($_POST['sub']) && $_POST['sub'] != 'None') {
			$subject = $_POST['sub']; 
			for ($i = 0; $i < count($subjectList); $i++) {
				if ($subjectList[$i]['Sub_Name'] == $subject) {
					$teacherid = $subjectList[$i]['Teacher_ID'];
					$teacher = getTeacherByid($teacherid);
					break;
				}
			}
			if (isset($_POST['clarity']) && isset($_POST['punctuality']) && isset($_POST['doubts']) && isset($_POST['capability']) 
				&& isset($_POST['approachability']) && isset($_POST['syllabus']) && isset($_POST['helpful']) && isset($_POST['labs'])
				&& isset($_POST['lab_assignments']) && isset($_POST['lnt']) && isset($_POST['involvement']) && isset($_POST['overall'])) {
				if (!empty($_POST['clarity']) && !empty($_POST['punctuality']) && !empty($_POST['doubts']) && !empty($_POST['capability']) 
				&& !empty($_POST['approachability']) && !empty($_POST['syllabus']) && !empty($_POST['helpful']) && !empty($_POST['labs'])
				&& !empty($_POST['lab_assignments']) && !empty($_POST['lnt']) && !empty($_POST['involvement']) && !empty($_POST['overall'])) {						
					$sql = "INSERT INTO question_feedback (teacher_id, subject_id, Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8, Q9, Q10, Q11, Q12) VALUES (:teacher_id, :subject_id , :q1, :q2, :q3, :q4, :q5, :q6, :q7, :q8, :q9, :q10, :q11, :q12)";
					$params = array(':teacher_id' => $teacher, ':subject_id' => $subject, ':q1' => $_POST['clarity'], ':q2' => $_POST['punctuality'],
									':q3' => $_POST['doubts'], ':q4' => $_POST['capability'], ':q5' => $_POST['approachability'], ':q6' => $_POST['syllabus'],
									':q7' => $_POST['helpful'], ':q8' => $_POST['labs'], ':q9' => $_POST['lab_assignments'], ':q10' => $_POST['lnt'],
									':q11' => $_POST['involvement'], ':q12' => $_POST['overall']);
					$result = DatabaseHandler::Execute($sql, $params);
					if ($result) {
						header ('Location: Thanx.php');
					} else {
						echo "<script>alert('There was an Error in inserting data into the database!');</script>";
					}
				} else {
					echo "<script> myFunction(); </script>";
				}
			}
		} else {
			echo "<script> myFunction1(); </script>";
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
Feedback Form IIIT-A
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
					<p class="logo" >&nbsp&nbsp&nbsp&nbsp&nbspFeedback Forum IIITA</p> 
						<input name="logout" class = "navbar-btn btn-danger pull-right btn" type="submit" value="Logout" />
					</p>
					</form></h2>
				</div>
            </div>

<div id="container" class="ltr">

<form id="form1" name="feedback_form" class="wufoo page" accept-charset="UTF-8" autocomplete="off" enctype="multipart/form-data" method="post" novalidate
      action=''>
<header id="header" class="info">
<h1 align = "center"><font face = "Bookshelf Symbol 7" color = "Grey"><br>Teacher Feedback Form </font></h1>
<div align = "center"><font face = "Bookshelf Symbol 7"><h4>Select a subject:</font></h4>
		<select name="sub" id="sub">
			<option value="None" selected="selected">None</option>
			<?php 
				for ($i = 0; $i < count($subjectList); $i++) {
					echo "<option value=".$subjectList[$i]['Sub_Name'].">".$subjectList[$i]['Sub_Name']."</option>";
				}
			?>
		</select>
		<h6 style='color: red';><?php if ($errormsg) echo '1.1.1.1'.$errormsg; ?></h6>
</div>
</header>

<ul>

<li id="foli208" class="notranslate      ">
<fieldset>
<![if !IE | (gte IE 8)]>
<legend id="title208" class="desc">
Clarity of the teacher while teaching the course ?
</legend>
<![endif]>
<!--[if lt IE 8]>
<label id="title208" class="desc">
</label>
<![endif]-->
<div>
<input id="default" name="clarity" type="hidden" value="" />
<span>
<input id="ch0" name="clarity" type="radio" class="field radio" value="Extraordinary" tabindex="1" />
<label class="choice" for="ch0" >
Extraordinary</label>
</span>
<span>
<input id="ch1" name="clarity" type="radio" class="field radio" value="Good" tabindex="2" />
<label class="choice" for="ch1" >
Good</label>
</span>
<span>
<input id="ch2" name="clarity" type="radio" class="field radio" value="Average" tabindex="3" />
<label class="choice" for="ch2" >
Average</label>
</span>
<span>
<input id="ch3" name="clarity" type="radio" class="field radio" value="Poor" tabindex="4" />
<label class="choice" for="ch3" >
Poor</label>
</span>
<span>
<input id="ch4" name="clarity" type="radio" class="field radio" value="Unacceptable" tabindex="5" />
<label class="choice" for="ch4" >
Unacceptable</label>
</span>

</li><li id="foli222" class="notranslate      ">
<fieldset>
<![if !IE | (gte IE 8)]>
<legend id="title222" class="desc">
Punctuality of the teacher ? 
</legend>
<![endif]>
<div>
<input id="default" name="punctuality" type="hidden" value="" />
<span>
<input id="ch_pun0" name="punctuality" type="radio" class="field radio" value="Extraordinary" tabindex="7" />
<label class="choice" for="ch_pun0" >
Extraordinary</label>
</span>
<span>
<input id="ch_pun1" name="punctuality" type="radio" class="field radio" value="Good" tabindex="8" />
<label class="choice" for="ch_pun1" >
Good</label>
</span>
<span>
<input id="ch_pun2" name="punctuality" type="radio" class="field radio" value="Average" tabindex="9" />
<label class="choice" for="ch_pun2" >
Average</label>
</span>
<span>
<input id="ch_pun3" name="punctuality" type="radio" class="field radio" value="Poor" tabindex="10" />
<label class="choice" for="ch_pun3" >
Poor</label>
</span>
<span>
<input id="ch_pun4" name="punctuality" type="radio" class="field radio" value="Unacceptable" tabindex="11" />
<label class="choice" for="ch_pun4" >
Unacceptable</label>
</span>
</div>
</fieldset>
</li><li id="foli220" class="notranslate      ">
<fieldset>
<![if !IE | (gte IE 8)]>
<legend id="title220" class="desc">
Sincerity of the Teacher in explaining of doubts ?
</legend>
<![endif]>

<div>
<input id="default" name="doubts" type="hidden" value="" />
<span>
<input id="ch_dbt0" name="doubts" type="radio" class="field radio" value="Extraordinary" tabindex="12" />
<label class="choice" for="ch_dbt0" >
Extraordinary</label>
</span>
<span>
<input id="ch_dbt1" name="doubts" type="radio" class="field radio" value="Good<" tabindex="13" />
<label class="choice" for="ch_dbt1" >
Good</label>
</span>
<span>
<input id="ch_dbt2" name="doubts" type="radio" class="field radio" value="Average" tabindex="14" />
<label class="choice" for="ch_dbt2" >
Average</label>
</span>
<span>
<input id="ch_dbt3" name="doubts" type="radio" class="field radio" value="Poor" tabindex="15" />
<label class="choice" for="ch_dbt3" >
Poor</label>
</span>
<span>
<input id="ch_dbt4" name="doubts" type="radio" class="field radio" value="Unacceptable" tabindex="16" />
<label class="choice" for="ch_dbt4" >
Unacceptable</label>
</span>
</div>
</fieldset>
</li><li id="foli202" class="notranslate      ">
<fieldset>
<![if !IE | (gte IE 8)]>
<legend id="title202" class="desc">
Capability of the Teacher in explaining the doubts ?
</legend>
<![endif]>
<div>
<input id="default" name="capability" type="hidden" value="" />
<span>
<input id="ch_cap0" name="capability" type="radio" class="field radio" value="Extraordinary" tabindex="17" />
<label class="choice" for="ch_cap0" >
Extraordinary </label>
</span>
<span>
<input id="ch_cap1" name="capability" type="radio" class="field radio" value="Good" tabindex="18" />
<label class="choice" for="ch_cap1" >
Good </label>
</span>
<span>
<input id="ch_cap2" name="capability" type="radio" class="field radio" value="Average" tabindex="19" />
<label class="choice" for="ch_cap2" >
Average </label>
</span>
<span>
<input id="ch_cap3" name="capability" type="radio" class="field radio" value="Poor" tabindex="20" />
<label class="choice" for="ch_cap3" >
Poor </label>
</span>
<span>
<input id="ch_cap4" name="capability" type="radio" class="field radio" value="Unacceptable" tabindex="21" />
<label class="choice" for="ch_cap4" >
Unacceptable</label>
</span>
</div>
</fieldset>
</li><li id="foli205" class="notranslate      ">
<fieldset>
<![if !IE | (gte IE 8)]>
<legend id="title205" class="desc">
Approachability of Teacher to the student ? 
</legend>
<![endif]>
<!--[if lt IE 8]>
<label id="title205" class="desc">
How often do you use product / service?
</label>
<![endif]-->
<div>
<input id="default" name="approachability" type="hidden" value="" />
<span>
<input id="ch_app0" name="approachability" type="radio" class="field radio" value="Extraordinary" tabindex="22" />
<label class="choice" for="ch_app0" >
Extraordinary </label>
</span>
<span>
<input id="ch_app1" name="approachability" type="radio" class="field radio" value="Good" tabindex="23" />
<label class="choice" for="ch_app1" >
Good </label>
</span>
<span>
<input id="ch_app2" name="approachability" type="radio" class="field radio" value="Average" tabindex="24" />
<label class="choice" for="ch_app2" >
Average </label>
</span>
<span>
<input id="ch_app3" name="approachability" type="radio" class="field radio" value="Poor" tabindex="25" />
<label class="choice" for="ch_app3" >
Poor </label>
</span>
<span>
<input id="ch_app2" name="approachability" type="radio" class="field radio" value="Unacceptable" tabindex="24" />
<label class="choice" for="ch_app2" >
Unacceptable </label>
</span>
</div>
</fieldset>
</li><li id="foli209" class="notranslate      ">
<fieldset>
<![if !IE | (gte IE 8)]>
<legend id="title209" class="desc">
Was the syllabus of the subject revealed at the beginning ?
</legend>
<![endif]>
<div>
<input id="default" name="syllabus" type="hidden" value="" />
<span>
<input id="ch_syl0" name="syllabus" type="radio" class="field radio" value="Yes" tabindex="26" />
<label class="choice" for="ch_syl0" >
Yes </label>
</span>
<span>
<input id="ch_syl1" name="syllabus" type="radio" class="field radio" value="No" tabindex="27" />
<label class="choice" for="ch_syl1" >
No </label>
</span>
</div>
</fieldset>
</li><li id="foli223" class="notranslate      ">
<fieldset>
<![if !IE | (gte IE 8)]>
<legend id="title223" class="desc">
How the course is helpful in uplifting your profession experience to the the extent expected from the Engineering Graduate  
</legend>
<![endif]>
<div>
<input id="default" name="helpful" type="hidden" value="" />
<span>
<input id="ch_hlp0" name="helpful" type="radio" class="field radio" value="Extraordinary" tabindex="33" />
<label class="choice" for="ch_hlp0" >
Extraordinary </label>
</span>
<span>
<input id="ch_hlp1" name="helpful" type="radio" class="field radio" value="Good" tabindex="34" />
<label class="choice" for="ch_hlp1" >
Good </label>
</span>
<span>
<input id="ch_hlp2" name="helpful" type="radio" class="field radio" value="Average" tabindex="35" />
<label class="choice" for="ch_hlp2" >
Average </label>
</span>
<span>
<input id="ch_hlp3" name="helpful" type="radio" class="field radio" value="Poor" tabindex="36" />
<label class="choice" for="ch_hlp3" >
Poor </label>
</span>
<span>
<input id="ch_hlp4" name="helpful" type="radio" class="field radio" value="Unacceptable" tabindex="37" />
<label class="choice" for="ch_hlp4" >
Unacceptable </label>
</span>
</div>
</fieldset>
</li>

<li id="foli216" class="notranslate      ">
<fieldset>
<![if !IE | (gte IE 8)]>
<legend id="title216" class="desc">
Were the labs held regularly ?
</legend>
<![endif]>
<div>
<input id="default" name="labs" type="hidden" value="" />
<span>
<input id="ch_lab0" name="labs" type="radio" class="field radio" value="Yes" tabindex="42" />
<label class="choice" for="ch_lab0" >
Yes </label>
</span>
<span>
<input id="ch_lab1" name="labs" type="radio" class="field radio" value="No" tabindex="43" />
<label class="choice" for="ch_lab1" >
No </label>
</span>
</div>
</fieldset>
</li>

<li id="foli316" class="notranslate      ">
<fieldset>
<![if !IE | (gte IE 8)]>
<legend id="title316" class="desc">
Whether the lab assignments offered enough supplements for theory courses ? 
</legend>
<![endif]>
<div>
<input id="default" name="lab_assignments" type="hidden" value="" />
<span>
<input id="ch_labas0" name="lab_assignments" type="radio" class="field radio" value="Yes" tabindex="44" />
<label class="choice" for="ch_labas0" >
Yes</label>
</span>
<span>
<input id="ch_labas1" name="lab_assignments" type="radio" class="field radio" value="No" tabindex="45" />
<label class="choice" for="ch_labas1" >
No</label>
</span>
</div>
</fieldset>
</li>

<li id="foli416" class="notranslate      ">
<fieldset>
<![if !IE | (gte IE 8)]>
<legend id="title416" class="desc">
Rank the interconnection between lab and theory ?
</legend>
<![endif]>
<div>
<input id="default" name="lnt" type="hidden" value="" />
<span>
<input id="ch_lnt0" name="lnt" type="radio" class="field radio" value="Extraordinary" tabindex="46" />
<label class="choice" for="ch_lnt0" >
Extraordinary </label>
</span>
<span>
<input id="ch_lnt1" name="lnt" type="radio" class="field radio" value="Good" tabindex="47" />
<label class="choice" for="ch_lnt1" >
Good </label>
</span>
<span>
<input id="ch_lnt2" name="lnt" type="radio" class="field radio" value="Average" tabindex="48" />
<label class="choice" for="ch_lnt2" >
Average </label>
</span>
<span>
<input id="ch_lnt3" name="lnt" type="radio" class="field radio" value="Poor" tabindex="49" />
<label class="choice" for="ch_lnt3" >
Poor </label>
</span>
<span>
<input id="ch_lnt4" name="lnt" type="radio" class="field radio" value="Unacceptable" tabindex="50" />
<label class="choice" for="ch_lnt4" >
Unacceptable </label>
</span>
</div>
</fieldset>
</li>

<li id="foli516" class="notranslate      ">
<fieldset>
<![if !IE | (gte IE 8)]>
<legend id="title516" class="desc">
Involvement of teacher in conducting the laboratory classes ?
</legend>
<![endif]>
<div>
<input id="default" name="involvement" type="hidden" value="" />
<span>
<input id="ch_invl0" name="involvement" type="radio" class="field radio" value="Extraordinary" tabindex="51" />
<label class="choice" for="ch_invl0" >
Extraordinary </label>
</span>
<span>
<input id="ch_invl1" name="involvement" type="radio" class="field radio" value="Good" tabindex="52" />
<label class="choice" for="ch_invl1" >
Good </label>
</span>
<span>
<input id="ch_invl2" name="involvement" type="radio" class="field radio" value="Average" tabindex="53" />
<label class="choice" for="ch_invl2" >
Average </label>
</span>
<span>
<input id="ch_invl3" name="involvement" type="radio" class="field radio" value="Poor" tabindex="54" />
<label class="choice" for="ch_invl3" >
Poor </label>
</span>
<span>
<input id="ch_invl4" name="involvement" type="radio" class="field radio" value="Unacceptable" tabindex="55" />
<label class="choice" for="ch_invl4" >
Unacceptable </label>
</span>
</div>
</fieldset>
</li>

<li id="foli616" class="notranslate      ">
<fieldset>
<![if !IE | (gte IE 8)]>
<legend id="title616" class="desc">
Overall rating of the teacher ?
</legend>
<![endif]>
<div>
<input id="default" name="overall" type="hidden" value="" />
<span>
<input id="ch_overall0" name="overall" type="radio" class="field radio" value="Extraordinary" tabindex="56" />
<label class="choice" for="ch_overall0" >
Extraordinary </label>
</span>
<span>
<input id="ch_overall1" name="overall" type="radio" class="field radio" value="Good" tabindex="57" />
<label class="choice" for="ch_overall1" >
Good </label>
</span>
<span>
<input id="ch_overall2" name="overall" type="radio" class="field radio" value="Average" tabindex="58" />
<label class="choice" for="ch_overall2" >
Average </label>
</span>
<span>
<input id="ch_overall3" name="overall" type="radio" class="field radio" value="Poor" tabindex="59" />
<label class="choice" for="ch_overall3" >
Poor </label>
</span>
<span>
<input id="ch_overall4" name="overall" type="radio" class="field radio" value="Unacceptable" tabindex="60" />
<label class="choice" for="ch_overall4" >
Unacceptable </label>
</span>
</div>
</fieldset>
</li>

<li id="foli211" class="notranslate      "><label class="desc" id="title211" for="Field211">
Your Suggestions 
</label>

<div>
<textarea id="suggestions"  name="suggestions" class="field textarea medium" spellcheck="true" rows="10" cols="50" tabindex="40" onkeyup=""></textarea>

</div>
</li>


 <li class="buttons ">
<div>
					<br>
                    <input id="saveForm" name="submit" class="btn btn-success pull-right btn" type="submit" value="Submit" />
</div>
</li>


</ul>
</form> 

</div><!--container-->

<a class="powertiny" 
style="display:block !important;visibility:visible !important;text-indent:0 !important;position:relative !important;height:auto !important;width:95px !important;overflow:visible !important;text-decoration:none;cursor:pointer !important;margin:0 auto !important">
</a>

			
			
</body>
</html>