<?php
require_once INC_DIR."functions.php";
require_once INC_DIR."headers.php";
require_once MODULES_DIR."authorization.php";

$input = json_decode(file_get_contents("php://input"));
$uname = filter_var($input->username,FILTER_SANITIZE_FULL_SPECIAL_CHARS);
$pw = filter_var($input->password,FILTER_SANITIZE_FULL_SPECIAL_CHARS);

if(!isset($_SESSION["username"]) && isset($uname)){
    echo "iogfaes2";
    try {
        login($uname, $pw);
        echo "jeeeee";
        exit;
    } catch (Exception $e) {
        echo "gg";
    }  
}

