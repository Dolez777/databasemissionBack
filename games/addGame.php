<?php
include TEMPLATES_DIR.'head.php';
require_once MODULES_DIR."games.php";

    $fname = filter_input(INPUT_POST, "fname");


    if(isset($fname)){
        try{
            addGame($fname);
            echo '<div class="alert alert-success" role="alert">Game added!!</div>';
        }catch(Exception $e){
            echo '<div class="alert alert-danger" role="alert">'.$e->getMessage().'</div>';
        }
        
    }
?>

    <form action="addgame.php" method="post">
        <label for="fname">Game name:</label><br>
        <input type="text" name="fname" id="fname"><br>
        
        <input type="submit" class="btn btn-primary" value="Add game">
    </form>

<?php   include TEMPLATES_DIR.'foot.php'; ?>