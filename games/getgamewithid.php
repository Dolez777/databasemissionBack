<?php
require_once "../inc/functions.php";
require_once "../inc/headers.php";

$uri = parse_url(filter_input(INPUT_SERVER, 'PATH_INFO'),PHP_URL_PATH);
$parameters = explode('/',$uri);
$game_id = $parameters[1];

try {
    $db = openDb();
    

    $sql = "select * from games where id = $game_id";
    $query = $db->query($sql);
    $games = $query->fetchAll(PDO::FETCH_ASSOC);

    header("HTTP/1.1 200 OK");
    echo json_encode(array(
       
        "games" => $games
    ));
}
catch (PDOException $pdoex) {
    returnError($pdoex);
}
