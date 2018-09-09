<?php

function generarArreglo()
{
    $arreglo=array();
    for($i=0; $i<5; $i++)
    {
        $num=rand(1,9);
        array_push($arreglo,$num);
    }
    
    return $arreglo;
}

function print_array($arreglo) 
{ 
       echo '{ '.$arreglo[0];
        for ($i=1; $i<sizeof($arreglo); $i++) {
            echo ', '.$arreglo[$i];
        }
       echo ' }';
    }



function promedio ($arreglo)
{
 
    echo "El arreglo es ";
    print_array($arreglo);
    echo "<br>";
    $prom = array_sum($arreglo)/count($arreglo);
    echo "El promedio es ".$prom;  
    
}

function mediana($arreglo)
{
    echo "El arreglo es ";
    print_array($arreglo);
    echo "<br>";
    sort($arreglo);
    $arrlenght=count($arreglo);
    $valormedio=floor((($arrlenght-1))/2);
    if($arrlenght%2==0)
    {
        $mediana=($arreglo[$valormedio]+($arreglo[$valormedio+1]))/2;  
    } 
    else 
    { 
       $mediana=$arreglo[$valormedio];
    }

    echo "La mediana es ".$mediana;
}

function listaPromMediana ($arreglo)
{
    echo "El arreglo es ";
    echo "<br/><ul><li>".$arreglo[0]."</li><li>".$arreglo[1]."</li><li>".$arreglo[2]."</li><li>".$arreglo[3]."</li><li>".$arreglo[4]."</li></ul>";  
    
     echo "<br/>";
    mediana($arreglo);
     echo "<br/>";
    promedio($arreglo);
     echo "<br/>";
    sort($arreglo);
    echo "El arreglo ordenado de menor a mayor es ";
    print_array($arreglo);
    echo "<br>";
    rsort($arreglo);
    echo "El arreglo es ordenado de mayor a menor es ";
    print_array($arreglo);
    echo "<br>";
       
}

function tablaPotencias() 
{ 
    
    $n= rand(1,10);
    echo '<table border="1" class="highlight">';
    for($i=1; $i <= $n; $i++)
    {
        echo '<tr>';
        
        for($j=1; $j<=3; $j++)
        {
            $aux = pow($i,$j);
            echo '<td>'.$aux.'</td>';        
        }
        echo '</tr>';   
        
    }
    echo '</table>';
    
}
 function factorial($n){
     
    $cont=1;

    for($i=1; $i<($n+1); $i++){
        $cont=($cont*$i);  
       
    }
    
    echo "El factorial es ".$cont;
    
}
    

?>