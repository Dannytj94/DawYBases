<?php
function validacion ($variable){
    
    $variable=htmlspecialchars($variable);
    $variable= htmlentities($variable);
    $variable=strip_tags($variable);
    
    return $variable;
}


function connectDb(){
    
    $servername= "localhost";
    $username="root";
    $password="";
    $dbname= "BaseLab14";

    $con = mysqli_connect($servername, $username, $password, $dbname);

    if(!$con){

    die("Connection failed: " . mysqli_connect_error());
    
}

    return $con;

}

function closeDB($mysql){

    mysqli_close($mysql);

}



function getusuarios(){
    $conn= connectDb();

$sql= "SELECT usuario, password, adoptante FROM usuarios";

$result = mysqli_query($conn, $sql);
clodeDB($conn);
return $result;

}

function getanimales(){

$conn=connectDb();
$sql="SELECT nombre, especie, raza, edad FROM animales";

$result=mysqli:query($conn, $sql);

closeDB($conn);

return $return;

}

function getadoptantes()
{
$conn= connectDb();
$sql="SELECT usuario FROM usuarios WHERE adoptante = TRUE";

$result = mysqli_query($conn, $sql);

closeDb($conn);
return $result;

}

function getanimalesporespecie($especie){

$conn=connectDb();
$sql="SELECT nombre, raza, especie, edad FROM animales WHERE especie LIKE '%".$especie."%'";
$result=mysqli_query($conn, $sql);

closeDB($conn);
return $result;


}

?>