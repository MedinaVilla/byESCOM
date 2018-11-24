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
 
    var filtro = 'abcdefghijklmnñopqrstuvwxyzABCDEFGHIJKLMNÑOPQRSTUVWXYZáéíóúäëïöüÁÉÍÓÚÄËÏÖÜ1234567890,.!¡¿?:() ';//Caracteres validos
	
    for (var i=0; i<string.length; i++)
       if (filtro.indexOf(string.charAt(i)) !== -1) 
	     out += string.charAt(i);
    return out;
}

function check(texto, e, id){
    document.getElementById(id).value=NumText(texto);
    return noEnter(texto,e);
}
function validarExp(){
    let nombre=document.forms["form_sendExp"]["nombre"].value;
    let area=document.forms["form_sendExp"]["experiencia"].value;
    let select=document.getElementById("tipos").value;
    let response = grecaptcha.getResponse();
    
    if (!nombre) {
        document.getElementById("nombreUsuErr").innerHTML = "Ingrese su nombre";
        document.getElementById("nombreUsuErr").removeAttribute("hidden");
    } else {
        document.getElementById("nombreUsuErr").innerHTML = "";
        document.getElementById("nombreUsuErr").setAttribute("hidden", "");
    }
    if (!area) {
        document.getElementById("areaExpErr").innerHTML = "Escribe tu experiencia";
        document.getElementById("areaExpErr").removeAttribute("hidden");
    } else {
        document.getElementById("areaExpErr").innerHTML = "";
        document.getElementById("areaExpErr").setAttribute("hidden", "");
    }
    if(select==="0"){
        document.getElementById("tipoExpErr").innerHTML = "Elige un lugar";
        document.getElementById("tipoExpErr").removeAttribute("hidden");
    }else{
        document.getElementById("tipoExpErr").innerHTML = "";
        document.getElementById("tipoExpErr").setAttribute("hidden", "");
    }
    if(response.length === 0){
        document.getElementById("captchaErr").innerHTML = "Verifica el reCAPTCHA";
        document.getElementById("captchaErr").removeAttribute("hidden");
    } else {
        document.getElementById("captchaErr").innerHTML = "";
        document.getElementById("captchaErr").setAttribute("hidden", "");
    }
    if ((!nombre) || (!area) || (select==="0") || (response.length === 0)) {
        return false;
    }else{
        let elemento = document.getElementById("boton");
        elemento.disabled = true;
        elemento.className += " is-loading";
        return true;
    }
}

