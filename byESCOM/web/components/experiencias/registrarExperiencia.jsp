<%-- 
    Document   : registrarExperiencia
    Created on : 21/11/2018, 11:30:31 AM
    Author     : RubenHHH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*,java.sql.*,Java.*"  %>
<%HttpSession sesion = request.getSession();%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>registrarExp</title>
    </head>
    <body>
        <%
            database db = new database();
            db.conectar();

            request.setCharacterEncoding("UTF-8");
            
            String gRecaptchaResponse = request.getParameter("g-recaptcha-response");
            boolean verify = VerifyRecaptcha.verify(gRecaptchaResponse);

            if(verify){
                String nombre = request.getParameter("nombre");
                String contenido = request.getParameter("experiencia");
                String tipo = request.getParameter("tipos");
                int s = 0;

                String query = "insert into experiencia(contenido,nombreAlumno,fechaEnvio,tipoExperiencia,estado) values('" + contenido + "'"
                        + ",'" + nombre + "',now(), " + tipo + ",2); ";
                db.alta(query);
                request.getSession().setAttribute("expSend", "EnvioExitoso");
            }else{
                request.getSession().setAttribute("expSend", "Bot");
            }
            
            response.sendRedirect("./enviarExperiencia");
        %>
    </body>
</html>
