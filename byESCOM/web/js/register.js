
function validarRegister() {
    let nombre = document.forms["register"]["nombre"].value;
    let password = document.forms["register"]["password"].value;
    let passwordConf = document.forms["register"]["passwordConf"].value;
    let email = document.forms["register"]["email"].value;
    let boleta = document.forms["register"]["boleta"].value;
    let semestre = document.forms["register"]["semestre"].value;
    
    //Validaciones REGEX
    var reEmail = /^(([^<>()\[\]\.,;:\s@\"]+(\.[^<>()\[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;

    if (!nombre) {
        document.getElementById("nombreErr").innerHTML = "Ingrese su nombre";
    } else {
        document.getElementById("nombreErr").innerHTML = "";
    }
    if (!password) {
        document.getElementById("passwordErr").innerHTML = "Ingrese su password";
    } else {
        document.getElementById("passwordErr").innerHTML = "";
    }
    if (!passwordConf) {
        document.getElementById("passwordConfErr").innerHTML = "Ingrese nuevamente su password";
    } else if (password !== passwordConf) {
        document.getElementById("passwordConfErr").innerHTML = "Los passwors no coinciden";
    } else {
        document.getElementById("passwordConfErr").innerHTML = "";
    }
    if (!email) {
        document.getElementById("emailErr").innerHTML = "Ingrese su email";
    } else if (!reEmail.test(email)) {
        document.getElementById("emailErr").innerHTML = "Ingrese un email valido";
    } else {
        document.getElementById("emailErr").innerHTML = "";
    }
    if (!boleta) {
        document.getElementById("boletaErr").innerHTML = "Ingrese su boleta";
    } else {
        document.getElementById("boletaErr").innerHTML = "";
    }
    if (semestre === "0") {
        document.getElementById("semestreErr").innerHTML = "Seleccione un semestre";
    } else {
        document.getElementById("semestreErr").innerHTML = "";
    }
    if ((!nombre) || (!password) || (!email) || (!boleta) || (semestre === "0")) {
        return false;
    }
}
