<?php
include TEMPLATES_DIR.'head.php';
require_once MODULES_DIR."games.php";

$id = filter_input(INPUT_GET, "id");
// If id parameter exists -> delete
if(isset($id)){
    try{
        deleteGame($id);
        echo '<div class="alert alert-success" role="alert">Person deleted!!</div>';
    }catch(Exception $e){
        echo '<div class="alert alert-danger" role="alert">'.$e->getMessage().'</div>';
    }
    
}

$games = getgames();

echo "<ul>";
foreach($games as $g){
    echo "<li>".$g["name"]." ".'<a href="games.php?id=' . $g["id"] . '" class="btn btn-primary">Delete</a> </li>';
}
echo "</ul>";

include TEMPLATES_DIR.'foot.php';
    