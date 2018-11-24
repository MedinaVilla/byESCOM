<%-- 
    Document   : enviarEncuesta
    Created on : 20/11/2018, 11:44:05 AM
    Author     : MedinaVilla
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" import="Java.*" pageEncoding="UTF-8"%>

<%
    database bd = new database();
    bd.conectar();
    
    request.setCharacterEncoding("UTF-8");
            
    String gRecaptchaResponse = request.getParameter("g-recaptcha-response");
    boolean verify = VerifyRecaptcha.verify(gRecaptchaResponse);
    
    if(verify){
        ResultSet rs;

        String r1 = request.getParameter("r1");
        String r2 = request.getParameter("r2");
        String r3 = request.getParameter("r3");
        String r4 = request.getParameter("r4");
        String r5 = request.getParameter("r5");

        encuesta encuesta = new encuesta();
        String idUsuario;

        try {
            encuesta.registrarEncuesta(r1, r2, r3, r4, r5);
            request.getSession().setAttribute("encSend", "EnvioExitoso");
            response.sendRedirect("./encuesta");
        } catch (SQLException e) {
            out.println(e.toString());
        }
    }else{
        request.getSession().setAttribute("encSend", "Bot");
            response.sendRedirect("./encuesta");
    }
    

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Loading</title>
    </head>
    <body>
    </body>
</html>
