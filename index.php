<?php

const __BASE__ = __DIR__;

include __BASE__ . '\services\response.php';
include __BASE__ . '\routes.php';
include __BASE__ . '\services\router.php';
include __BASE__ . '\services\mysqli.php';

header('Content-Type: application/json');

$mysqli = new MySQLiLocal();
$router = new Router();
$router->parse();