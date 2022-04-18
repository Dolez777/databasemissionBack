<?php
require_once "../inc/functions.php";
require_once "../inc/headers.php";

try{
    $dp = openDb();
    selectAsJson($dp,"select * from genre order by genre_id");
} catch (PDOException $pdoex) {
    returnError($pdoex);
}