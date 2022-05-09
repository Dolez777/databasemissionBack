<?php
require_once INC_DIR."functions.php";
require_once INC_DIR."headers.php";

function getGames(){
    require_once 'db.php';

    try{
        $pdo = getPdoConnection();
        $sql = "SELECT * FROM games";
        $games = $pdo->prepare($sql);
        $games->execute();
        $result = $games->fetchAll(PDO::FETCH_ASSOC);
        $json = json_encode($result);
        echo $json;
        return $json;
    }catch(PDOException $e){
        throw $e;
    }
}


function addGame($name){
    require_once 'db.php'; // DB connection
    
    //Tarkistetaan onko muttujia asetettu
   /* if( !isset($fname) || !isset($lname) || !isset($uname) || !isset($pw) ){
        throw new Exception("Missing parameters! Cannot add person!");
    }*/
    if( !isset($name)){
        throw new Exception("Missing parameters! Cannot add game!");
    }
    //Tarkistetaan, ettei tyhjiä arvoja muuttujissa
   /* if( empty($fname) || empty($lname) || empty($uname) || empty($pw) ){
        throw new Exception("Cannot set empty values!");
    } */ 
    if( empty($name) ){
        throw new Exception("Cannot set empty values!");
    }
    try{
        $pdo = getPdoConnection();
            //Suoritetaan parametrien lisääminen tietokantaan.
        $sql = "INSERT INTO games (name) VALUES (?)";
        $statement = $pdo->prepare($sql);
        $statement->bindParam(1, $name);
            //$statement->bindParam(2, $lname);
            //$statement->bindParam(3, $uname);
            //$hash_pw = password_hash($pw, PASSWORD_DEFAULT);
            //$statement->bindParam(4, $hash_pw);

            $statement->execute();
       
    }catch(PDOException $e){
        throw $e;
    }
}

function deleteGame($id){
    require_once 'db.php';

    if( !isset($id) ){
        throw new Exception("Missing parameters! Cannot delete person!");
    }

    try{
        $pdo = getPdoConnection();
        $pdo->beginTransaction();
        
        $sql = "DELETE FROM games WHERE id = ?";
        $statement = $pdo->prepare($sql);
        $statement->bindParam(1, $id);        
        $statement->execute();
        $pdo->commit();
    }catch(PDOException $e){
        // Rollback transaction on error
        $pdo->rollBack();
        throw $e;
    }
    
}

function updateGame($id, $name, $releaseDate, $rating, $revenue) {
    require_once 'db.php'; // DB connection
    
    if( !isset($id) ){
        throw new Exception("Couldn't update game!");
    }
    
    try{
        $pdo = getPdoConnection();
        
        $sql = "UPDATE games SET = COALESCE(NULLIF('$name', ''), name), releaseDate = COALESCE(NULLIF('$releaseDate', 0), releaseDate), rating = COALESCE(NULLIF('$rating', ''), rating), revenue = COALESCE(NULLIF('$revenue', 0), revenue) WHERE id = $id";
        $pdo->query($sql);
        
        
    }catch(PDOException $e){
        throw $e;
    }
}