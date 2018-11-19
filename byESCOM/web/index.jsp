<%-- 
    Document   : index
    Created on : 14/11/2018, 01:02:32 PM
    Author     : MedinaVilla
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*,java.sql.*,Java.*"  %>
<%HttpSession sesion = request.getSession();%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="./img/favicon.ico" type="image/x-icon"/>

        <link rel="stylesheet" href="./css/bulma.css" type="text/css"/>
        <link rel="stylesheet" href="./fonts/css/all.css"/> 

        <title>Bievenido</title>
    </head>
    <body>
        <!-- Constructor que imprime navbar -->
        <div>
            <%
                navbar navbar = new navbar();
                try {
                    out.println(navbar.showNavbar(sesion.getAttribute("nombreUsuario").toString(), sesion.getAttribute("tipoUsuario").toString()));
                    response.sendRedirect("./indexUser");
                } catch (Exception e) {
                    out.println(navbar.showNavbar("", ""));

                }
            %>
            Hola gente de youtube. Este es el index

        </div>
    </body>
    <!-- Constructor que imprime navbar -->
    <%
        footer footer = new footer();
        out.println(footer.showFooter());
    %>
</html>
