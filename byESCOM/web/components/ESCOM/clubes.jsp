<%-- 
    Document   : clubes
    Created on : 21/11/2018, 01:44:06 PM
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
         <script src="./js/clubes.js"></script>
        <title>Clubes</title>
    </head>
    <%
    navbar navbar = new navbar();
    try {
        out.println(navbar.showNavbar(sesion.getAttribute("nombreUsuario").toString(), sesion.getAttribute("tipoUsuario").toString()));
     } catch (Exception e) {
        out.println(navbar.showNavbar("", ""));

    }
    %>
    <body>
        <section class="hero is-primary">
            <div class="hero-body">
                <div class="container">
                    <h1 class="title">
                        Clubes
                </div>
            </div>
        </section>

        <div class="box">
            <div class="columns">
                <div class="column">
                    <aside class="menu">
                        <p class='menu-label'>Categoría</p>
                        <ul class="menu-list">
                            <%
                            club club = new club();
                            ResultSet rs = club.getClubes();
                            while (rs.next()) {
                                out.println(club.imprimirTituloClub(rs.getString("idClub").toString(), rs.getString("nombre").toString(), rs.getString("nombreP"), rs.getString("ubicacion"), rs.getString("horario")));
                            }
                        %>
              
                        </ul>
                    </aside>
                </div>
                <div class="column is-three-quarters">
                    <span id="categoria" class="tag is-primary is-primary">Seleccione una categoría</span>
                    <div class="box">
                        <p id="nombre" class="title"></p>
                        <p id="profesor" class="title"></p>
                        <p id="ubicacion" class="title"></p>
                        <p id="horario" class="title"</p>
                   </div>
            </div>
        </div>
    </body>
    <%
     footer footer = new footer();
     out.println(footer.showFooter());
    %>
</html>
