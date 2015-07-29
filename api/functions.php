<?php
//	error_reporting(error_reporting() & ~E_DEPRECATED);
	function redirectTo ($url) 
	{
		header('Location:'.$url);
	}
	
	function getSubListByid($username) //Returns subjects list according to id
	{
		$l = strlen($username);
		$username = strtoupper($username);
		$rollno = $username[$l-1] + ($username[$l-2]-'0')*10 + ($username[$l-3]-'0')*100;
		$batchid = $username[1].$username[2]."2k".$username[5].$username[6];
		if ($batchid[0] == 'I' && $batchid[1] == 'T') {
			if ($rollno > 113) {
				$batchid .= 'B';
			} else {
				$batchid .= 'A';
			}
		}
		$sql = "SELECT * FROM batch_temp WHERE Batch_ID = :batchid";
		$params = array(':batchid' => $batchid);
		$result = DatabaseHandler::GetAll($sql, $params);
		return $result;
	}
	
	function getTeacherByid($teacherid)
	{
		$sql = "SELECT * FROM teacher WHERE ID = :teacherid";
		$params = array(':teacherid' => $teacherid);
		$result = DatabaseHandler::GetAll($sql, $params);
		return $result[0]['Name'];
	}
	
	