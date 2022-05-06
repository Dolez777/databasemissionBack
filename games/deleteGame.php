<?php
require_once "../inc/functions.php";
require_once "../inc/headers.php";

$input = json_decode(file_get_contents("php://input"));
$id = filter_var($input->id,FILTER_SANITIZE_FULL_SPECIAL_CHARS);

try{
    $dp = openDb();

    $query = $dp->prepare("delete from games where id=(:id)");
    $query->bindValue(":id",$id,PDO::PARAM_INT);
    $query->execute(); 

    //$query = $dp->prepare("insert into item(amount) values (:amount)");
 

    header("HTTP/1.1 200 OK");
    $data = array("id" => $id);
    print json_encode($data);
    } catch (PDOException $pdoex) {
        returnError($pdoex);
    }