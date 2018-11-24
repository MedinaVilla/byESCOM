function validarLogin() {
    let nombreUsu = document.forms["login"]["nombreUsuario"].value;
    let password = document.forms["login"]["password"].value;
    if (!nombreUsu) {
        document.getElementById("nombreUsuErr").innerHTML = "Ingrese su nombre de usuario";
    } else {
        document.getElementById("nombreUsuErr").innerHTML = "";
    }
    if (!password) {
        document.getElementById("passwordErr").innerHTML = "Ingrese su password";
    } else {
        document.getElementById("passwordErr").innerHTML = "";
    }
    if ((!nombreUsu) || (!password)) {
        return false;
    }else{
        let elemento = document.getElementById("boton");
        elemento.disabled = true;
        elemento.className += " is-loading";
        return true;
    }
}
function showErrorLogin() {
    document.getElementById("loginErr").innerHTML = "Usuario o password son incorrectos";
}