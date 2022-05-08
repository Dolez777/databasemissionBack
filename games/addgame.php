<?php
require_once INC_DIR."functions.php";
require_once INC_DIR."headers.php";
require_once MODULES_DIR."games.php";

$input = json_decode(file_get_contents("php://input"));
$name = filter_var($input->$name,FILTER_SANITIZE_FULL_SPECIAL_CHARS);

    addGame($name);

