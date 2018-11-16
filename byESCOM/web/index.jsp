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
        <div>
        <%
            navbar navbar = new navbar();
            out.println(navbar.showNavbar());
        %>
        Hola gente de youtube
      </div>
    </body>
    <!-- Constructor que imprime navbar -->
    <%
        footer footer = new footer();
        out.println(footer.showFooter());
    %>
</html>
