<%-- 
    Document   : cerrarSesion
    Created on : 18/11/2018, 09:35:04 PM
    Author     : MedinaVilla
--%>

<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" import="Java.*" pageEncoding="UTF-8"%>
<%
    try {
        HttpSession sesion = request.getSession();
        sesion.invalidate();
        response.sendRedirect("./");
    } catch (Exception e) {
        response.sendRedirect("./login");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cerrando Sesion</title>
    </head>
    <body>
    </body>
</html>
