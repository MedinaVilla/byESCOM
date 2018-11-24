<%-- 
    Document   : encuesta
    Created on : 20/11/2018, 11:32:09 AM
    Author     : MedinaVilla
--%>

<%@page contentType="text/html" import="Java.*" pageEncoding="UTF-8"%>
<%HttpSession sesion = request.getSession();%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="./img/favicon.ico" type="image/x-icon"/>
        <link rel="stylesheet" href="./css/bulma.css" type="text/css">
        <link rel="stylesheet" href="./fonts/css/all.css"> 
        <script src="./js/jquery.min.js"></script>
        <script src="./js/encuesta.js"></script>
        <script src='https://www.google.com/recaptcha/api.js'></script>
        <title>Encuesta</title>
    </head>
    <%
        navbar navbar = new navbar();
        try {
            out.println(navbar.showNavbar(sesion.getAttribute("nombreUsuario").toString(), sesion.getAttribute("tipoUsuario").toString()));
        } catch (Exception e) {
            out.println(navbar.showNavbar("", ""));
        }
    %>
    <body>
        <section class="hero is-primary">
            <div class="hero-body">
                <div class="container">
                    <h1 class="title">
                        Encuesta
                </div>
            </div>
        </section>
        <br/>
        <div class="box has-text-centered">Nos gustaría que nos brindara su opinión acerca de la plataforma para nosotros poder mejor para hacer cada vez mejores.</div>
        <div  id="success" name="success" class="success">
            <div hidden class="notification is-success has-text-centered">
                Encuesta enviada correctamente. Gracias por participar.
            </div>
        </div>
        <div  id="danger" name="danger" class="danger">
            <div hidden class="notification is-danger has-text-centered">
                Porfavor, verifica el reCAPTCHA
            </div>
        </div>
        <br/><br/>
        <div class="columns">
            <div class="column is-one-quarter">
            </div>
            <div class="column is-half">
                <form name="encuesta" action="./enviarEncuesta" onsubmit="return validarEncuesta()">
                    <div class="field">
                        <label class="label">¿Te gusta el sitio?</label>
                        <div class="control has-icons-left">
                            <div class="control">
                                <label class="radio">
                                    <input type="radio" id="r1" value="yes" name="r1">
                                    Si
                                </label>
                                <label class="radio">
                                    <input type="radio" id="r1" value="no" name="r1">
                                    No
                                </label>
                            </div>
                            <p hidden id="r1Err" class="help is-danger"> </p>
                        </div>
                    </div>
                    <div class="field">
                        <label class="label">¿Ahora te sientes informado acerca de ESCOM?</label>
                        <div class="control has-icons-left">
                            <div class="control">
                                <label class="radio">
                                    <input type="radio" id="r2" value="yes" name="r2">
                                    Si
                                </label>
                                <label class="radio">
                                    <input type="radio" id="r2" value="no" name="r2">
                                    No
                                </label>
                            </div>
                            <p hidden id="r2Err" class="help is-danger"> </p>
                        </div>
                    </div>
                    <div class="field">
                        <label class="label">¿Te parece que la información es confiable?</label>
                        <div class="control has-icons-left">
                            <div class="control">
                                <label class="radio">
                                    <input type="radio" id="r3" value="yes" name="r3">
                                    Si
                                </label>
                                <label class="radio">
                                    <input type="radio" id="r3" value="no" name="r3">
                                    No
                                </label>
                            </div>
                            <p hidden id="r3Err" class="help is-danger"> </p>
                        </div>
                    </div>
                    <div class="field">
                        <label class="label">¿Recomendarías este sitio a alguien más?</label>
                        <div class="control has-icons-left has-icons-right">
                            <div class="control">
                                <label class="radio">
                                    <input type="radio" id="r4" value="yes" name="r4">
                                    Si
                                </label>
                                <label class="radio">
                                    <input type="radio" id="r4" value="no" name="r4">
                                    No
                                </label>
                            </div>
                            <p hidden id="r4Err" class="help is-danger"> </p>
                        </div>
                    </div>
                    <div class="field">
                        <label class="label">Si tuvieras dudas sobre ESCOM en un futuro, ¿Acudirías a este programa?</label>
                        <div class="control has-icons-left">
                            <div class="control">
                                <label class="radio">
                                    <input type="radio" id="r5" value="yes" name="r5">
                                    Si
                                </label>
                                <label class="radio">
                                    <input type="radio" id="r5" value="no" name="r5">
                                    No
                                </label>
                            </div>
                            <p hidden id="r5Err" class="help is-danger"> </p>
                        </div>
                        <br/>
                        <div class="g-recaptcha" data-sitekey="6LdV1XwUAAAAAINM-7iisDw8TvOkhocKo1ioDUi8"></div>
                        <p hidden id="captchaErr" class="help is-danger" style="float: left"> </p><br/>
                        <div class="field is-grouped">
                            <div class="control">
                                <button id="boton" class="button is-primary">Enviar</button>
                            </div>
                        </div>
                    </div> 
                </form>
            </div>
            <div class="column is-one-quarter"></div>
        </div>
        <br/><br/>
    </body>
    <%
        footer footer = new footer();
        out.println(footer.showFooter());
        if (request.getSession().getAttribute("encSend") == "EnvioExitoso") {
    %><script> $(".success div").removeAttr("hidden");</script><%
            session.removeAttribute("encSend");
        }else if(request.getSession().getAttribute("encSend") == "Bot"){
            %><script> $(".danger div").removeAttr("hidden");</script><%
            session.removeAttribute("encSend");
        }
    %>
</html>
