<?php

function checkSession(){
    if(isset($_SESSION["username"])){
       return 1;
    }else{
        return "0";
    }

}