<?php


function login($uname, $pw){

    require_once MODULES_DIR.'db.php';
    
    // $uname = filter_input(INPUT_POST, "username");
    // $pw = filter_input(INPUT_POST, "password");

    //Tarkistetaan onko muttujia asetettu
    if( !isset($uname) || !isset($pw) ){
        echo "Missing parameters. Cannot log in.";
    }

    //Tarkistetaan, ettei tyhjiä arvoja muuttujissa
    if( empty($uname) || empty($pw) ){
        echo "Cannot log in with empty values.";
    }

    try{
        $pdo = getPdoConnection();
        //Haetaan käyttäjä annetulla käyttäjänimellä
        $sql = "SELECT username, password FROM users WHERE username=?";
        $statement = $pdo->prepare($sql);
        $statement->bindParam(1, $uname);
        $statement->execute();
        
        if($statement->rowCount() <=0){
            echo "Person not found! Cannot log in!";
            echo "mitä";
        }

        $row = $statement->fetch();

        //Tarkistetaan käyttäjän antama salasana tietokannan salasanaa vasten
        if(!password_verify($pw, $row["password"] )){
            echo "Wrong password!!";
            echo "mitä";
        }

        //Jos käyttäjä tunnistettu, talletetaan käyttäjän tiedot sessioon
        
        $_SESSION["username"] = $uname;

    }catch(PDOException $e){
        throw $e;
    }

}

function logout(){
    //Tyhjennetään ja tuhotaan nykyinen sessio.
    try{
        session_unset();
        session_destroy();
    }catch(Exception $e){
        throw $e;
    }
}

?>