<?php
require_once INC_DIR."functions.php";
require_once INC_DIR."headers.php";
require_once MODULES_DIR."games.php";


    $fname = filter_input(INPUT_POST, "fname");

    getgames();


    if(isset($fname)) {
        try{
            addGame($fname);
            echo '<div class="alert alert-success" role="alert">Game added!!</div>';
        }catch(Exception $e){
            echo '<div class="alert alert-danger" role="alert">'.$e->getMessage().'</div>';
        }
    }










/*



$input = json_decode(file_get_contents("php://input"));
$name = filter_var($input->name,FILTER_SANITIZE_FULL_SPECIAL_CHARS);
//$amount = filter_var($input->amount,FILTER_SANITIZE_NUMBER_INT);

try{
    $dp = openDb();
    $query = $dp->prepare("insert into games(name) values (:name)");
    //$query = $dp->prepare("insert into games(name, releaseDate,rating,revenue) values (:name,:releaseDate,:rating,:revenue)");
    $query->bindValue(":name", $name,PDO::PARAM_STR);
   // $query->bindValue(":releaseDate", $releaseDate,PDO::PARAM_STR);
    //$query->bindValue(":rating", $rating,PDO::PARAM_STR);
    //$query->bindValue(":revenue", $revenue,PDO::PARAM_STR);
    $query->execute(); 

    //$query = $dp->prepare("insert into item(amount) values (:amount)");
 

    header("HTTP/1.1 200 OK");
    $data = array("id" => $dp->lastInsertId(), "name" => $name);
    //$data = array("id" => $dp->lastInsertId(), "name" => $name, "releaseDate" => $releaseDate, "rating" => $rating, "revenue" => $revenue);
    print json_encode($data);
    } catch (PDOException $pdoex) {
        returnError($pdoex);
    } */