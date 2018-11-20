<%-- 
    Document   : encuesta
    Created on : 20/11/2018, 11:32:09 AM
    Author     : MedinaVilla
--%>

<%@page contentType="text/html" import="Java.*" pageEncoding="UTF-8"%>
<%HttpSession sesion = request.getSession();%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Encuesta</title>
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
        <h1>Hello World!</h1>
    </body>
</html>
