<?php
require_once "../inc/functions.php";
require_once "../inc/headers.php";

try{
    $dp = openDb();
    selectAsJson($dp,"select * from games");
} catch (PDOException $pdoex) {
    returnError($pdoex);
}