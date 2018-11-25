<%-- 
    Document   : ayuda
    Created on : 21/11/2018, 12:38:33 PM
    Author     : MedinaVilla
--%>

<%@page contentType="text/html" import="Java.*" pageEncoding="UTF-8"%>
<%HttpSession sesion = request.getSession();%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="./img/favicon.ico" type="image/x-icon"/>
        <link rel="stylesheet" href="./css/bulma.css" type="text/css">
        <link rel="stylesheet" href="./fonts/css/all.css"> 
        <script src="./js/ayuda.js"></script>
        <title>Ayuda</title>
    </head>
    <body>
        <%
            navbar navbar = new navbar();
            try {
                out.println(navbar.showNavbar(sesion.getAttribute("nombreUsuario").toString(), sesion.getAttribute("tipoUsuario").toString()));
            } catch (Exception e) {
                out.println(navbar.showNavbar("", ""));
            }
        %>
        <section class="hero is-primary">
            <div class="hero-body">
                <div class="container">
                    <h1 class="title">
                        Ayuda
                </div>
            </div>
        </section>
        <div class="box">
            <div class="columns">
                <div class="column">
                    <aside class="menu">
                        <p class="menu-label"> Inicio</p>
                        <ul class='menu-list'>
                            <li><a onClick="showModule('byESCOM');javascript:window.scrollBy(0,-10000)"> ¿Qué es byESCOM?</a></li>
                        </ul><ul class='menu-list'>
                            <li><a onClick="showModule('Navegacion');javascript:window.scrollBy(0,-10000)"> Navegación</a></li>
                        </ul>
                        <p class="menu-label"> Módulo: Materias</p>
                        <ul class='menu-list'>
                            <li><a onClick="showModule('Materias');javascript:window.scrollBy(0,-10000)"> Materias</a></li>
                        </ul>
                        <p class="menu-label"> Módulo: Experiencias</p>
                        <ul class='menu-list'>
                            <li><a onClick="showModule('CatalogoExp');javascript:window.scrollBy(0,-10000)"> Catálogo de experiencias</a></li>
                        </ul>
                        <ul class='menu-list'>
                            <li><a onClick="showModule('EnvioExp');javascript:window.scrollBy(0,-10000)"> Envío de experiencias</a></li>
                        </ul>
                        <p class="menu-label"> Módulo: ESCOM</p>
                        <ul class='menu-list'>
                            <li><a onClick="showModule('InfoESCOM');javascript:window.scrollBy(0,-10000)"> Información de ESCOM</a></li>
                        </ul>
                        <ul class='menu-list'>
                            <li><a onClick="showModule('Clubes');javascript:window.scrollBy(0,-10000)"> Clubes</a></li>
                        </ul>
                        <p class="menu-label"> Módulo: Info. del Sistema</p>
                        <ul class='menu-list'>
                            <li><a onClick="showModule('Ayuda');javascript:window.scrollBy(0,-10000)"> Ayuda</a></li>
                        </ul>
                        <ul class='menu-list'>
                            <li><a onClick="showModule('AcercaDe');javascript:window.scrollBy(0,-10000)"> Acerca de</a></li>
                        </ul>
                        <ul class='menu-list'>
                            <li><a onClick="showModule('ReportaErr');javascript:window.scrollBy(0,-10000)"> Reportar error</a></li>
                        </ul>
                        <ul class='menu-list'>
                            <li><a onClick="showModule('RealizarEnc');javascript:window.scrollBy(0,-10000)"> Realizar encuesta</a></li>
                        </ul>
                    </aside>
                </div>
                <div class="column is-three-quarters">
                    <span id="titulo" class="tag is-primary is-primary has-text-justified">¿Qué es byESCOM?</span>
                    <br/>
                    <div class="box">
                        <div id="byESCOM" class="has-text-justified">
                            <div class="has-text-centered "><img src="./img/byESCOM.jpg" ></div>
                            <p>byESCOM es una página web alternativa que informa a los alumnos del grupo 1CV1 durante el semestre 19-1 sobre la Escuela Superior de Cómputo, mejor conocida como ESCOM.</p><br>
                            <p>En esta página existen varios módulos que fungen de ayuda al alumnado para poder tener una visión más clara sobre que ofrece la ESCOM, ya sea por sus diferentes apartados que brindan información, como los apartados en donde los alumnos pueden platicar sobre sus propias experiencias en ella.</p>
                            <div class="has-text-centered "><img src="./img/ayuda/home.png"></div>
                        </div>
                        <div hidden id="Navegacion" class="has-text-justified">
                            <p>La plataforma esta dividida en 4 módulos (5 módulos para moderadores):</p><br>
                            <ul style="list-style-type:disc; padding-left: 45px;">
                                <li>Materias</li>
                                <li>Experiencias</li>
                                <li>ESCOM</li>
                                <li>Info. del Sistema</li>
                            </ul><br>
                            <p>Cada uno de ellos cuenta con diferentes apartados que dan vida a cada uno de ellos.</p><br>
                            <p>Para poder acceder a cada uno de los módulos usted puede navegar oprimiendo algún botón de la barra de navegación que se encuentra en la parte superior de la página y desplegar sus apartados dejando el puntero sobre de este.</p>
                            <div class="has-text-centered "><img src="./img/ayuda/navbar.png" ></div>
                            <p>Luego de oprimir alguno de ellos, la página se dirigirá al apartado seleccionado.</p><br>
                            <p>Otra forma alternativa para acceder a los apartados de la página es oprimiendo los enlaces que se encuentra en el pie de página ubicado en la parte inferior.</p>
                            <div class="has-text-centered "><img src="./img/ayuda/footer.png" ></div>
                            <p>En el pie de página además de encontrar los módulos se encuentran nuestros datos de contacto para cualquier duda o problema que usted necesite aclarar.</p><br>
                            <p>En la barra de navegación también se encuentra un botón para iniciar sesión (solo para moderadores), en donde, al oprimirlo, se le pedirá su nombre de usuario y contraseña.</p>
                            <div class="has-text-centered "><img src="./img/ayuda/loginbutton.png"></div>
                            <div class="has-text-centered "><img src="./img/ayuda/loginform.png"></div><br>
                            <p>Finalmente, si usted oprime “Inicio” o el logo de “byESCOM” se le redireccionará a la página con la que lo recibímos.</p>
                            <div class="has-text-centered "><img src="./img/ayuda/home.png"></div>
                        </div>
                        <div hidden id="Materias" class="has-text-justified">
                            <p>En este submódulo, puedes visualizar de manera organizada, algunas de las materias que componen a la carrera de Ingeniería en Sistemas Computacionales en la ESCOM.</p>
                            <div class="has-text-centered "><img src="./img/ayuda/materias.png" ></div><br>
                            <p>Todas las materias están organizadas por área de conocimientos y están ubicadas en la parte lateral izquierda de la página.</p>
                            <div class="has-text-centered "><img src="./img/ayuda/materiasapiladas.png" ></div><br>
                            <p>Finalmente al oprimir alguna de las materias, la información de dicha materia se mostrara en el área lateral derecha de la siguiente forma:</p>
                            <div class="has-text-centered "><img src="./img/ayuda/materiamostrada.png" ></div>
                        </div>
                        <div hidden id="CatalogoExp" class="has-text-justified">
                            <p>En este submódulo,  podrá visualizar registros de experiencias relativas a la estancia de los alumnos en la Escuela Superior de Cómputo. </p><br>
                            <p>Al llegar a este submódulo, se le mostraran todas las experiencias sin ningún tipo de filtro.</p>
                            <div class="has-text-centered "><img src="./img/ayuda/catalogoexp.png" ></div><br>
                            <p>Las experiencias las distribuimos dependiendo del lugar o situación sobre de la que se quiera hablar, estas se representan con un color y las dividimos en:</p><br>
                            <ul style="list-style-type:disc; padding-left: 45px;">
                                <li>Cafetería</li>
                                <li>Clubes</li>
                                <li>Social</li>
                                <li>Escolar</li>
                                <li>Trámites</li>
                            </ul><br>
                            <p>Si desea ver experiencias de algún tipo en específico puede oprimir alguno de los botones ubicados en la parte superior, arriba de las experiencias. </p>
                            <div class="has-text-centered "><img src="./img/ayuda/botonesExp.png" ></div><br>
                            <p>Si un apartado no tiene experiencias se le desplegará el siguiente mensaje:</p>
                            <div class="has-text-centered "><img src="./img/ayuda/nohayexp.png" ></div><br>
                            <p>Finalmente si desea ver todas las experiencias de nuevo puede oprimir el botón “Todos”.</p>
                        </div>
                        <div hidden id="EnvioExp" class="has-text-justified">
                            <p>En este submódulo usted puede dejar alguna experiencia que haya vivido en ESCOM.</p>
                            <div class="has-text-centered "><img src="./img/ayuda/enviaExp.png" ></div><br>
                            <p>Se le presenta el siguiente formulario en donde se le pide su nombre, su experiencia y el lugar o situación de la experiencia. </p>
                            <div class="has-text-centered "><img src="./img/ayuda/formExp.png" ></div><br>
                            <p>Si alguno de los campos no esta lleno, se le pedirá que llene ese campo.</p>
                            <div class="has-text-centered "><img src="./img/ayuda/errorExp.png" ></div><br>
                            <p>De igual manera, por seguridad, necesitamos que verifique el recaptcha que se encuentra debajo del formulario para validar si es usted una persona y no un robot.</p><br>
                            <p>Finalmente, al enviar la experiencia se le mostrara lo siguiente:</p>
                            <div class="has-text-centered "><img src="./img/ayuda/mensajeExp.png" ></div>
                            <p>Que indica que su experiencia será validada por un moderador y, hasta que esta no sea validada, no se mostrara en el “Catálogo de experiencias”.</p>
                        </div>
                        <div hidden id="InfoESCOM" class="has-text-justified">
                            <p>En este submódulo, los usuarios pueden visualizar información referente a la Escuela Superior de Cómputo. </p>
                            <div class="has-text-centered "><img src="./img/ayuda/infoESCOM.png" ></div><br>
                            <p>Todos los apartados están organizados en una lista que se encuentra en la parte lateral izquierda de la página.</p>
                            <div class="has-text-centered "><img src="./img/ayuda/categoriaInfo.png" ></div><br>
                            <p>Finalmente si usted oprime alguno de los apartados se le desplegará la información de dicho apartado de la siguiente manera:</p>
                            <div class="has-text-centered "><img src="./img/ayuda/desplegarInfo.png" ></div><br>
                        </div>
                        <div hidden id="Clubes" class="has-text-justified">
                            <p>En este submódulo usted podrá visualizar alguno de los clubes que existen en la Escuela de Superior de Cómputo. </p>
                            <div class="has-text-centered "><img src="./img/ayuda/clubes.png" ></div><br>
                            <p>En la parte lateral izquierda se encontrará el listado de los clubes.</p>
                            <div class="has-text-centered "><img src="./img/ayuda/catClubes.png" ></div><br>
                            <p>Finalmente. Si oprime algún club, se le mostrara su información de la siguiente manera:</p>
                            <div class="has-text-centered "><img src="./img/ayuda/desplegarClub.png" ></div><br>
                        </div>
                        <div hidden id="Ayuda" class="has-text-justified">
                            <p>En este submódulo, los usuarios pueden consultar el funcionamiento de cada una de las partes del programa.</p>
                            <div class="has-text-centered "><img src="./img/ayuda/ayuda.png" ></div><br>
                            <p>El listado de todos los submódulos del programa se encuentra en la parte lateral izquierda de la página.</p>
                            <div class="has-text-centered "><img src="./img/ayuda/modulos.png" ></div><br>
                            <p>Finalmente al oprimir algún submódulo, se le desplegará la información correspondiente en la parte lateral derecha restante de la página.</p>
                            <div class="has-text-centered "><img src="./img/ayuda/ayudaCapt.png" ></div><br>
                        </div>
                        <div hidden id="AcercaDe" class="has-text-justified">
                            <p>En este submódulo, los usuarios pueden consultar información sobre la construcción del proyecto en términos generales, también están apartados de contacto al equipo de desarrollo y fotografías con nombres de cada uno de los integrantes. Así como la contribución que tuvieron en el proyecto y las fortalezas de ellos.</p>
                        </div>
                        <div hidden id="ReportaErr" class="has-text-justified">
                            <p>En este submódulo, los usuarios pueden reportar cualquier error en el sistema con el fin de ayudar al equipo de desarrollo a tener un mejor nivel de soporte, dichos reportes son enviados al usuario moderador.</p>
                            <div class="has-text-centered "><img src="./img/ayuda/enviarError.png" ></div><br>
                            <p>Si el usuario no llena un campo se le pide que lo ponga.</p>
                            <div class="has-text-centered "><img src="./img/ayuda/errorReport.png" ></div><br>
                            <p>Por seguridad, necesitamos que verifique el recaptcha que se encuentra debajo del formulario para validar si es usted una persona y no un robot.</p><br>
                            <p>Finalmente, al enviar el reporte, se muestra el siguiente mensaje: </p>
                            <div class="has-text-centered "><img src="./img/ayuda/mensajeReport.png" ></div>
                        </div>
                        <div hidden id="RealizarEnc" class="has-text-justified">
                            <p>Este submódulo, nos brinda apoyo para realizar evaluaciones de la efectividad del producto, en donde los usuarios contestan ciertas preguntas que se consideran útiles para la estadística de eficiencia del proyecto, dicha estadística, es mostrada para los usuarios moderadores.</p>
                            <div class="has-text-centered "><img src="./img/ayuda/enviarEncuesta.png" ></div><br>
                            <p>Se le exige  que conteste todas las preguntas, de lo contrario, en cada pregunta no respondida se le mostrara un error.</p>
                            <div class="has-text-centered "><img src="./img/ayuda/errorEncuesta.png" ></div><br>
                            <p>Por seguridad, necesitamos que verifique el recaptcha que se encuentra debajo del formulario para validar si es usted una persona y no un robot.</p><br>
                            <p>Finalmente, al enviar la encuesta se muestra lo siguiente:</p>
                            <div class="has-text-centered "><img src="./img/ayuda/mensajeEncuesta.png" ></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <%
        footer footer = new footer();
        out.println(footer.showFooter());
    %>
</html>
