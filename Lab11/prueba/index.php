<?php 

require_once("validacion.php");
include("header.html");

  if (isset($_POST["user"])) {
        $_POST["user"] = limpia_entrada($_POST["user"]);
    }
    
    if (isset($_POST["matricula"])) {
        $_POST["matricula"] = limpia_entrada($_POST["matricula"]);
    }
 
    if ($_POST["user"] == "Daniela" && $_POST["matricula"] == "A01172848") {
        include("invitacion.html");
    } 
    else if ($_POST["user"] == "Diego" && $_POST["matricula"] == "A01208302") {
        include("invitacion.html");
    } 
     else if ($_POST["user"] == "Chepo" && $_POST["matricula"] == "A01020382") {
        include("invitacion.html");
    } 
     else if ($_POST["user"] == "Carlos" && $_POST["matricula"] == "A01153661") {
        include("invitacion.html");
    } 
     else if ($_POST["user"] == "Lalo" && $_POST["matricula"] == "A0123456") {
        include("invitacion.html");
    } 
     else if ($_POST["user"] == "Alfonso" && $_POST["matricula"] == "A0123457") {
            include("invitacion.html");
        }
     else if ($_POST["user"] == "Ana" && $_POST["matricula"] == "A01208302") {
        include("invitacion.html");
    } 
    else if ($_POST["usuario"] == "" && $_POST["password"] == "" 
                && isset($_POST["usuario"])  && isset($_POST["password"]) ) {
        $error = "Ingresa tu nombre y matricula";
        include("_login.html");
    } else if(isset($_POST["usuario"]) || isset($_POST["password"]) ) {
        sleep(3);
        $error = "Lo siento, no estas invitado";
        include("lab11.html");
    } else {
        include("lab11.html");
    }



include("footer.html");




?>