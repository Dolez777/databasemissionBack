<?php
require_once "../inc/functions.php";
require_once "../inc/headers.php";

$url = parse_url(filter_input(INPUT_SERVER, 'PATH_INFO'),PHP_URL_PATH);
$parameters = explode('/',$url);
$genre_id = $parameters[1];

try {
    $db = openDb();
    $sql = "select * from genre where genre_id = $genre_id";
    $query = $db->query($sql);
    $genre = $query->fetch(PDO::FETCH_ASSOC);

    $sql = "select * from games where genre_id = $genre_id";
    $query = $db->query($sql);
    $games = $query->fetchAll(PDO::FETCH_ASSOC);

    header("HTTP/1.1 200 OK");
    echo json_encode(array(
        "genre" => $genre["genre_name"],
        "games" => $games
    ));
}
catch (PDOException $pdoex) {
    returnError($pdoex);
}
