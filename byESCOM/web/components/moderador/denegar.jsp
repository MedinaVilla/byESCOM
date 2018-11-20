<%-- 
    Document   : denegar
    Created on : 19/11/2018, 04:43:01 PM
    Author     : MedinaVilla
--%>

<%@page contentType="text/html" import="Java.*" pageEncoding="UTF-8"%>
<%
    int idExperiencia = Integer.parseInt(request.getParameter("idExpR"));
    experiencia exp = new experiencia();
    out.println(idExperiencia);
     exp.denegarExperiencia(idExperiencia);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Loading</title>
    </head>
    <body>
        <h1>Denegar</h1>
    </body>
</html>
