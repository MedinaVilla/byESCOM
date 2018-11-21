/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor. jjhh
 */
 
function cuenta(){ 
    document.getElementById("counter").innerHTML=(document.getElementById("experiencia").value.length+"/350");
} 

function validarExp(){
    let nombre=document.forms["form_sendExp"]["nombre"].value;
    let area=document.forms["form_sendExp"]["experiencia"].value;
    let select=document.getElementById("tipos").value;
    
    if (!nombre) {
        document.getElementById("nombreUsuErr").innerHTML = "Ingrese su nombre";
    } else {
        document.getElementById("nombreUsuErr").innerHTML = "";
    }
    if (!area) {
        document.getElementById("areaExpErr").innerHTML = "Escribe tu experiencia";
    } else {
        document.getElementById("areaExpErr").innerHTML = "";
    }
    if(select==="0"){
        document.getElementById("tipoExpErr").innerHTML = "Elige un lugar";
    }else{
        document.getElementById("tipoExpErr").innerHTML = "";
    }
    if ((!nombre) || (!area) || (select==="0")) {
        return false;
    }
}

