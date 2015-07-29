<?php
session_start();
ob_start();
ini_set('display_errors',1);
ini_set('display_startup_errors',1);
error_reporting(-1);

require_once("config/config.php");

require_once("models/database.php");
require_once("models/session.php");

require_once("api/sessionFunctions.php");
require_once("api/functions.php");

require_once("business/Database_handler.class.php");
require_once("business/Link.class.php");
require_once("business/Error_handler.class.php");
require_once('business/Logger.class.php');

ErrorHandler::SetHandler();
	
	if(!isLogin()) {
		require_once("models/login.php");
	}	
	else
	{
			require_once('includes/form.php');
	}
	flush();
	ob_flush();
	ob_end_clean();
?>