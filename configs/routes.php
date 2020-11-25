<?php

// use this file to set up redirections routes
// set a rule as "$controller/$action" and it's value in a vector
// if you are only matching the controller, pass "main" as action

$routes = [
	"descargar/main" => ["download", "main"],
	"invite/main" => ["invitar", "main"],
];
