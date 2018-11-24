function validarEncuesta() {
    let respuesta1 = document.forms["encuesta"]["r1"].value;
    let respuesta2 = document.forms["encuesta"]["r2"].value;
    let respuesta3 = document.forms["encuesta"]["r3"].value;
    let respuesta4 = document.forms["encuesta"]["r4"].value;
    let respuesta5 = document.forms["encuesta"]["r5"].value;
    let response = grecaptcha.getResponse();

    if (!respuesta1) {
        document.getElementById("r1Err").innerHTML = "Seleccione una opción";
        document.getElementById("r1Err").removeAttribute("hidden");
    } else {
        document.getElementById("r1Err").innerHTML = "";
        document.getElementById("r1Err").setAttribute("hidden", "");
    }
    if (!respuesta2) {
        document.getElementById("r2Err").innerHTML = "Seleccione una opción";
        document.getElementById("r2Err").removeAttribute("hidden");
    } else {
        document.getElementById("r2Err").innerHTML = "";
        document.getElementById("r2Err").setAttribute("hidden", "");
    }
    if (!respuesta3) {
        document.getElementById("r3Err").innerHTML = "Seleccione una opción";
        document.getElementById("r3Err").removeAttribute("hidden");
    } else {
        document.getElementById("r3Err").innerHTML = "";
        document.getElementById("r3Err").setAttribute("hidden", "");
    }
    if (!respuesta4) {
        document.getElementById("r4Err").innerHTML = "Seleccione una opción";
        document.getElementById("r4Err").removeAttribute("hidden");
    } else {
        document.getElementById("r4Err").innerHTML = "";
        document.getElementById("r4Err").setAttribute("hidden", "");
    }
    if (!respuesta5) {
        document.getElementById("r5Err").innerHTML = "Seleccione una opción";
        document.getElementById("r5Err").removeAttribute("hidden");
    } else {
        document.getElementById("r5Err").innerHTML = "";
        document.getElementById("r5Err").setAttribute("hidden", "");
    }
    if(response.length === 0){
        document.getElementById("captchaErr").innerHTML = "Verifica el reCAPTCHA";
        document.getElementById("captchaErr").removeAttribute("hidden");
    } else {
        document.getElementById("captchaErr").innerHTML = "";
        document.getElementById("captchaErr").setAttribute("hidden", "");
    }
    if ((!respuesta1) || (!respuesta2) || (!respuesta3) || (!respuesta4) || (!respuesta5) || (response.length === 0)) {
        return false;
    }else{
        let elemento = document.getElementById("boton");
        elemento.disabled = true;
        elemento.className += " is-loading";
        return true;
    }
}
