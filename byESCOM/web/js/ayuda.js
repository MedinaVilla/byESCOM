/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function showModule(modulo){
    switch(modulo){
        case "byESCOM":
            document.getElementById("titulo").innerHTML = "¿Qué es byESCOM?";
            allHidden();
            document.getElementById("byESCOM").removeAttribute("hidden");
            break;
            case "Navegacion":
            document.getElementById("titulo").innerHTML = "Navegación";
            allHidden();
            document.getElementById("Navegacion").removeAttribute("hidden");
            break;
        case "Materias":
            document.getElementById("titulo").innerHTML = "Materias";
            allHidden();
            document.getElementById("Materias").removeAttribute("hidden");
            break;
        case "CatalogoExp":
            document.getElementById("titulo").innerHTML = "Catálogo de experiencias";
            allHidden();
            document.getElementById("CatalogoExp").removeAttribute("hidden");
            break;
        case "EnvioExp":
            document.getElementById("titulo").innerHTML = "Envío de experiencias";
            allHidden();
            document.getElementById("EnvioExp").removeAttribute("hidden");
            break;
        case "InfoESCOM":
            document.getElementById("titulo").innerHTML = "Información de ESCOM";
            allHidden();
            document.getElementById("InfoESCOM").removeAttribute("hidden");
            break; 
        case "Clubes":
            document.getElementById("titulo").innerHTML = "Clubes";
            allHidden();
            document.getElementById("Clubes").removeAttribute("hidden");
            break;
        case "Ayuda":
            document.getElementById("titulo").innerHTML = "Ayuda";
            allHidden();
            document.getElementById("Ayuda").removeAttribute("hidden");
        break;
        case "AcercaDe":
            document.getElementById("titulo").innerHTML = "Acerca de";
            allHidden();
            document.getElementById("AcercaDe").removeAttribute("hidden");
            break;
        case "ReportaErr":
            document.getElementById("titulo").innerHTML = "Reportar error";
            allHidden();
            document.getElementById("ReportaErr").removeAttribute("hidden");
            break;
        case "RealizarEnc":
            document.getElementById("titulo").innerHTML = "Realizar encuesta";
            allHidden();
            document.getElementById("RealizarEnc").removeAttribute("hidden");
            break;
        default:
            document.getElementById("titulo").innerHTML = "Seleccione un submódulo";
            allHidden();
            break;
    }
    
    function allHidden(){
        document.getElementById("byESCOM").setAttribute("hidden","");
        document.getElementById("Navegacion").setAttribute("hidden","");
        document.getElementById("Materias").setAttribute("hidden","");
        document.getElementById("CatalogoExp").setAttribute("hidden","");
        document.getElementById("EnvioExp").setAttribute("hidden","");
        document.getElementById("InfoESCOM").setAttribute("hidden","");
        document.getElementById("Clubes").setAttribute("hidden","");
        document.getElementById("Ayuda").setAttribute("hidden","");
        document.getElementById("AcercaDe").setAttribute("hidden","");
        document.getElementById("ReportaErr").setAttribute("hidden","");
        document.getElementById("RealizarEnc").setAttribute("hidden","");
    }
}

