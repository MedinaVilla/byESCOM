function showExperienciaDetails(idExperiencia, nombreAlumno, contenido, fechaEnvio, tipoExperiencia) {
    document.getElementById("nombreAlumno").innerHTML = nombreAlumno;
    document.getElementById("contenido").innerHTML = "Descripcion: " + contenido;
    document.getElementById("fechaEnvio").innerHTML = "Fecha: " + fechaEnvio;
    document.getElementById("tipoExperiencia").innerHTML = tipoExperiencia;
    document.getElementById("Denegar").innerHTML = "Rechazar";
    document.getElementById("Aceptar").innerHTML = "Aceptar";

    addName(idExperiencia);
}

function addName(idExperiencia) {
    $(".reject button").addClass("button is-danger");
    $(".accept button").addClass("button is-success");
    $(".reject button").removeAttr("hidden");
    $(".accept button").removeAttr("hidden");

    $("#idExpR").val(idExperiencia);
    $("#idExpOk").val(idExperiencia);

}
