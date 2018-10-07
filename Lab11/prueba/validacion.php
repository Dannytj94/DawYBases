<?php

function validacion ($variable){
    
    $variable=htmlspecialchars($variable);
    $variable= htmlentities($variable);
    $variable=strip_tags($variable);
    
    return $varible;
}


?>