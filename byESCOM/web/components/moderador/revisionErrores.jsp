<%-- 
    Document   : revisionErrores
    Created on : 19/11/2018, 02:46:50 PM
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
        <script src="./js/reporte.js"></script>
        <title>Revision de Errores</title>
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
                        Revision de errores
                </div>
            </div>
        </section>
        <div class="box">
            <div class="columns">
                <div class="column">
                    <aside class="menu">
                        <p class='menu-label'>Submodulo</p>
                        <%
                            errores revError = new errores();
                            ResultSet rs = revError.getReportesErrores();
                            while (rs.next()) {
                                out.println(revError.imprimirTituloError(rs.getString("idReporte").toString(), rs.getString("submodulo").toString(), rs.getString("explicacion"), rs.getString("metodo"), rs.getString("fechaEnvio")));
                            }
                        %>
                    </aside>
                </div>
                <div class="column is-three-quarters">
                    <span id="submodulo" class="tag is-primary is-primary">Seleccione un reporte</span>
                    <div class="box">
                        <p id="explicacion">Explicacion: Seleccione un reporte</p>
                        <p id="metodo">Metodo en el que se encontro el error: Seleccione un reporte</p>
                        <p id="fechaEnvio"> Fecha: Seleccione un reporte </p>
                        <br/>

                        <nav class="level">
                            <div class="level-left"></div>
                            <div class="level-right">
                                <form name="eliminar" action="./eliminarReporte">
                                    <input id="idReporteE" name="idReporteE" hidden></input>
                                    <p class="level-item deleteE"><button hidden id="Eliminar"></button></p>
                                </form>
                            </div>
                        </nav>
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
