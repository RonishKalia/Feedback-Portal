<?php

	define('SITE_ROOT', dirname(dirname(__FILE__)));
	define ('HOST', 'localhost');
	define ('USER', 'root');
	define ('PASS', '');
	define ('DBNAME', 'batch');
	define('PDO_DSN', 'mysql:host=' . HOST . ';dbname=' . DBNAME);
	define('DB_PERSISTENCY', true);
	define ('SITE_TITLE', 'FeedBack IIIT-A');
	
	//Error handling parametres
	define('IS_WARNING_FATAL', true);
	define('DEBUGGING', true);
	define('ERROR_TYPES', E_ALL);

	//Error logging parametres
	define('LOG_ERRORS', true);
	define('LOG_ERROR_FILE', '/var/www/feedback/error_log.txt');
	define('SITE_GENERIC_ERROR_MESSAGE', '<h1> Site: An Error Occured </h1>');
	
	define('HOME', "index.php");
?>
