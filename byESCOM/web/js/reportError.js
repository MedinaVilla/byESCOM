function validarReportError() {
    let submodulo = document.forms["reportError"]["submodulo"].value;
    let explicacion = document.forms["reportError"]["explicacion"].value;
    let metodo = document.forms["reportError"]["metodo"].value;
    let response = grecaptcha.getResponse();

    if (!submodulo) {
        document.getElementById("sbErr").innerHTML = "Ingrese el submódulo en el que encontró el error";
        document.getElementById("sbErr").removeAttribute("hidden");
    } else {
        document.getElementById("sbErr").innerHTML = "";
        document.getElementById("sbErr").setAttribute("hidden", "");
    }
    if (!explicacion) {
        document.getElementById("exErr").innerHTML = "Ingrese una explicación del error que encontró";
        document.getElementById("exErr").removeAttribute("hidden");
    } else {
        document.getElementById("exErr").innerHTML = "";
        document.getElementById("exErr").setAttribute("hidden", "");
    }
    if (!metodo) {
        document.getElementById("metErr").innerHTML = "Ingrese cómo encontró este error";
        document.getElementById("metErr").removeAttribute("hidden");
    } else {
        document.getElementById("metErr").innerHTML = "";
        document.getElementById("metErr").setAttribute("hidden", "");
    }
    if(response.length === 0){
        document.getElementById("captchaErr").innerHTML = "Verifica el reCAPTCHA";
        document.getElementById("captchaErr").removeAttribute("hidden");
    } else {
        document.getElementById("captchaErr").innerHTML = "";
        document.getElementById("captchaErr").setAttribute("hidden", "");
    }
    if ((!submodulo) || (!explicacion) || (!metodo) || (response.length === 0)) {
        return false;
    }else{
        let elemento = document.getElementById("boton");
        elemento.disabled = true;
        elemento.className += " is-loading";
        return true;
    }
}
