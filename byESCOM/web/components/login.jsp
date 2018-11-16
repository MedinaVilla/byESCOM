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
            <section class="hero is-success is-fullheight">
                <div class="hero-body">
                    <div class="container has-text-centered">
                        <div class="column is-4 is-offset-4">
                            <h3 class="title has-text-grey">Iniciar Sesion</h3>
                            <p class="subtitle has-text-grey">Logueate para acceder.</p>
                            <div class="box">
                                <figure class="avatar">
                                    <img src="./img/avatar.jpg" width='112' height='28'>
                                </figure>
                                <form>
                                    <div class="field">
                                        <div class="control">
                                            <input class="input is-large" type="email" placeholder="Your Email" autofocus="">
                                        </div>
                                    </div>

                                    <div class="field">
                                        <div class="control">
                                            <input class="input is-large" type="password" placeholder="Your Password">
                                        </div>
                                    </div>
                                    <button class="button is-block is-info is-large is-fullwidth">Login</button>
                                </form>
                            </div>
                            <p class="has-text-grey">
                                <a href="../">Sign Up</a> &nbsp;·&nbsp;
                                <a href="../">Forgot Password</a> &nbsp;·&nbsp;
                                <a href="../">Need Help?</a>
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
