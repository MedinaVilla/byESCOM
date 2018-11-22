<%-- 
    Document   : aceptar
    Created on : 19/11/2018, 04:42:54 PM
    Author     : MedinaVilla
--%>

<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" import="Java.*" pageEncoding="UTF-8"%>
<%
    int idExperiencia = Integer.parseInt(request.getParameter("idExpOk"));
    try {
        experiencia exp = new experiencia();
        out.println(idExperiencia);
        exp.aceptarExperiencia(idExperiencia);
        response.sendRedirect("./revisionExperiencias");
    } catch (SQLException e) {
        out.println(e);
        response.sendRedirect("./indexUser");
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
