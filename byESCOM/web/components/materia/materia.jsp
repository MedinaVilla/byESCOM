<%-- 
    Document   : materia
    Created on : 18/11/2018, 01:33:05 PM
    Author     : MedinaVilla
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" import="Java.*" pageEncoding="UTF-8"%>
<% HttpSession sesion = request.getSession();%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="./img/favicon.ico" type="image/x-icon"/>
        <link rel="stylesheet" href="./css/bulma.css" type="text/css">
        <link rel="stylesheet" href="./fonts/css/all.css" >
        <script src="./js/materias.js"></script>
        <title>Materias</title>
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
                        Materias
                </div>
            </div>
        </section>
        <div class="box">
            <div class="columns">
                <div class="column">
                    <aside class="menu">
                        <%
                            materias materia = new materias();
                            ResultSet rs = materia.getMaterias();
                            String cateIni = "";
                            while (rs.next()) {
                                if (!cateIni.equals(rs.getString("tipoMateria").toString())) {
                                    out.println(materia.imprimirCategoria(rs.getString("tipoMateria").toString()));
                                    cateIni = rs.getString("tipoMateria").toString();
                                }
                                out.println(materia.imprimirTitulo(rs.getString("titulo"),rs.getString("descripcion")));
                            };

                        %>
                    </aside>
                </div>
                <div class="column is-three-quarters">
                    <span id="titulo" class="tag is-primary is-primary">Seleccione una materia</span>
                    <br/>
                    <div class="box">
                    <p id="descripcion">Descripción</p>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <%        footer footer = new footer();
        out.println(footer.showFooter());
    %>
</html>
