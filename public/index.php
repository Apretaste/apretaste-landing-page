<?php

use Apretaste\WebRequest;
use Framework\View;
use Framework\Config;
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
$params = isset($_GET['p']) ? $_GET['p'] : "";

// get global
define('HTTP_BASE_PATH', $_SERVER['REQUEST_SCHEME'] . '://' . $_SERVER['HTTP_HOST']);
define('HTTP_FULL_PATH', HTTP_BASE_PATH . $_SERVER['REQUEST_URI']);
define('BASE_PATH', dirname(__DIR__) . DIRECTORY_SEPARATOR);
define('APP_PATH', BASE_PATH . 'app/'); 
define('TEMP_PATH', BASE_PATH . 'tmp/');

// check and apply redirections
include BASE_PATH . "configs/routes.php";
if(isset($routes["$controller/$action"])) {
	header("HTTP/1.1 301 Moved Permanently");
	header("Location: /" . $routes["$controller/$action"]);
	exit;
}

// add the autoload
include BASE_PATH . "vendor/autoload.php";

// define the environment
define('IS_PRODUCTION', Config::pick('general')['tier'] === 'prod');
define('IS_HOME_PAGE', $controller == 'index');

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
$page->request = new WebRequest();
$page->request->params = $params;

// run the controller
$page->$action();

// render the view
$page->view->render();

// close the database connection
Database::close();
