/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor. jjhh
 */
 
function cuenta(){ 
    document.getElementById("counter").innerHTML=(document.getElementById("experiencia").value.length+"/350");
} 

function noEnter(texto, e)	{
    if (navigator.appName === "Netscape")
        tecla = e.which;
    else 
        tecla = e.keyCode;
    if (tecla === 13)
        return false;
    else
        return true;
}

function NumText(string){
    var out = '';
 
    var filtro = 'abcdefghijklmnñopqrstuvwxyzABCDEFGHIJKLMNÑOPQRSTUVWXYZ1234567890,.!¡¿?:()';//Caracteres validos
	
    for (var i=0; i<string.length; i++)
       if (filtro.indexOf(string.charAt(i)) != -1) 
	     out += string.charAt(i);
    return out;
}

function check(texto, e, id){
    document.getElementById(id).value=NumText(texto)
    return noEnter(texto,e);
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

