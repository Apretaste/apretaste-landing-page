<?php

include "../vendor/autoload.php";
define ('PACKAGES', __DIR__);

use Apretaste\Config;
use divengine\ways;
use divengine\div;
use Apretaste\Database;
use Apretaste\Person;

// localize timezone and dates
setlocale(LC_TIME, "es_ES", 'Spanish_Spain', 'Spanish');
date_default_timezone_set('America/Havana');

// capture all errors
set_error_handler(function($number, $string, $file, $line) {
	throw new Exception($string);
}, E_ALL);

// get global
define('HTTP_BASE_PATH', $_SERVER['REQUEST_SCHEME'] . '://' . $_SERVER['HTTP_HOST']);
define('HTTP_FULL_PATH', HTTP_BASE_PATH . $_SERVER['REQUEST_URI']);
define('BASE_PATH', dirname(__DIR__) . DIRECTORY_SEPARATOR);
define('APP_PATH', BASE_PATH . 'app/');
define('TEMP_PATH', BASE_PATH . 'tmp/');

// define the environment
define('IS_PRODUCTION', Config::pick('general')['tier'] === 'prod');
define('IS_HOME_PAGE', $controller == 'index');



ways::listen("/profile/{hash}", function($data, $args) {

	$profile = Database::queryFirst("SELECT id FROM person WHERE hash = '{$args['hash']}';");
	$person = Person::find($profile->id);

	echo new div('profile', [
		'profile' => $person
	]);
});

ways::bootstrap();

// close the database connection
Database::close();