<?php
include TEMPLATES_DIR.'head.php';
include MODULES_DIR.'games.php';

    //Filtteroidaan POST-inputit (ei käytetä string-filtteriä, koska deprekoitunut)
    //Jos parametria ei löydy, funktio palauttaa null
    $uname = filter_input(INPUT_POST, "username");
    $pw = filter_input(INPUT_POST, "password");

    if(isset($uname)){
        try{
            addUser($uname, $pw);
            echo '<div class="alert alert-success" role="alert">Person added!!</div>';
        }catch(Exception $e){
            echo '<div class="alert alert-danger" role="alert">'.$e->getMessage().'</div>';
        }
        
    }

?>

    <form action="user.php" method="post">
        <label for="username">Username:</label><br>
        <input type="text" name="username" id="username"><br>
        <label for="password">Password:</label><br>
        <input type="password" name="password" id="password"><br>
        <input type="submit" class="btn btn-primary" value="Add person">
    </form>

<?php   include TEMPLATES_DIR.'foot.php'; ?>