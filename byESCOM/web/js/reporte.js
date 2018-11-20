function showReporteDetails(idReporte, submodulo, explicacion, metodo, fechaEnvio) {
    document.getElementById("submodulo").innerHTML = submodulo;
    document.getElementById("explicacion").innerHTML = "Explicacion: " + explicacion;
    document.getElementById("metodo").innerHTML = "Metodo como encontro el error: " + metodo;
    document.getElementById("fechaEnvio").innerHTML = "Fecha: " + fechaEnvio;
    addName(idReporte);
}

function addName(idReporte) {
    $(".deleteE button").addClass("delete");
    $(".delete button").removeAttr("hidden");
    $("#idReporteE").val(idReporte);
}

