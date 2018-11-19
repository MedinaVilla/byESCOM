function validarLogin() {
    let boleta = document.forms["login"]["boleta"].value;
    let password = document.forms["login"]["password"].value;
    if (!boleta) {
        document.getElementById("boletaErr").innerHTML = "Ingrese su boleta";
    } else {
        document.getElementById("boletaErr").innerHTML = "";
    }
    if (!password) {
        document.getElementById("passwordErr").innerHTML = "Ingrese su password";
    } else {
        document.getElementById("passwordErr").innerHTML = "";
    }
    if ((!boleta) || (!password)) {
        return false;
    }
}
function showErrorLogin() {
    document.getElementById("loginErr").innerHTML = "Boleta o password son incorrectos";
}