<?php
	
	function authenticate($uid, $pwd) //Check authentication
	{
		/*if ($pwd) 
		{
			$ds = ldap_connect("172.31.1.42");
			ldap_set_option($ds, LDAP_OPT_PROTOCOL_VERSION, 3);
			$a = ldap_search($ds, "dc=iiita,dc=ac,dc=in", "uid=$uid" );
			$b = ldap_get_entries( $ds, $a );
			if(count($b) > 1)
				$dn = $b[0]["dn"];
			else 
				return 0;
			
			$ldapbind=@ldap_bind($ds, $dn, $pwd);
			
			if ($ldapbind)  {
				return 1;
				setSession($uid);
			}
			else 
				return 0;
			
			ldap_close($ds);
		}
		else 
			return 0;*/
		setSession($uid);
		return 1;
	}
	
	function teacherAuthenticate($uid, $pwd) //Check authentication
	{
		/*if ($pwd) 
		{
			$ds = ldap_connect("172.31.1.42");
			ldap_set_option($ds, LDAP_OPT_PROTOCOL_VERSION, 3);
			$a = ldap_search($ds, "dc=iiita,dc=ac,dc=in", "uid=$uid" );
			$b = ldap_get_entries( $ds, $a );
			if(count($b) > 1)
				$dn = $b[0]["dn"];
			else 
				return 0;
			
			$ldapbind=@ldap_bind($ds, $dn, $pwd);
			
			if ($ldapbind)  {
				return 1;
				setSession($uid);
			}
			else 
				return 0;
			
			ldap_close($ds);
		}
		else 
			return 0;*/
		setTeacherSession($uid);
		return 1;
	}
	
	function setSession ($username) {
		$_SESSION['user'] = $username;
		$_SESSION['loginIdentifier'] = 1;
	}
	
	function setTeacherSession ($username) {
		$_SESSION['teacher'] = $username;
		$_SESSION['teacherLoginIdentifier'] = 1;
	}
	
	function isLogin() 
	{
		if(isset($_SESSION['loginIdentifier']))
			if($_SESSION['loginIdentifier'])
				return 1;
		return 0;
	}
	
	function isTeacherLogin()
	{
		if(isset($_SESSION['teacherLoginIdentifier']))
			if($_SESSION['teacherLoginIdentifier'])
				return 1;
		return 0;
	}
	
	function logLogin() {
		$username =$_SESSION['user'];
		$ip  = $_SERVER['REMOTE_ADDR'];
		$sql = "UPDATE log_login_sessions SET ip=:ip, login_time=NOW() WHERE username=:username ";
		$params = array(':username' => $username, ':ip' => $ip);
		
		$result = DatabaseHandler::Execute($sql, $params);
	}
	
	function adminauthenticate($username, $password) //Check admin authentication
	{
		$passwordcrypt = ENCRYPT . $password;
		$passwordcrypt = SHA1($passwordcrypt);
		$sql = "SELECT * FROM admin_usr WHERE username = :username AND password = :password AND isactive = 1 AND isdeleted = 0";
		$params = array(':username' => $username, ':password' => $passwordcrypt);
		$result = DatabaseHandler::GetAll($sql, $params);
		if(count($result) > 0) {
			return 1;
		}
		return 0;
	}
	
	function isAdminLogin() 
	{
		if(isset($_SESSION['loginAdminIdentifier']))
			if($_SESSION['loginAdminIdentifier'])
				return 1;
		return 0;
	}
	
	function logAdminLogin() {
		$username =$_SESSION['admin'];
		$ip  = $_SERVER['REMOTE_ADDR'];
		$sql = "UPDATE log_login_sessions SET ip=:ip, login_time=NOW() WHERE username=:username ";
		$params = array(':username' => $username, ':ip' => $ip);
		
		$result = DatabaseHandler::Execute($sql, $params);
	}
?>