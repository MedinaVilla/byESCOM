<%-- 
    Document   : estadistica
    Created on : 20/11/2018, 12:16:18 PM
    Author     : MedinaVilla
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" import="Java.*" pageEncoding="UTF-8"%>
<%HttpSession sesion = request.getSession();%>
<%

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="./img/favicon.ico" type="image/x-icon"/>
        <link rel="stylesheet" href="./css/bulma.css" type="text/css">
        <link rel="stylesheet" href="./fonts/css/all.css">
        <title>Estadística</title>
    </head>
    <%        try {
            navbar navbar = new navbar();
            out.println(navbar.showNavbar(sesion.getAttribute("nombreUsuario").toString(), sesion.getAttribute("tipoUsuario").toString()));
        } catch (Exception e) {
            out.println(e.toString());
            response.sendRedirect("./login");
        }
    %>
    <body>
        <section class="hero is-primary">
            <div class="hero-body">
                <div class="container">
                    <h1 class="title">
                        Estadística
                </div>
            </div>
        </section>
        <%
            encuesta encuesta = new encuesta();
            ResultSet rs = encuesta.getCountEncuestasRealizadas();
            String cateIni = "";
            if (rs.next()) {
                out.println("Encuestas realizadas totales :");
                out.println(rs.getString("COUNT(idEstadistica)"));
            }

        %>
        <div class="table__wrapper">
            <table class="table is-bordered pricing__table is-fullwidth">
                <tbody>
                    <tr>
                        <td class="has-text-centered">Respuestas/Pregunta</td>
                        <td class="has-text-centered">Pregunta 1</td>
                        <td class="has-text-centered">Pregunta 2</td>
                        <td class="has-text-centered">Pregunta 3</td>
                        <td class="has-text-centered">Pregunta 4</td>
                        <td class="has-text-centered">Pregunta 5</td>
                    </tr>
                    <tr>
                        <td class="has-text-centered">
                            Si <br>
                        </td>
                        <td class="has-text-centered">2</td>
                        <td class="has-text-centered">3</td>
                        <td class="has-text-centered">4</td>
                        <td class="has-text-centered">5</td>
                        <td class="has-text-centered">6</td>
                    </tr>
                    <tr>
                        <td class="has-text-centered">
                            No
                        </td>
                        <td class="has-text-centered">2</td>
                        <td class="has-text-centered">3</td>
                        <td class="has-text-centered">4</td>
                        <td class="has-text-centered">5</td>
                        <td class="has-text-centered">6</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </body>
    <%        
        footer footer = new footer();
        out.println(footer.showFooter());
    %>
</html>
