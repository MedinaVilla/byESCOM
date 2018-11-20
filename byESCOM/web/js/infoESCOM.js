function showCategoriaDetailsH() {
    document.getElementById("categoria").innerHTML = "Historia de ESCOM";
    document.getElementById("titulo1").innerHTML = "ESCOM";
    document.getElementById("titulo3").innerHTML = "";
    document.getElementById("titulo4").innerHTML = "";
    document.getElementById("titulo5").innerHTML = "";
    document.getElementById("contenido1").innerHTML = "El arribo de las computadoras digitales a México en los años cincuenta, además de "
            + " introducir una herramienta para el procesamiento más rápido de datos, propició el inicio del"
            + " desarrollo de formación de los recursos humanos para la explotación de este recurso"
            + " tecnológico.";
    document.getElementById("titulo2").innerHTML = "Antecedentes"
    document.getElementById("contenido2").innerHTML = "El Instituto Politécnico Nacional (IPN) comenzó muy pronto a dotarse de equipo e"
            + " instalaciones de cómputo que le permitió iniciar programas de formación. En 1989, se"
            + " estableció el Programa Institucional de Cómputo, y entre 1990 y 1991, el Programa"
            + " Institucional de Autoequipamiento en Materia de Cómputo. Estos programas han sido"
            + " piedras angulares en las que se ha apoyado la vida institucional en ese campo. Como"
            + " proyecto del primero surgió la Red Institucional de Cómputo y como sede física el Edificio"
            + " Central Inteligente de Cómputo; también, a consecuencia de estos programas, se han"
            + " integrado en los planes y programas de estudio de prácticamente todas las carreras de nivel"
            + " medio superior y postgrado, asignaturas en materia computacional. Todas estas acciones"
            + " hicieron notar la necesidad de contar con una serie de recintos que formaran profesionistas"
            + " a nivel licenciatura y postgrado, en el área específica de la ingeniería computacional.";

    document.getElementById("contenido3").innerHTML = "Después de varios intentos que se hicieron al respecto, en 1993 un grupo de trabajo"
            + " integrado por la Secretaría Académica del Instituto, elaboró un proyecto en el que se"
            + " propuso la creación de la Escuela Superior de Cómputo, bajo la sigla (ESCOM) y al interior"
            + " de ella la carrera de Ingeniero en Sistemas Computacionales. "
            + "Dicho documento fue presentado, en apego a la normatividad vigente, a la comisión de"
            + " Planes y Programas del Consejo Nacional Consultivo del IPN, el cual fue aprobado por la"
            + " misma Comisión en la sesión del 5 de agosto de 1993."
            + "Contando con la autorización, el documento fue remitido al pleno del H. Consejo General"
            + " Consultivo del IPN, en donde, fue aprobado en la Sesión Ordinaria del 13 de agosto de"
            + " 1993 surgiendo así la Escuela Superior de Cómputo. ";
    document.getElementById("contenido4").innerHTML = "El 1987, se elaboró una propuesta por la Dra. Victoria Erossa y Dr. José Madrid en el"
            + " CENAC del IPN.\n"
            + "La Dra. Erossa elaboró otra propuesta a solicitud de la Secretaría Académica del IPN."
            + "En agosto de 1990, el Colegio de Profesores del CINTEC a cargo del Dr. Miguel Lindig"
            + " Bos, presentó la propuesta “Para una licenciatura en Ingeniería de Cómputo”."
            + "Adicionalmente, se realizó un estudio comparativo de varias instituciones que ofrecían este"
            + " tipo de carrera.  ";
    document.getElementById("contenido5").innerHTML = "Físicamente la ESCOM inició sus actividades el 27 de septiembre de 1993, en 5 salones"
            + " prestados por la ESIA-Z, en el tercer piso del edificio 10, de la Unidad Profesional Adolfo"
            + " López Mateos, dos de estos salones funcionaron como aulas, uno como biblioteca, uno más"
            + " como área administrativa y el otro como oficina de la dirección del plantel. Se contó"
            + " también en calidad de préstamo por parte de la ESIA-Z, con dos espacios, en el área"
            + " administrativa anexa al edificio 10, que fueron usadas como salas de cómputo ( con 20"
            + " computadoras, marca IBM, modelo PS1).";
    document.getElementById("contenido6").innerHTML = "La ESCOM inició actividades con 18 maestros y 84 alumnos, en las seis asignaturas que"
            + " consideró en su primer semestre del Plan de Estudios en la Carrera de Ingenieros"
            + " Computacionales, que tiene una duración de ocho semestres."
            + "La primera clase oficial se impartió en el edificio 10 de la ESIA-Zacatenco, el 27 de"
            + " septiembre de 1993 a las 7:00 horas, por el Dr. José Luis Estrada Haen, con la asignatura de"
            + "Física.";
    document.getElementById("fuente").innerHTML = "Fuente: http://www.escom.ipn.mx/docs/conocenos/historiaESCOM.pdf ";
    $(".mapa iframe").attr("hidden", true);
    $(".plan img").attr("hidden", true);
    $(".listaOA ul").attr("hidden", true);
    $(".listaOA2 ul").attr("hidden", true);
    $(".listaOA3 ul").attr("hidden", true);
}
function showCategoriaDetailsMV() {
    document.getElementById("categoria").innerHTML = "Misión & Visión";
    document.getElementById("titulo1").innerHTML = "Misión";
    document.getElementById("contenido1").innerHTML = "Formar profesionales líderes en saberes de ingeniería, tecnología y ciencias, de la computación, con una visión globalizada; así como contribuir con investigación y desarrollo tecnológico para el crecimiento del país.";
    document.getElementById("titulo3").innerHTML = "Visión";
    document.getElementById("contenido3").innerHTML = "Ser la Unidad Académica, líder en la formación de profesionales en ingeniería, tecnología y ciencias, de la computación, con base en un proceso educativo integral, incluyente y eficiente, que responda a su compromiso social.";
    document.getElementById("titulo2").innerHTML = "";
    document.getElementById("fuente").innerHTML = "Fuente: http://www.escom.ipn.mx/ ";
    document.getElementById("contenido2").innerHTML = "";
    document.getElementById("titulo4").innerHTML = "";
    document.getElementById("contenido4").innerHTML = "";
    document.getElementById("titulo5").innerHTML = "";
    document.getElementById("contenido5").innerHTML = "";
    document.getElementById("contenido6").innerHTML = "";
    $(".mapa iframe").attr("hidden", true);
    $(".plan img").attr("hidden", true);
    $(".listaOA ul").attr("hidden", true);
    $(".listaOA2 ul").attr("hidden", true);
    $(".listaOA3 ul").attr("hidden", true);

}
function showCategoriaDetailsOA() {
    document.getElementById("categoria").innerHTML = "Oferta Académica";
    document.getElementById("titulo1").innerHTML = "Objetivos";
    document.getElementById("titulo2").innerHTML = "Perfil de Ingreso";
    document.getElementById("titulo3").innerHTML = "Perfil de Egreso";
    document.getElementById("titulo4").innerHTML = "Campo laboral";
    document.getElementById("titulo5").innerHTML = "Titulación";
    document.getElementById("contenido1").innerHTML = "Formar Ingenieros en Sistemas Computacionales que cuenten con una sólida formación integral que les permita proponer, analizar, diseñar, desarrollar, implementar, gestionar y administrar sistemas computacionales usando tecnologías de vanguardia y aplicando metodologías, normas y estándares nacionales e internacionales de calidad, con el propósito de crear, mejorar y sistematizar procesos administrativos e industriales en el área computacional. Integrar y administrar equipos de trabajo inter y multidisciplinarios, así como multiculturales, con actitud de liderazgo, ética y responsabilidad. Actualizándose permanentemente para responder a las necesidades de la sociedad y al desarrollo sustentable de la nación.";
    document.getElementById("contenido2").innerHTML = "Los estudiantes que ingresen a la ESCOM deberán contar con las siguientes habilidades derivadas del perfil de egreso del nivel medio superior:";
    document.getElementById("contenido3").innerHTML = "Los egresados cuentan con una sólida formación integral, para proponer, analizar, diseñar, desarrollar, implementar, gestionar y administrar sistemas computacionales usando tecnologías de cómputo de vanguardia y aplicando metodologías, normas y estándares nacionales e internacionales de calidad para crear, mejorar y sistematizar procesos administrativos e industriales. Por lo que son capaces de desempeñarse en los sectores privado, público y de investigación, e integrar y administrar equipos de trabajo inter y multidisciplinarios, con actitud de liderazgo, ética y responsabilidad. Actualizándose permanentemente para responder a las necesidades de la sociedad y al desarrollo sustentable de la nación.";
    document.getElementById("contenido4").innerHTML = "El Ingeniero en Sistemas Computacionales se desempeña en los sectores privado, público, académico y ejercicio libre de la profesión.";
    document.getElementById("contenido5").innerHTML = "En la Escuela Superior de Cómputo, de conformidad con el Reglamento de Titulación Profesional vigente se considerarán 9 opciones para titulación profesional en la carrera de Ing. en Sistemas Computacionales (ISC) e Ing. en Sistemas Automotrices (ISISA), debiendo cumplir cada una de ellas con requisitos y actividades propios:";
    document.getElementById("contenido6").innerHTML = "";
    document.getElementById("fuente").innerHTML = "Fuente: http://www.escom.ipn.mx/ ";
    $(".listaOA ul").removeAttr("hidden");
    $(".listaOA2 ul").removeAttr("hidden");
    $(".listaOA3 ul").removeAttr("hidden");
    $(".mapa iframe").attr("hidden", true);
    $(".plan img").attr("hidden", true);
}
function showCategoriaDetailsU() {
    document.getElementById("categoria").innerHTML = "Ubicación";
    document.getElementById("titulo1").innerHTML = "Ubicación";
    document.getElementById("titulo2").innerHTML = "";
    document.getElementById("titulo3").innerHTML = "";
    document.getElementById("titulo4").innerHTML = "";
    document.getElementById("titulo5").innerHTML = "";
    document.getElementById("contenido2").innerHTML = "";
    document.getElementById("contenido3").innerHTML = "";
    document.getElementById("contenido4").innerHTML = "";
    document.getElementById("contenido5").innerHTML = "";
    document.getElementById("contenido6").innerHTML = "";
    document.getElementById("contenido1").innerHTML = "";
    document.getElementById("fuente").innerHTML = "";
    $(".mapa iframe").removeAttr("hidden");
    $(".plan img").attr("hidden", true);
    $(".listaOA ul").attr("hidden", true);
    $(".listaOA2 ul").attr("hidden", true);
    $(".listaOA3 ul").attr("hidden", true);

}
;
function showCategoriaDetailsORG() {
    document.getElementById("categoria").innerHTML = "Organigrama";
    document.getElementById("titulo1").innerHTML = "Plan de estudios";
    document.getElementById("titulo2").innerHTML = "";
    document.getElementById("titulo3").innerHTML = "";
    document.getElementById("titulo4").innerHTML = "";
    document.getElementById("titulo5").innerHTML = "";
    document.getElementById("contenido1").innerHTML = "";
    document.getElementById("contenido2").innerHTML = "";
    document.getElementById("contenido3").innerHTML = "";
    document.getElementById("contenido4").innerHTML = "";
    document.getElementById("contenido5").innerHTML = "";
    document.getElementById("contenido6").innerHTML = "";
    document.getElementById("fuente").innerHTML = "Fuente: http://www.escom.ipn.mx/ ";
    $(".mapa iframe").attr("hidden", true);
    $(".plan img").removeAttr("hidden");
    $(".listaOA ul").attr("hidden", true);
    $(".listaOA2 ul").attr("hidden", true);
    $(".listaOA3 ul").attr("hidden", true);
}

