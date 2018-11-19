<%-- 
    Document   : loguearse
    Created on : 18/11/2018, 08:28:14 PM
    Author     : MedinaVilla
--%>

<%@page import="java.sql.ResultSet, Java.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ResultSet rs = null;
    database db = new database();
    String boleta = request.getParameter("boleta");
    String contrasenia = request.getParameter("password");
    
    db.conectar();
    usuario usuario = new usuario();
    
    if (usuario.iniciarSesion(boleta, contrasenia)) {
        HttpSession sesion = request.getSession();
        sesion.setAttribute("identificador", boleta);
        rs = usuario.getUsuarioPorID(boleta);
        while (rs.next()) {
            sesion.setAttribute("idUsuario", rs.getString("usuario.idUsuario"));
            sesion.setAttribute("nombreUsuario", rs.getString("usuario.nombre"));
            sesion.setAttribute("tipoUsuario", rs.getString("usuario.idTipoUsuario"));
        }
        response.sendRedirect("./indexUser");
    } else {
        response.sendRedirect("./login?errLogin=EmptyInput573");
    }
    
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
