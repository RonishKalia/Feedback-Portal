<?php

mysql_connect('localhost', 'root', '');
mysql_select_db('batch');

$sql_query = "INSERT INTO question_feedback(teacher_id, subject_id, Q1, Q2, Q3) VALUES ('SS','asbv' ,'fghj', 'hf', 'hjh')";
mysql_query($sql_query);

?>