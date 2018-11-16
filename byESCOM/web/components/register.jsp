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
        <link rel="stylesheet" href="./fonts/css/all.css" > 
        <script src="./js/register.js"></script>
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
                    <form name="register" action="./registro" onsubmit="return validarRegister()">
                        <div class="field">
                            <label class="label">Nombre completo</label>
                            <div class="control has-icons-left">
                                <span class="icon is-small is-left">
                                    <i class="fas fa-user-tie"></i>
                                </span>
                                <input name="nombre" class="input" type="text" placeholder="Nombre Completo">
                                <p id="nombreErr" class="help is-danger"> </p>
                            </div>
                        </div>
                        <div class="field">
                            <label class="label">Password</label>
                            <div class="control has-icons-left">
                                <span class="icon is-small is-left">
                                    <i class="fas fa-unlock"></i>
                                </span>
                                <input name="password" class="input" type="password" placeholder="Password">
                                <p id="passwordErr" class="help is-danger"> </p>
                            </div>
                        </div>
                        <div class="field">
                            <label class="label">Confirmar password</label>
                            <div class="control has-icons-left">
                                <span class="icon is-small is-left">
                                    <i class="fas fa-unlock"></i>
                                </span>
                                <input name="passwordConf" class="input" type="password" placeholder="Password">
                                <p id="passwordConfErr" class="help is-danger"> </p>
                            </div>
                        </div>
                        <div class="field">
                            <label class="label">Email</label>
                            <div class="control has-icons-left has-icons-right">

                                <span class="icon is-small is-left">
                                    <i class="fas fa-envelope"></i>
                                </span>
                                <span class="icon is-small is-right">
                                    <i class="fas"></i>
                                </span>
                                <input name="email" class="input" type="text" placeholder="Email" value="">
                                <p id="emailErr" class="help is-danger"> </p>
                            </div>
                        </div>
                        <div class="field">
                            <label class="label">Número de boleta</label>
                            <div class="control has-icons-left">
                                <span class="icon is-small is-left">
                                    <i class="fas fa-sort-numeric-up"></i>
                                </span>
                                <input name="boleta" class="input" type="text" placeholder="Ejemplo: 2014984933">
                                <p id="boletaErr" class="help is-danger"> </p>
                            </div>
                        </div>
                        <div class="field">
                            <label class="label">Semestre</label>
                            <div class="control">
                                <div class="select">
                                    <select name="semestre">
                                        <option selected value="0">Seleccione un semestre</option>
                                        <option value="1">Primero</option>
                                        <option value="2">Segundo</option>
                                        <option value="3">Tercero</option>
                                        <option value="4">Cuarto</option>
                                        <option value="5">Quinto</option>
                                        <option value="6">Sexto</option>
                                        <option value="7">Septimo</option>
                                        <option value="8">Octavo</option>
                                        <option value="post">Egresado</option>
                                    </select>
                                    <p id="semestreErr" class="help is-danger"> </p>
                                </div>
                            </div>
                        </div><br/>
                        <div class="field is-grouped">
                            <div class="control">
                                <button class="button is-primary">Registrarse</button>
                            </div>

                        </div>
                    </form>
                    <div class="control">
                        <a href="./" class="button is-text">Cancelar</a>
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
