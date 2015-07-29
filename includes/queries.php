<?php

session_start();
ob_start();
ini_set('display_errors',1);
ini_set('display_startup_errors',1);
error_reporting(-1);

require_once("api/sessionFunctions.php");
require_once("api/functions.php");

require_once("C:/wamp/www/feedback/business/Database_handler.class.php");
require_once("C:/wamp/www/feedback/business/Link.class.php");
require_once("C:/wamp/www/feedback/business/Error_handler.class.php");
require_once('C:/wamp/www/feedback/business/Logger.class.php');

mysql_connect('localhost', 'HR', '');
mysql_select_db('batch');

$query = "SELECT * FROM batch_temp"

$t = DatabaseHandler::GetAll($query); 
?>