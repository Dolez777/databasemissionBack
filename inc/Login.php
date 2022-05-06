<?php
$uname = filter_input(INPUT_POST, "username");
$pw = filter_input(INPUT_POST, "password");

if(!isset($_SESSION["username"]) && isset($uname)){

    try {
        login($uname, $pw);
        header("Location: index.php");
        exit;
    } catch (Exception $e) {
        echo '<div class="alert alert-danger" role="alert">'.$e->getMessage().'</div>';
    }
   
}

    if(!isset($_SESSION["usename"])){
?>


<?php } 