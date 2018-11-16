<%-- 
    Document   : login
    Created on : 15/11/2018, 10:00:39 PM
    Author     : MedinaVilla
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*,java.sql.*,Java.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="./img/favicon.ico" type="image/x-icon"/>
        <link rel="stylesheet" href="./css/bulma.css" type="text/css">
        <link rel="stylesheet" href="./css/bulma.css.map" type="text/css">
        <link rel="stylesheet" href="./css/bulma.min.css" type="text/css">
        <link rel="stylesheet" href="./fonts/css/all.css"> 
        <link rel="stylesheet" href="./css/login.css">
        <title>Login</title>
    </head>
    <body>
        <div>
            <%
                navbar navbar = new navbar();
                out.println(navbar.showNavbar());
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
                                <form>
                                    <div class="field">
                                        <div class="control">
                                            <input class="input is-large" type="email" placeholder="Tu email" autofocus="">
                                        </div>
                                    </div>

                                    <div class="field">
                                        <div class="control">
                                            <input class="input is-large" type="password" placeholder="Tu password">
                                        </div>
                                    </div>
                                    <button class="button is-primary  is-large is-fullwidth">Login</button>
                                </form>
                            </div>
                            <p class="has-text-grey">
                                <a href="../">No tienes cuenta? Regístrate</a> &nbsp;&nbsp;
                            </p>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </body>
    <%
        footer footer = new footer();
        out.println(footer.showFooter());
    %>
</html>
