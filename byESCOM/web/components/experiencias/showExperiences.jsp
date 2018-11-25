<%-- 
    Document   : showExperiences
    Created on : 19-nov-2018, 9:02:18
    Author     : RubenHH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*,java.sql.*,Java.*" %>
<%HttpSession sesion = request.getSession();%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./css/bulma.css" type="text/css">
        <link rel="stylesheet" href="./fonts/css/all.css"> 
    </head>
    <body>
        <%
            String s_tipo = request.getParameter("tipo");
            int i_tipo = 0;
            experiencia db = new experiencia();
            ResultSet rs = null;
            String colores[] = {"is-danger", "is-info", "is-success", "is-warning", "is-link"};
            if (s_tipo != null) {
                i_tipo = Integer.parseInt(s_tipo);
            } else {
                i_tipo = 0;
            }
            boolean vacio=false;
            if (i_tipo == 0) {
                rs = db.getAllExperiencias();
                if(db.getCountAll()==0){
                    vacio=true;
                }
            } else {
                rs = db.getSomeExperiencias(i_tipo);
                if(db.getCountSome(i_tipo)==0){
                    vacio=true;
                }
            }
            if(vacio){
                    out.println("<section class='hero is-danger' style='margin-top: 10px;'>"
                            + "<div class='hero-body'>"
                            + "<div class='container'>"
                            + "<h1 class='title'> No hay experiencias</h1>"
                            + "</div>"
                            + "</div>"
                            + "</section>"
                            + "");
            }else{
            int i = 0;
            out.println("<div class='tile is-ancestor' style='padding: 20px;'>"
                    + "<div class='tile is-fullhd is-vertical'>"
                    + "<div class='tile'>");
            while (rs.next()) {
                if (i == 3) {
                    out.println("</div>"
                            + "<div class='tile'>");
                    i = 0;
                }
                out.println("<div class='tile is-parent is-vertical'>"
                        + "<div class='tile is-child box notification " + colores[(rs.getInt("tipoExperiencia") - 1)] + "'>"
                        + "<p class='title'>" + rs.getString("nombreAlumno") + "</p>"
                        + "<p class='subtitle'>" + rs.getString("fechaEnvio") + "</p>"
                        + "<p class='has-text-justified'>" + rs.getString("contenido") + "</p>"
                        + "</div>"
                        + "</div>");
                i++;
            }
            out.println("</div>"
                    + "</div>"
                    + "</div>");
            }
            
        %>
    </body>
</html>
