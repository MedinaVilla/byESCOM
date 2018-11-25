<%-- 
    Document   : experiences
    Created on : 18-nov-2018, 11:06:40 PM
    Author     : RubenHHH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*,java.sql.*,Java.*" %>
<%HttpSession sesion = request.getSession();%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="./img/favicon.ico" type="image/x-icon"/>
        <link rel="stylesheet" href="./css/bulma.css" type="text/css">
        <link rel="stylesheet" href="./fonts/css/all.css"> 
        <script src="./js/experiencias/showExperiences.js"></script>
        <title>Experiencias</title>
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
                        Catálogo de Experiencias
                    </h1>
                </div>
            </div>
        </section>
        <form id="formTipo" action = "./showExperiences" target="framecito" method = "GET">
            <input id="tipo" name="tipo" type="text" value="0" style="visibility: hidden;">
        </form>
        <div class="container has-text-centered">
            <a id="btn_todos" onclick="desplegarExperiencias(0)" class="button is-dark is-rounded">Todos</a>
            <a id="btn_cafe" onclick="desplegarExperiencias(1)" class="button is-danger is-rounded">Cafetería</a>
            <a id="btn_clubes" onclick="desplegarExperiencias(2)" class="button is-info is-rounded">Clubes</a>
            <a id="btn_social" onclick="desplegarExperiencias(3)" class="button is-success is-rounded">Social</a>
            <a id="btn_escolar" onclick="desplegarExperiencias(4)" class="button is-warning is-rounded">Escolar</a>
            <a id="btn_tramites" onclick="desplegarExperiencias(5)" class="button is-link is-rounded">Trámites</a>
        </div>
        <div style="height: 100%; width: 100%">
            <iframe id="framecito" name="framecito" src="./showExperiences" width="100%" onload="autofitIframe(this);" scrolling="no"></iframe>    
        </div>
        <%
        footer footer = new footer();
        out.println(footer.showFooter());
        %>
    </body>
</html>
