function validarReportError() {
    let submodulo = document.forms["reportError"]["submodulo"].value;
    let explicacion = document.forms["reportError"]["explicacion"].value;
    let metodo = document.forms["reportError"]["metodo"].value;

    if (!submodulo) {
        document.getElementById("sbErr").innerHTML = "Ingrese el submódulo en el que encontró el error";
    } else {
        document.getElementById("sbErr").innerHTML = "";
    }
    if (!explicacion) {
        document.getElementById("exErr").innerHTML = "Ingrese una explicación del error que encontró";
    } else {
        document.getElementById("exErr").innerHTML = "";
    }
    if (!metodo) {
        document.getElementById("metErr").innerHTML = "Ingrese cómo encontró este error";
    } else {
        document.getElementById("metErr").innerHTML = "";
    }
    if ((!submodulo) || (!explicacion) || (!metodo)) {
        return false;
    }
}
