<%-- 
    Document   : eliminarReporte
    Created on : 19/11/2018, 08:23:24 PM
    Author     : MedinaVilla
--%>

<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" import="Java.*" pageEncoding="UTF-8"%>

<%
    int idReporte = Integer.parseInt(request.getParameter("idReporteE"));
    try {
        errores reporte = new errores();
        out.println(idReporte);
        reporte.deleteReporte(idReporte);
        response.sendRedirect("./revisionErrores");
    } catch (SQLException e) {
        out.println(e);
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Loading</title>
    </head>
    <body>
    </body>
</html>
