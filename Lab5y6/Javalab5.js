
document.getElementById("imagenperro").onmouseover=cambiar_imagen_por_texto_perro;
document.getElementById("imagenperro").onmouseout=cambiar_texto_por_imagen_perro; 
document.getElementById("imagenzorrito").onmouseover=cambiar_imagen_por_texto_zorro;
document.getElementById("imagenzorrito").onmouseout=cambiar_texto_por_imagen_zorro; 
document.getElementById("imagenlobo").onmouseover=cambiar_imagen_por_texto_lobo; 
document.getElementById("imagenlobo").onmouseout=cambiar_texto_por_imagen_lobo;
document.getElementById("enviarboton").onclick=validarcontraseña;  
document.getElementById("Compralista").onclick=crearTabla;
document.getElementById("botoncorreo").onclick=enviarcorreo;


function enviarcorreo(){
    let correo=document.getElementById("CorreoIn").value;
    console.log(correo);
    let cadena="Correo enviado a " + correo;
    alert(cadena);
    
}

function crearTabla(){
    let numerodeperros= document.getElementById("CantidadPerro").value;
    let numerodelobos= document.getElementById("Cantidadlobo").value;
    let numerodezorros = document.getElementById("CantidadZorro").value;
    let IVA = 0;
    let cadena="";
    cadena=  cadena +" <table border ='1' id= 'mitabla'> <tr> <th>Productos </th> <th>Cantidad </th> <th>Total</th> </tr>";
    let totalperritos = numerodeperros*250;
    let totalzorritos =numerodezorros*300;
    let totallobitos=numerodelobos*200;
    let pretotal=totallobitos+totalperritos+totalzorritos;
    let total= pretotal+(pretotal*0.16);
    
    
     cadena= cadena + "<tr> <th> Perritos </th> <th>" + numerodeperros + "</th> <th>" + totalperritos + "</th></tr>";
    cadena= cadena + "<tr> <th> Lobitos </th> <th>" + numerodelobos + "</th> <th>" + totallobitos + "</th></tr>";
    cadena= cadena + "<tr> <th> Zorritos </th> <th>" + numerodezorros + "</th> <th>" + totalzorritos + "</th></tr>";
    cadena= cadena + "<tr> <th> Total + IVA </th> <th>" +  "</th> <th>" + total + "</th></tr>";
    cadena=cadena+ "</table>";
   
    document.getElementById("aquivalatabla").innerHTML = cadena; 
}


function validarcontraseña (){
    
   let cont1=document.getElementById("Contraseña1").value;
    let cont2=document.getElementById("Contraseña2").value;
    console.log(cont1);
    console.log(cont2);
    
    if(cont1 != cont2){
        
        alert("Las contraseñas no son iguales");
        
    } else{
        alert("Usuario creado");
    }
        
    
} 

function cambiar_imagen_por_texto_perro(){
    
    
    let texto= document.getElementById("ParrafoPerro");
    texto.style.display="block";
    
    
}

function cambiar_texto_por_imagen_perro(){
    
    let texto= document.getElementById("ParrafoPerro");
    texto.style.display="none";
    
    

}

function cambiar_imagen_por_texto_lobo(){
    
  
    let texto= document.getElementById("ParrafoLobo");
    texto.style.display="block";
    
}

function cambiar_texto_por_imagen_lobo(){
    
    let texto= document.getElementById("ParrafoLobo");
    texto.style.display="none";
   
    
} 



function cambiar_imagen_por_texto_zorro(){
   
    let texto= document.getElementById("ParrafoZorro");
    texto.style.display="block";
    
}

function cambiar_texto_por_imagen_zorro(){
    
    let texto= document.getElementById("ParrafoZorro");
    texto.style.display="none";   
}


function allowDrop(ev) {
    ev.preventDefault();
}

function drag(ev) {
    ev.dataTransfer.setData("text", ev.target.id);
}

function drop(ev) {
    ev.preventDefault();
    var data = ev.dataTransfer.getData("text");
    ev.target.appendChild(document.getElementById(data));
}


function myFunction() {
    setInterval(function(){ alert("No olvides comprar peluchitos bonitos"); }, 5000);
}