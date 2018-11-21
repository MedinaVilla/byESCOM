<%-- 
    Document   : enviarReporteError
    Created on : 21/11/2018, 11:23:45 AM
    Author     : MedinaVilla
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" import="Java.*" pageEncoding="UTF-8"%>
<%
    database bd = new database();
    bd.conectar();
    ResultSet rs;
    String submodulo = request.getParameter("submodulo");
    String explicacion = request.getParameter("explicacion");
    String metodo = request.getParameter("metodo");

    errores reporteError = new errores();

    try {
        reporteError.registrarReporte(submodulo, explicacion, metodo);
        response.sendRedirect("./reportarError");
    } catch (SQLException e) {
        out.println(e.toString());
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Loading</title>
    </head>
    <body>
        <h1>Reporte men!</h1>
    </body>
</html>
