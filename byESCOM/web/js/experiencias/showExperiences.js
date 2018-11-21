/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.hghggyg jhjh
 */

//Ajusta el tamaño de un iframe al de su contenido interior para evitar scroll
function autofitIframe(id) {
    if (!window.opera && document.all && document.getElementById) {
        id.style.height = id.contentWindow.document.body.scrollHeight;
    } else if (document.getElementById) {
        id.style.height = id.contentDocument.body.scrollHeight + "px";
    }
}

function desplegarExperiencias(tipo) {
    var valor = document.getElementById("tipo");
    var formulario = document.getElementById("formTipo");
    valor.value = tipo;
    formulario.submit();
}
