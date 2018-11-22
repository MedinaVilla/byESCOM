<%-- 
    Document   : infoESCOM
    Created on : 19/11/2018, 08:32:22 PM
    Author     : MedinaVilla
--%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" import="Java.*" pageEncoding="UTF-8"%>
<%HttpSession sesion = request.getSession();%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="./img/favicon.ico" type="image/x-icon"/>
        <link rel="stylesheet" href="./css/bulma.css" type="text/css">
        <link rel="stylesheet" href="./fonts/css/all.css">
        <script src="./js/jquery.min.js"></script>
        <script src="./js/infoESCOM.js"></script>
        <title>ESCOM</title>
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
                        ESCOM
                </div>
            </div>
        </section>  
        <div class="box">
            <div class="columns">
                <div class="column">
                    <aside class="menu">
                        <p class='menu-label'>Categoría</p>
                        <ul class="menu-list">
                            <li><a onclick="showCategoriaDetailsH()">Historia de ESCOM</a></li>
                            <li><a onclick="showCategoriaDetailsMV()">Misión & Visión</a></li>
                            <li><a onclick="showCategoriaDetailsOA()">Oferta Académica</a></li>
                            <li><a onclick="showCategoriaDetailsU()">Ubicacion</a></li>
                            <li><a onclick="showCategoriaDetailsORG()">Plan de Estudios</a></li>
                        </ul>
                    </aside>
                </div>
                <div class="column is-three-quarters">
                    <span id="categoria" class="tag is-primary is-primary">Seleccione una categoría</span>
                    <div class="box">
                        <p id="titulo1" class="title">Descripción</p>
                        <div class="plan" name="plan" id="plan"><img hidden src="./img/mapaCurricular.jpg"></div>
                        <p class="has-text-justified" id="contenido1"></p>
                        <div class="mapa" id="mapa" name="mapa"><iframe hidden src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3760.8600996170026!2d-99.14904048570659!3d19.504653886843382!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x85d1f835393528b5%3A0x5f2dd0563ce99e8!2sEscuela+Superior+de+C%C3%B3mputo!5e0!3m2!1ses-419!2smx!4v1542728917758" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe></div>
                        <p id="titulo2" class="title"></p>
                        <p class="has-text-justified" id="contenido2"></p><br/>
                        <div class="listaOA" name="listaOA" id="listaOA" ><ul hidden>
                                <li>Investigación, análisis y síntesis de información</li>
                                <li>Criterio y razonamiento lógico para la solución de problemas</li>
                                <li>Expresión oral y escrita</li>
                                <li>Actitudes de: respeto, responsabilidad</li>
                                <li>Interesado en las ciencias básicas y tecnologías de cómputo</li>
                                <li>Asumir una posición activa con respecto al estudio y al desarrollo de los proyectos y trabajos requeridos, coincidentes con el ideario y principios del IPN</li>
                            </ul></div>
                        <p id="titulo3" class="title"></p>
                        <p class="has-text-justified" id="contenido3"></p><br/>
                        <p id="titulo4" class="title"></p>
                        <p class="has-text-justified" id="contenido4"></p><br/>
                        <div class="listaOA2" name="listaOA2" id="listaOA2" ><ul hidden>
                                <li>Ejercicio libre de la profesión: Prestando de forma independiente sus servicios profesionales a los sectores público y privado. Constituyendo empresas formales que presten sus servicios computacionales a los diversos sectores</li>
                                <li>Sector público: Participa automatizando procesos administrativos en entidades gubernamentales en todos sus niveles, así como desarrollando software especializado para satisfacer los requerimientos específicos de dependencias gubernamentales</li>
                                <li>Sector privado: Se desempeñan como diseñadores y desarrolladores, líderes y administradores de proyectos computacionales, en empresas de transformación, servicios y comerciales, nacionales e internacionales</li>
                                <li>Sector académico: Incorporándose a instituciones educativas de nivel medio superior y/o superior como docentes e investigadores. Incorporándose a centros de investigación nacionales e internacionales en sus planes de posgrado, participando en actividades tales como: desarrollo de nuevas tecnologías, divulgación del conocimiento y docencia</li>
                            </ul></div>
                        <p id="titulo5" class="title"></p>
                        <p class="has-text-justified" id="contenido5"></p><br/>
                        <div class="listaOA3" name="listaOA3" id="listaOA3" ><ul hidden>
                                <li>Ejercicio libre de la profesión: Prestando de forma independiente sus servicios profesionales a los sectores público y privado. Constituyendo empresas formales que presten sus servicios computacionales a los diversos sectores</li>
                                <li>Sector público: Participa automatizando procesos administrativos en entidades gubernamentales en todos sus niveles, así como desarrollando software especializado para satisfacer los requerimientos específicos de dependencias gubernamentales</li>
                                <li>Sector privado: Se desempeñan como diseñadores y desarrolladores, líderes y administradores de proyectos computacionales, en empresas de transformación, servicios y comerciales, nacionales e internacionales</li>
                                <li>Sector académico: Incorporándose a instituciones educativas de nivel medio superior y/o superior como docentes e investigadores. Incorporándose a centros de investigación nacionales e internacionales en sus planes de posgrado, participando en actividades tales como: desarrollo de nuevas tecnologías, divulgación del conocimiento y docencia</li>
                            </ul></div>
                        <p class="has-text-justified" id="contenido6"></p>
                        <p id="fuente"> </p><br/>
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
