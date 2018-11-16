<%-- 
    Document   : register
    Created on : 16/11/2018, 10:13:49 AM
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
        <link rel="stylesheet" href="./css/register.css">
        <title>Registro</title>
    </head>
    <%
        navbar navbar = new navbar();
        out.println(navbar.showNavbar());
    %>
    <body>
        <div>
            <section class="hero is-primary">
                <div class="hero-body">
                    <div class="container">
                        <h1 class="title">
                            Regístrate
                    </div>
                </div>
            </section>
            <br/>
            <div class="columns">
                <div class="column is-one-quarter">
                </div>
                <div class="column is-half">
                    <div class="field">
                        <label class="label">Nombre completo</label>
                        <div class="control has-icons-left">
                            <span class="icon is-small is-left">
                                <i class="fas fa-user-tie"></i>
                            </span>
                            <input class="input" type="text" placeholder="Text input">
                        </div>
                    </div>
                    <div class="field">
                        <label class="label">Password</label>
                        <div class="control has-icons-left">
                            <span class="icon is-small is-left">
                                <i class="fas fa-unlock"></i>
                            </span>
                            <input class="input" type="password" placeholder="Password">
                        </div>
                    </div>

                    <div class="field">
                        <label class="label">Email</label>
                        <div class="control has-icons-left has-icons-right">
                            <input class="input" type="email" placeholder="Email input" value="">
                            <span class="icon is-small is-left">
                                <i class="fas fa-envelope"></i>
                            </span>
                            <span class="icon is-small is-right">
                                <i class="fas"></i>
                            </span>
                        </div>
                    </div>
                    <div class="field">
                        <label class="label">Numero de boleta</label>
                        <div class="control has-icons-left">
                            <span class="icon is-small is-left">
                                <i class="fas fa-sort-numeric-up"></i>
                            </span>
                            <input class="input" type="text" placeholder="Ejemplo: 2014984933">
                        </div>
                    </div>
                    <div class="field">
                        <label class="label">Semestre</label>
                        <div class="control">
                            <div class="select">
                                <select>
                                    <option>Primero</option>
                                    <option>Segundo</option>
                                    <option>Tercero</option>
                                </select>
                            </div>
                        </div>
                    </div><br/>
                    <div class="field is-grouped">
                        <div class="control">
                            <button class="button is-primary">Registrarse</button>
                        </div>
                        <div class="control">
                            <button class="button is-text">Cancelar</button>
                        </div>
                    </div>
                </div>
                <div class="column is-one-quarter">
                </div>
            </div>
        </div>
        <br/><br/>
    </body>
    <%
        footer footer = new footer();
        out.println(footer.showFooter());
    %>
</html>
