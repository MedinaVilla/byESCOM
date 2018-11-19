<%-- 
    Document   : login
    Created on : 15/11/2018, 10:00:39 PM
    Author     : MedinaVilla
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*,java.sql.*,Java.*" %>
<%HttpSession sesion = request.getSession();%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="./img/favicon.ico" type="image/x-icon"/>
        <link rel="stylesheet" href="./css/bulma.css" type="text/css">
        <link rel="stylesheet" href="./fonts/css/all.css"> 
        <link rel="stylesheet" href="./css/login.css">
        <script src="./js/login.js"></script>
        <title>Login</title>
    </head>

    <body>
        <div>
            <%
                navbar navbar = new navbar();
                try {
                    out.println(navbar.showNavbar(sesion.getAttribute("nombreUsuario").toString(), sesion.getAttribute("tipoUsuario").toString()));
                    response.sendRedirect("./indexUser");
                } catch (Exception e) {
                    out.println(navbar.showNavbar("", ""));

                }
            %>
            <section class="hero is-primary">
                <div class="hero-body">
                    <div class="container">
                        <h1 class="title">
                            Inicia sesión
                    </div>
                </div>
            </section>
            <section class="hero is-success is-fullheight">
                <div class="hero-body">
                    <div class="container has-text-centered">
                        <div class="column is-4 is-offset-4">
                            <h3 class="title has-text-grey">Iniciar Sesión</h3>
                            <div class="box">
                                <figure class="avatar">
                                    <img src="./img/avatar.jpg" width='102' height='18'>
                                </figure>
                                <form name="login" action="./loguearse"  onsubmit="return validarLogin()">
                                    <div class="field">
                                        <div class="control">
                                            <input name="boleta" class="input is-large" type="text" placeholder="Tu boleta" autofocus="">
                                            <p id="boletaErr" class="help is-danger"> </p>
                                        </div>
                                    </div>

                                    <div class="field">
                                        <div class="control">
                                            <input name="password" class="input is-large" type="password" placeholder="Tu password">
                                            <p id="passwordErr" class="help is-danger"> </p>
                                            <p id="loginErr" class="help is-danger"> </p>
                                        </div>
                                    </div>

                                    <button class="button is-primary  is-large is-fullwidth">Login</button>
                                </form>
                            </div>
                            <p class="has-text-grey">
                                <a href="./register">No tienes cuenta? Regístrate</a> &nbsp;&nbsp;
                            </p>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </body>
    <%
        String err = request.getParameter("errLogin");
        System.out.println(err);
        if (err != null) { %>
    <script>
        showErrorLogin();
    </script> 
    <%
        }
    %>
    <%
        footer footer = new footer();
        out.println(footer.showFooter());
    %>
</html>
