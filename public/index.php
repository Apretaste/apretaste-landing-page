<?php

// capture all errors
set_error_handler(function($number, $string, $file, $line) {
	throw new Exception($string);
}, E_ALL);

// get page and action from the url
$controller = isset($_GET['c']) ? $_GET['c'] : "index";
$action = isset($_GET['a']) ? $_GET['a'] : "main";

// get global 
define('BASE_PATH', str_replace('public', '', dirname(__FILE__)));
define('APP_PATH', BASE_PATH . 'app/'); 

// show 404 error
if(!file_exists(APP_PATH . "controllers/$controller.php")) {
	die("404 error");
}

// add the vendor autload file
// include "vendor/autoload.php";

// incluce all supporting classes
foreach (glob(APP_PATH . "classes/*.php") as $filename) {
	include $filename; 
}

// create a new Controller
include APP_PATH . "controllers/$controller.php";
$page = new $controller();

// check if the action exists on the controller
if(!method_exists($page, $action)) $action = 'main';

// add a new view
$page->view = new View($controller, $action);

// run the controller
$page->$action();

// render the view
$page->view->render();

// close the database connection
Database::close();
