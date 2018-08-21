
 

document.getElementById("ej1").onclick = escribirtab;
document.getElementById("ej2").onclick = sumaent;
/*document.getElementById("ej3").onclick = contadornum(generararreglo()); */
document.getElementById("ej4").onclick = escribirnuminverso;
document.getElementById("ej5").onclick = libre;


function tabla_potencias(limite) {
    
    let tab="";
    
    tab=tab + '<table border="1">';
    for(let i=1; i <= limite; i++){
        tab= tab+'<tr>';
        
        for(let j=1; j<=3; j++){
            let aux = Math.pow(i,j);
            tab = tab + '<td>'+ aux+'</td>';
        }
        tab= tab + ('</tr>');
          
        
    }
    tab= tab +'</table>';
    
    return tab;
}

function escribirtab() {
    let num = prompt("Please enter a number");
    
    document.write(tabla_potencias(num));
}



function sumaent(){
    let a= Math.floor(Math.random()*100);
    let b= Math.floor(Math.random()*100);
    let tim = Date.now();
  var resp = prompt("cuanto es la suma de estos numeros: " +a + "+"+ b, 0);
    
    if (resp == a+b){
        var tim2= ((Date.now()-tim)/1000);
        document.write("Felicidades! has acertado en " + tim2 + " segundos");
        
    } else {
        document.write("Lo siento, el resultado no es correcto");
        
    }
    
}

function generararreglo () {
    
    var arreglo = "";
    let tamañoarreglo = prompt("Escribe el tamaño del arreglo", 5);
    let auxnum = 0;
    
    for(let i=0; i<tamañoarreglo; i++){
        auxnum = Math.floor(Math.random()*20-10); 
        
        
        arreglo= arreglo+auxnum;   
        
    }
    
    console.log(arreglo);
    return arreglo;
    
    
}

function contadornum(arreglo){
    let negativos=0;
    let positivos = 0;
    let zeros = 0;
    let num = arreglo.length;
    
    for(num; num>=0; num--){
        
       if(arreglo.charAt(num)==0) zeros++;
        if(arreglo.charAt(num)>0) positivos++;
        if(arreglo.charAt(num)<0) negativos++;
        
       
    }
    
    let arr = "Hay " + zeros
        + "ceros, " + positivos + "positivos y " + negativos + "negativos";
        
        document.write(arr);
          
    
    
}

function invertir(arreglo){
    
    let aux= arreglo.length;
    var inv="";
    
     for(aux; aux>=0; aux--){
         inv=inv + arreglo.charAt(aux);
         
     }
    console.log(inv);
    return inv;
    
}

function escribirnuminverso() {
    let num = prompt("Please enter a number");
    console.log(num);
    
    
    document.write(invertir(num));
}


function crearmatriz(){
    
    
    
}

function factorial(num){
    
    var cadena = "";
    let numero = parseInt(num);
    
    
    for(numero; numero<=0; numero--){
        cadena= cadena + numero;  
        
    }
    console.log(cadena);
    return cadena; 
    
}

function libre(){
    let num = prompt("Ingrese un numero", 5);
    console.log(num);
    document.write(factorial(num));
    
    
    
}
    
    /* Separation of Duty- variables mas descriptivas y*/ 
    
    
    

