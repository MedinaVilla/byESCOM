
function validarEncuesta() {
    let respuesta1 = document.forms["encuesta"]["r1"].value;
    let respuesta2 = document.forms["encuesta"]["r2"].value;
    let respuesta3 = document.forms["encuesta"]["r3"].value;
    let respuesta4 = document.forms["encuesta"]["r4"].value;
    let respuesta5 = document.forms["encuesta"]["r5"].value;

    if (!respuesta1) {
        document.getElementById("r1Err").innerHTML = "Seleccione una opción";
    } else {
        document.getElementById("r1Err").innerHTML = "";
    }
    if (!respuesta2) {
        document.getElementById("r2Err").innerHTML = "Seleccione una opción";
    } else {
        document.getElementById("r2Err").innerHTML = "";
    }
    if (!respuesta3) {
        document.getElementById("r3Err").innerHTML = "Seleccione una opción";
    } else {
        document.getElementById("r3Err").innerHTML = "";
    }
    if (!respuesta4) {
        document.getElementById("r4Err").innerHTML = "Seleccione una opción";
    } else {
        document.getElementById("r4Err").innerHTML = "";
    }
    if (!respuesta5) {
        document.getElementById("r5Err").innerHTML = "Seleccione una opción";
    } else {
        document.getElementById("r5Err").innerHTML = "";
    }
    if ((!respuesta1) || (!respuesta2) || (!respuesta3) || (!respuesta4) || (!respuesta5)) {
        return false;
    }
}
