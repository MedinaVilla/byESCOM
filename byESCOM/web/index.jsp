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

        <link rel="stylesheet" href="./css/bulma.css" type="text/css">
        <link rel="stylesheet" href="./css/bulma.css.map" type="text/css">
        <link rel="stylesheet" href="./css/bulma.min.css" type="text/css">
        <link rel="stylesheet" href="./fonts/css/all.css"> 

        <title>Bievenido</title>
    </head>
    <body>
        <!-- Constructor que imprime navbar -->
        <%
            navbar navbar = new navbar();
            out.println(navbar.showNavbar());
        %>
        Hola, soy la Landing Page un gusto compadre <br>
        Aqui va el contenido de la pagina <br>
        El de arriba es una navbar <br>
        El de abajo es un footer <br>
        Siempre se van a poner en todos los modulos con simple import <br>
        No paro de escribir para tener algo de contenido.
        <i class="fab fa-amazon-pay"></i>
        <i class="fab fa-accessible-icon"></i>
        <i class="fas fa-user"></i>
    </body>
    <!-- Constructor que imprime navbar -->
    <%
        footer footer = new footer();
        out.println(footer.showFooter());
    %>
</html>
