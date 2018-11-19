<%-- 
    Document   : registro
    Created on : 16/11/2018, 12:02:25 PM
    Author     : MedinaVilla
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" import="Java.*" pageEncoding="UTF-8"%>
<%
    database bd = new database();
    bd.conectar();
    ResultSet rs;

    String nombre = request.getParameter("nombre");
    String contrasenia = request.getParameter("password");
    String boleta = request.getParameter("boleta");

    usuario usuario = new usuario(boleta, nombre, contrasenia);
    String idUsuario;
    
    try {
        usuario.registrarUsuario();
        HttpSession sesion = request.getSession();
        sesion.setAttribute("identificador", boleta);
        sesion.setAttribute("nombreUsuario", nombre);
        session.setAttribute("tipoUsuario", "1");

        rs = usuario.getUsuarioPorID(boleta);
        System.out.println(rs);
        while (rs.next()) {
            idUsuario = rs.getString("usuario.idUsuario");
            sesion.setAttribute("idUsuario", idUsuario);
        }
        response.sendRedirect("./");
    } catch (SQLException e) {
        out.println(e.toString());
    }

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cargando</title>
    </head>
    <body>
        
    </body>
</html>
