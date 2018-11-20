<%-- 
    Document   : reportError
    Created on : 19/11/2018, 02:47:12 PM
    Author     : MedinaVilla
--%>

<%@page contentType="text/html" import ="Java.*"pageEncoding="UTF-8"%>
<%HttpSession sesion = request.getSession();%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            navbar navbar = new navbar();
            try {
                out.println(navbar.showNavbar(sesion.getAttribute("nombreUsuario").toString(), sesion.getAttribute("tipoUsuario").toString()));
            } catch (Exception e) {
                out.println(navbar.showNavbar("", ""));
            }
        %>
        <h1>Hello World!</h1>
    </body>
    <%
        footer footer = new footer();
        out.println(footer.showFooter());
    %>
</html>
