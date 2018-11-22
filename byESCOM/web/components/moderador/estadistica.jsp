<%-- 
    Document   : estadistica
    Created on : 20/11/2018, 12:16:18 PM
    Author     : MedinaVilla
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" import="Java.*" pageEncoding="UTF-8"%>
<%HttpSession sesion = request.getSession();%>
<%
    encuesta encuesta = new encuesta();
    ResultSet rs1 = encuesta.getAnswerPregunta1();
    ResultSet rs2 = encuesta.getAnswerPregunta2();
    ResultSet rs3 = encuesta.getAnswerPregunta3();
    ResultSet rs4 = encuesta.getAnswerPregunta4();
    ResultSet rs5 = encuesta.getAnswerPregunta5();
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
    <%
        try {
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
        <div class="box has-text-centered">
            <%
                ResultSet rs = encuesta.getCountEncuestasRealizadas();
                String cateIni = "";
                if (rs.first()) {
                    out.println("Encuestas realizadas totales :");
                    out.println(rs.getString("COUNT(idEstadistica)"));
                }
            %>
        </div>
        <div class="table__wrapper">
            <table class="table is-bordered pricing__table is-fullwidth">
                <tbody>
                    <tr>
                        <th class="has-text-centered">Respuestas/Preguntas</th>
                        <th class="has-text-centered">Pregunta 1</th>
                        <th class="has-text-centered">Pregunta 2</th>
                        <th class="has-text-centered">Pregunta 3</th>
                        <th class="has-text-centered">Pregunta 4</th>
                        <th class="has-text-centered">Pregunta 5</th>
                    </tr>
                    <tr>
                        <th class="has-text-centered">
                            Si <br>
                        </th>
                        <td class="has-text-centered">
                            <% if (rs1.first()) {
                                    out.println(rs1.getString("p1YES"));
                                }%>
                        </td>
                        <td class="has-text-centered">
                            <% if (rs2.first()) {
                                    out.println(rs2.getString("p2YES"));
                                }%>
                        </td>
                        <td class="has-text-centered">
                            <% if (rs3.first()) {
                                    out.println(rs3.getString("p3YES"));
                                }%>
                        </td>
                        <td class="has-text-centered">
                            <% if (rs4.first()) {
                                    out.println(rs4.getString("p4YES"));
                                    rs4 = encuesta.getAnswerPregunta4();
                                }%>
                        </td>
                        <td class="has-text-centered">
                            <% if (rs5.first()) {
                                    out.println(rs5.getString("p5YES"));
                                }%>
                        </td>
                    </tr>
                    <tr>
                        <th class="has-text-centered">
                            No
                        </th>
                        <td class="has-text-centered">
                            <% if (rs1.first()) {
                                    out.println(rs1.getString("p1NO"));
                                }%>
                        </td>
                        <td class="has-text-centered">
                            <% if (rs2.first()) {
                                    out.println(rs2.getString("p2NO"));
                                }%>
                        </td>
                        <td class="has-text-centered">
                            <% if (rs3.first()) {
                                    out.println(rs3.getString("p3NO"));
                                }%>
                        </td>
                        <td class="has-text-centered">
                            <% if (rs4.first()) {
                                    out.println(rs4.getString("p4NO"));
                                }%>
                        </td>
                        <td class="has-text-centered">
                            <% if (rs5.first()) {
                                    out.println(rs5.getString("p5NO"));
                                }%>
                        </td>
                    </tr>
                    <tr>
                        <th class="has-text-centered">
                            Porcentaje de aceptación
                        </th>
                        <td class="has-text-centered">
                            <% if (rs1.first()) {
                                    out.println((Float.parseFloat(rs1.getString("p1YES")) / Float.parseFloat(rs.getString("COUNT(idEstadistica)"))) * 100);
                                    out.println("%");
                                }%>
                        </td>
                        <td class="has-text-centered">
                            <% if (rs2.first()) {
                                    out.println((Float.parseFloat(rs2.getString("p2YES")) / Float.parseFloat(rs.getString("COUNT(idEstadistica)"))) * 100);
                                    out.println("%");
                                }%>
                        </td>
                        <td class="has-text-centered">
                            <% if (rs3.first()) {
                                    out.println((Float.parseFloat(rs3.getString("p3YES")) / Float.parseFloat(rs.getString("COUNT(idEstadistica)"))) * 100);
                                    out.println("%");
                                }%>
                        </td>
                        <td class="has-text-centered">
                            <% if (rs4.first()) {
                                    out.println((Float.parseFloat(rs4.getString("p4YES")) / Float.parseFloat(rs.getString("COUNT(idEstadistica)"))) * 100);
                                    out.println("%");
                                }%>
                        </td>
                        <td class="has-text-centered">
                            <% if (rs5.first()) {
                                    out.println((Float.parseFloat(rs5.getString("p5YES")) / Float.parseFloat(rs.getString("COUNT(idEstadistica)"))) * 100);
                                    out.println("%");
                                }%>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </body>
    <%        footer footer = new footer();
        out.println(footer.showFooter());
    %>
</html>
