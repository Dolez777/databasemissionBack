<?php
   
    if(isset($_SESSION["username"])){
        logout();
    }else{
        echo '<div class="alert alert-success" role="alert"> Olet kirjautunut ulos </div>';
    }

?>