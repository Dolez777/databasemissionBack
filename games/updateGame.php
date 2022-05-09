<?php
include TEMPLATES_DIR.'head.php';
include MODULES_DIR."games.php";

$name = filter_input(INPUT_POST, "name");
$newname = filter_input(INPUT_POST, "newname");


//updateGame($name, $newname);

    if(isset($newname)){
        try{
            updateGame($name, $newname);
            echo '<div class="alert alert-success" role="alert">Game updated!!</div>';
        }catch(Exception $e){
            echo '<div class="alert alert-danger" role="alert">'.$e->getMessage().'</div>';
        }
        
    }
?>

    <form action="updateGame.php" method="post">
        <label for="name">Game name:</label><br>
        <input type="text" name="name" id="name"><br>

        <label for="newname">New game name:</label><br>
        <input type="text" name="newname" id="newname"><br>
        
        <input type="submit" class="btn btn-primary" value="Update game">
    </form>

<?php   include TEMPLATES_DIR.'foot.php'; ?>