<%-- 
    Document   : index
    Created on : 14/11/2018, 01:02:32 PM
    Author     : MedinaVilla
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*,java.sql.*,Java.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="./img/favicon.ico" type="image/x-icon"/>
        <title>Bievenido</title>
    </head>
    <body>
        <h1>Pagina de INDEX</h1>
        <!-- Constructor que imprime navbar -->
        <% 
        navbar navbar = new navbar();
        out.println(navbar.showNavbar());
        %>
        
    </body>
</html>
