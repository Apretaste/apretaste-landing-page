<?php

include "../vendor/autoload.php";
define ('PACKAGES', __DIR__);

use divengine\ways;
use divengine\div;
use Apretaste\Database;
use Apretaste\Person;

ways::listen("/profile/{hash}", function($data, $args) {

	$profile = Database::queryFirst("SELECT id FROM person WHETE hash = '{$args['hash']}';");
	$person = Person::find($profile->id);

	echo new div('profile', [
		'profile' => $person
	]);
});

ways::bootstrap();