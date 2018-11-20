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
                        <p class='menu-label'>Categoria</p>
                        <ul class="menu-list">
                            <li><a onclick="showCategoriaDetailsH()">Historia de ESCOM</a></li>
                            <li><a onclick="showCategoriaDetailsMV()">Mision & Vision</a></li>
                            <li><a onclick="showCategoriaDetailsOA()">Oferta Academica</a></li>
                            <li><a onclick="showCategoriaDetailsU()">Ubicacion</a></li>
                            <li><a onclick="showCategoriaDetailsORG()">Organigrama</a></li>
                            <li><a onclick="showCategoriaDetailsR()">Reconocimientos</a></li>
                        </ul>
                    </aside>
                </div>
                <div class="column is-three-quarters">
                    <span id="categoria" class="tag is-primary is-primary">Seleccione una cateogria</span>
                    <div class="box">
                        <p id="titulo1">Descripcion</p>
                        <p id="contenido1"></p>
                        <p id="titulo2"></p>
                        <p id="contenido2"></p>
                        <p id="fuente"> </p>

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
