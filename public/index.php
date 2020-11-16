<?php

use Framework\View;
use Framework\Config;
use Framework\Request;
use Framework\Database;

// localize timezone and dates
setlocale(LC_TIME, "es_ES", 'Spanish_Spain', 'Spanish');
date_default_timezone_set('America/Havana');

// capture all errors
set_error_handler(function($number, $string, $file, $line) {
	throw new Exception($string);
}, E_ALL);

// get page and action from the url
$controller = isset($_GET['c']) ? $_GET['c'] : "index";
$action = isset($_GET['a']) ? $_GET['a'] : "main";

// get global 
define('BASE_PATH', dirname(__DIR__) . DIRECTORY_SEPARATOR);
define('APP_PATH', BASE_PATH . 'app/'); 
define('TEMP_PATH', BASE_PATH . 'tmp/');

// add the autoload
include BASE_PATH . "vendor/autoload.php";

// define the environment
define('IS_PRODUCTION', Config::pick('general')['tier'] === 'prod');

// show 404 error
if(!file_exists(APP_PATH . "controllers/$controller.php")) {
	die("404 error");
}

// create a new Controller
include APP_PATH . "controllers/$controller.php";
$page = new $controller();

// check if the action exists on the controller
if(!method_exists($page, $action)) $action = 'main';

// add a new view
$page->view = new View($controller, $action);

// add an input handler
$page->request = new Request();

// run the controller
$page->$action();

// render the view
$page->view->render();

// close the database connection
Database::close();