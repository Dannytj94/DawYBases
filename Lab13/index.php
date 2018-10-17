<?php 

session_start();
 
require_once("validacion.php");
include("header.html");

  if (isset($_POST["usuario"])) {
        $_POST["usuario"] = validacion($_POST["usuario"]);
    }
    
    if (isset($_POST["password"])) {
        $_POST["password"] = validacion($_POST["password"]);
    }
 
    if ($_POST["usuario"] == "Daniela" && $_POST["password"] == "A01172848") {
        include("Lab13.html");
    } 
    else if ($_POST["usuario"] == "Diego" && $_POST["password"] == "A01208302") {
        include("Lab13.html");
    } 
     else if ($_POST["usuario"] == "Chepo" && $_POST["password"] == "A01020382") {
        include("Lab13.html");
    } 
     else if ($_POST["usuario"] == "Carlos" && $_POST["password"] == "A01153661") {
        include("Lab13.html");
    } 
     else if ($_POST["usuario"] == "Lalo" && $_POST["password"] == "A0123456") {
        include("Lab13.html");
    } 
     else if ($_POST["usuario"] == "Alfonso" && $_POST["password"] == "A0123457") {
            include("Lab13.html");
        }
     else if ($_POST["usuario"] == "Ana" && $_POST["password"] == "A01208302") {
        include("Lab13.html");
    } 
    else if ($_POST["usuario"] == "" && $_POST["password"] == "" 
                && isset($_POST["usuario"])  && isset($_POST["password"]) ) {
        $error = "Ingresa tu nombre y tu contraseña ";
        include("login.html");
    } else if(isset($_POST["usuario"]) || isset($_POST["password"]) ) {
        sleep(3);
        $error = "Lo siento, tienes que ser un usuario registrado.";
        include("login.html");
    } else {
        include("login.html");
    }



include("footer.html");




?>