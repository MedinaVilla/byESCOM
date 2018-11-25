<%-- 
    Document   : enviarExperiencia
    Created on : 21/11/2018, 09:38:57 AM
    Author     : RubenHH
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
        <script src="./js/jquery.min.js"></script>
        <script src="./js/experiencias/sendExperiences.js"></script>
        <script src='https://www.google.com/recaptcha/api.js'></script>
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
                        Envío de experiencias
                </div>
            </div>
        </section>
        <div  id="success" name="success" class="success">
            <div hidden class="notification is-success has-text-centered">
                Experiencia enviada correctamente. Un moderador se encargará de revisar su experiencia y validarla.
            </div>
        </div>
        <div  id="danger" name="danger" class="danger">
            <div hidden class="notification is-danger has-text-centered">
                Porfavor, verifica el reCAPTCHA
            </div>
        </div>
        <section class="hero is-succes is-fullheight">
            <div class="hero-body">
                <div class="container has-text-centered">
                    <h3 class="title has-text-grey">¡Cuéntanos tus experiencias que hayas vivido en ESCOM!</h3>
                     <p id="r1Err" class="help is-danger">*Nota: Redacte su experiencia de la mejor manera y no incluya palabras groseras ni altisonantes.</p>
                    <div class="column is-6 is-offset-3">
                        <div class="box">
                            <form name="form_sendExp" method="POST" action="./registrarExperiencia" onsubmit="return validarExp();">
                                <div class="field">
                                    <div class="control">
                                        <input name="nombre" id="nombre" class="input is-large" onblur="this.value=NumText(this.value)" onkeyPress="return check(this.value, event,'nombre')"  maxlength="50" type="text" placeholder="Nombre" autofocus="">
                                        <p hidden id="nombreUsuErr" class="help is-danger"> </p>
                                    </div>
                                </div>
                                <div class="field">
                                    <div class="control">
                                        <textarea id="experiencia" style="resize: none;" name="experiencia" class="textarea is-large" onblur="this.value=NumText(this.value)" onkeyPress="return check(this.value, event,'experiencia')" rows="9" maxlength="350" onkeyup="cuenta()" onkeydown="cuenta()" placeholder="Escribe aquí tu experiencia..."></textarea>
                                        <p hidden id="areaExpErr" class="help is-danger"> </p>
                                    </div>
                                    <span id="counter" class="tag is-dark is-rounded" style="float: right; margin-bottom: 5px;">0/350</span>
                                </div>
                                <div class="field">
                                    <div class="control">
                                        <div class="select">
                                            <select name="tipos" id="tipos">
                                                <option value="0">Selecciona un área</option>
                                                <%
                                                    database db = new database();
                                                    ResultSet rs = null;
                                                    db.conectar();
                                                    rs = db.consulta("select* from tipo_experiencia;");
                                                    while (rs.next()) {
                                                        out.println("<option value='" + rs.getInt("idTipoExperiencia") + "'>" + rs.getString("tipoExperiencia") + "</option>");
                                                    }
                                                %>
                                            </select>
                                            <p hidden id="tipoExpErr" class="help is-danger"> </p>
                                        </div>
                                    </div>
                                </div><br>
                                <div class="g-recaptcha" data-sitekey="6LdV1XwUAAAAAINM-7iisDw8TvOkhocKo1ioDUi8"></div>
                                <p hidden id="captchaErr" class="help is-danger" style="float: left"> </p><br>
                                <button id="boton" class="button is-primary  is-large is-fullwidth">Enviar</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <%
            footer footer = new footer();
            out.println(footer.showFooter());
            
            if (request.getSession().getAttribute("expSend") == "EnvioExitoso") {
                %><script> $(".success div").removeAttr("hidden");</script><%
                session.removeAttribute("expSend");
            }else if(request.getSession().getAttribute("expSend") == "Bot"){
                %><script> $(".danger div").removeAttr("hidden");</script><%
                session.removeAttribute("expSend");
            }
           
        %>
    </body>
</html>
