<%-- 
    Document   : experiences
    Created on : 18-nov-2018, 11:06:40 PM
    Author     : RubenHH
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
                            Catalogo de Experiencias
                        </h1>
                    </div>
                </div>
        </section>
        <div style="height: 100%; width: 100%">
            <iframe src="./showExperiences" width="100%" onload="autofitIframe(this);" scrolling="no"></iframe>    
        </div>
    </body>
</html>
