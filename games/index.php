<?php

    include TEMPLATES_DIR.'head.php';

    //Tarkistetaan onko sessioon asetettu käyttäjä.
    if(isset($_SESSION["username"])){
        echo "<h1>Tervetuloa! ".$_SESSION["username"]."</h1>";
    }else{
        echo "<h1>Tervetuloa Pelitietokantasivulle!</h1>";
    }

    include TEMPLATES_DIR.'foot.php';
