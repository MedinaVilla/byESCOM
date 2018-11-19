<%-- 
    Document   : indexUser
    Created on : 18/11/2018, 08:45:09 PM
    Author     : MedinaVilla
--%>

<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" import="Java.*" pageEncoding="UTF-8"%>
<%
    HttpSession sesion = request.getSession();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="./img/favicon.ico" type="image/x-icon"/>
        <link rel="stylesheet" href="./css/bulma.css" type="text/css">
        <link rel="stylesheet" href="./fonts/css/all.css"> 
        <title>Hola!</title>
    </head>
    <body>
        <div>
            <%
                try {
                    navbar navbar = new navbar();
                    out.println(navbar.showNavbar(sesion.getAttribute("nombreUsuario").toString(), sesion.getAttribute("tipoUsuario").toString()));
                } catch (Exception e) {
                    out.println(e.toString());
                    response.sendRedirect("./login");
                }
            %>
            <h3>Hola hermano escomiano xdxd </h3>
        </div>
    </body>
    <%
        footer footer = new footer();
        out.println(footer.showFooter());
    %>
</html>
