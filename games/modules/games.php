<?php
require_once "../inc/functions.php";
require_once "../inc/headers.php";

function getGames(){
    require_once 'db.php';

    try{
        $pdo = getPdoConnection();
        // Create SQL query to get all rows from a table
        $sql = "SELECT * FROM games";
        // Execute the query
        $games = $pdo->query($sql);

        return $people->fetchAll();
    }catch(PDOException $e){
        throw $e;
    }
}


function addgame($fname){
    require_once 'db.php'; // DB connection
    
    //Tarkistetaan onko muttujia asetettu
   /* if( !isset($fname) || !isset($lname) || !isset($uname) || !isset($pw) ){
        throw new Exception("Missing parameters! Cannot add person!");
    }*/

    if( !isset($fname)){
        throw new Exception("Missing parameters! Cannot add game!");
    }
    
    //Tarkistetaan, ettei tyhjiä arvoja muuttujissa
   /* if( empty($fname) || empty($lname) || empty($uname) || empty($pw) ){
        throw new Exception("Cannot set empty values!");
    } */
    
    if( empty($fname) ){
        throw new Exception("Cannot set empty values!");
    }


    try{
        $pdo = getPdoConnection();
        //Suoritetaan parametrien lisääminen tietokantaan.
        $sql = "INSERT INTO games (name) VALUES (?)";
        $statement = $pdo->prepare($sql);
        $statement->bindParam(1, $fname);
        //$statement->bindParam(2, $lname);
        //$statement->bindParam(3, $uname);
    
        //$hash_pw = password_hash($pw, PASSWORD_DEFAULT);
        //$statement->bindParam(4, $hash_pw);
        
    
        $statement->execute();
    
        echo "Peli ".$fname."on lisätty tietokantaan"; 
    }catch(PDOException $e){
        throw $e;
    }
}


/*
function deletePerson($id){
    require_once MODULES_DIR.'db.php'; // DB connection
    
    //Tarkistetaan onko muttujia asetettu
    if( !isset($id) ){
        throw new Exception("Missing parameters! Cannot delete person!");
    }
    
    try{
        $pdo = getPdoConnection();
        // Start transaction
        $pdo->beginTransaction();
        // Delete from worktime table
        $sql = "DELETE FROM worktime WHERE person_id = ?";
        $statement = $pdo->prepare($sql);
        $statement->bindParam(1, $id);        
        $statement->execute();
        // Delete from person table
        $sql = "DELETE FROM person WHERE ID = ?";
        $statement = $pdo->prepare($sql);
        $statement->bindParam(1, $id);        
        $statement->execute();
        // Commit transaction
        $pdo->commit();
    }catch(PDOException $e){
        // Rollback transaction on error
        $pdo->rollBack();
        throw $e;
    }
} */