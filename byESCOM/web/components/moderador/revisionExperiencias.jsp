<%-- 
    Document   : revisionExperiencias
    Created on : 19/11/2018, 02:44:01 PM
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
        <script src="./js/revisionExperiencia.js"></script>
        <title>Revision Experiencias</title>
    </head>
    <body>
        <%
            try {
                navbar navbar = new navbar();
                out.println(navbar.showNavbar(sesion.getAttribute("nombreUsuario").toString(), sesion.getAttribute("tipoUsuario").toString()));
            } catch (Exception e) {
                out.println(e.toString());
                response.sendRedirect("./login");
            }
        %>
        <section class="hero is-primary">
            <div class="hero-body">
                <div class="container">
                    <h1 class="title">
                        Revision de experiencias
                </div>
            </div>
        </section>
        <div class="box">
            <div class="columns">
                <div class="column">
                    <aside class="menu">
                        <p class='menu-label'>Nombre del solicitante</p>
                        <%
                            experiencia experiencia = new experiencia();
                            ResultSet rs = experiencia.getExperienciasEnRevision();
                            while (rs.next()) {
                                out.println(experiencia.imprimirNombreAlumnoExperiencia(rs.getString("idExperiencia").toString(), rs.getString("nombreAlumno").toString(), rs.getString("contenido"), rs.getString("fechaEnvio"), rs.getString("tipoExperiencia")));
                            }
                        %>
                    </aside>
                </div>
                <div class="column is-three-quarters">
                    <span id="nombreAlumno" class="tag is-primary is-primary">Seleccione una experiencia</span>
                    <div class="box">
                        <p id="contenido">Descripción: Seleccione una experiencia</p>
                        <p id="fechaEnvio"> Fecha: Seleccione una experiencia </p>
                        <br/>
                        <span id="tipoExperiencia" class="tag is-info">Tipo de Experiencia</span>
                        <nav class="level">
                            <div class="level-left"></div>
                            <div class="level-right">
                                <form name="denegar" action="./denegarExperiencia">
                                    <input id="idExpR" name="idExpR" hidden></input>
                                    <p class="level-item reject"><button hidden id="Denegar" style="margin: 3px;"></button></p>
                                </form>
                                <form name="aceptar" action="./aceptarExperiencia">
                                    <input id="idExpOk" name="idExpOk" hidden value="" />
                                    <p class="level-item accept"><button hidden id="Aceptar" style="margin: 3px;" ></button></p>
                                </form>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <%        footer footer = new footer();
        out.println(footer.showFooter());
    %>
</html>
