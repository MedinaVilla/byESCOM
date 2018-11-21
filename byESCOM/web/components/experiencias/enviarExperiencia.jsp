<%-- 
    Document   : enviarExperiencia
    Created on : 21/11/2018, 09:38:57 AM
    Author     : ruben
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*,java.sql.*,Java.*"  %>
<%HttpSession sesion = request.getSession();%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="./img/favicon.ico" type="image/x-icon"/>
        <link rel="stylesheet" href="./css/bulma.css" type="text/css">
        <link rel="stylesheet" href="./fonts/css/all.css" >
        <script src="./js/experiencias/sendExperiences.js"></script>
        <title>Envío de experiencias</title>
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
        <section class="hero is-primary">
            <div class="hero-body">
                <div class="container">
                    <h1 class="title">
                        Envió de experiencias
                </div>
            </div>
        </section>
        <section class="hero is-succes is-fullheight">
            <div class="hero-body">
                <div class="container has-text-centered">
                    <h3 class="title has-text-grey">¡Cuentanos tus experiencias que hayas vivido en ESCOM!</h3>
                    <div class="column is-6 is-offset-3">
                        <div class="box">
                            <form name="form_sendExp" action="./registrarExperiencia" onsubmit="return validarExp()">
                                <div class="field">
                                    <div class="control">
                                        <input name="nombre" class="input is-large" maxlength="50" type="text" placeholder="Nombre" autofocus="">
                                        <p id="nombreUsuErr" class="help is-danger"> </p>
                                    </div>
                                </div>
                                <div class="field">
                                  <div class="control">
                                      <textarea id="experiencia" name="experiencia" class="textarea is-large" rows="9" maxlength="350" onkeyup="cuenta()" onkeydown="cuenta()" placeholder="Escribe aquí tu experiencia..."></textarea>
                                      <p id="areaExpErr" class="help is-danger"> </p>
                                  </div>
                                    <span id="counter" class="tag is-dark is-rounded" style="float: right; margin-bottom: 5px;">0/350</span>
                                </div>
                                <div class="field">
                                    <div class="control">
                                      <div class="select">
                                        <select name="tipos" id="tipos">
                                            <option value="0">Selecciona un lugar</option>
                                            <%
                                                database db = new database();
                                                ResultSet rs = null;
                                                db.conectar();
                                                rs = db.consulta("select* from tipo_experiencia;");
                                                while(rs.next()){
                                                    out.println("<option value='"+rs.getInt("idTipoExperiencia")+"'>"+rs.getString("tipoExperiencia")+"</option>");
                                                }
                                            %>
                                        </select>
                                        <p id="tipoExpErr" class="help is-danger"> </p>
                                      </div>
                                    </div>
                                </div>
                                <br>
                                <button class="button is-primary  is-large is-fullwidth">Enviar</button>
                            </form>
                        </div>
                    </div>
                    </div>
            </div>
        </section>
        <%  
            footer footer = new footer();
            out.println(footer.showFooter());
            if(request.getSession().getAttribute("expSend")=="EnvioExitoso"){
                out.println("<script>alert('Envío Exitoso');</script>");
            }
        %>
    </body>
</html>
