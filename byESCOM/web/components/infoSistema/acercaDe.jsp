<%-- 
    Document   : acercaDe
    Created on : 21/11/2018, 12:10:10 PM
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
        <title>Acerca de</title>
    </head>
    <body>
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
                        Acerca de
                    </h1>
                </div>
            </div>
        </section> 
        <div class="box has-text-centered">Equipo de trabajo que desarrollo <strong>byESCOM</strong></div>
        <div class="container">
            <div class="columns">
                <div class="column">
                    <div class="card">

                        <div class="card-content">
                            <div class="media">
                                <div class="media-left">
                                    <figure class="image is-48x48">
                                        <img src="./img/avatar_1.png" alt="MedinaVilla"
                                    </figure>
                                </div>
                                <div class="media-content">
                                    <p class="title is-4">Jesus Medina</p>
                                    <p class="subtitle is-6">@MedinaVilla</p>
                                </div>
                            </div>
                            <div class="content">
                                Front-end and Back-end programmer <a href="http://github.com/MedinaVilla">@MedinaVilla</a>.
                                <a>#ESCOM</a> <a>#IPN</a>
                                <br>
                                <time datetime="2018-11-21">11:09 AM - 21 November 2018</time>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="column">
                    <div class="card">
                        <div class="card-content">
                            <div class="media">
                                <div class="media-left">
                                    <figure class="image is-48x48">
                                        <img src="./img/avatar_2.png" alt="Ruben35">
                                    </figure>
                                </div>
                                <div class="media-content">
                                    <p class="title is-4">Ruben Hdez.</p>
                                    <p class="subtitle is-6">@Ruben35</p>
                                </div>
                            </div>
                            <div class="content">
                                Front-end and Back-end programmer<a>@Ruben35</a>.
                                <a href="#">#ESCOM</a> <a href="#">#IPN</a>
                                <br>
                                <time datetime="2018-11-21">11:09 AM - 21 November 2018</time>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="column">
                    <div class="card">
                        <div class="card-content">
                            <div class="media">
                                <div class="media-left">
                                    <figure class="image is-48x48">
                                        <img src="./img/avatar_3.png" alt="YosafatM">
                                    </figure>
                                </div>
                                <div class="media-content">
                                    <p class="title is-4">Yosafat Mtz.</p>
                                    <p class="subtitle is-6">@YosafatM</p>
                                </div>
                            </div>

                            <div class="content">
                                Analyzer and project documenter <a>@YosafatM</a>.
                                <a href="#">#ESCOM</a> <a href="#">#IPN</a>
                                <br>
                                <time datetime="2018-11-21">11:09 AM - 21 November 2018</time>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="column">
                    <div class="card">
                        <div class="card-content">
                            <div class="media">
                                <div class="media-left">
                                    <figure class="image is-48x48">
                                        <img src="./img/avatar_4.png" alt="Segio884">
                                    </figure>
                                </div>
                                <div class="media-content">
                                    <p class="title is-4">Sergio Valle</p>
                                    <p class="subtitle is-6">@Sergio884</p>
                                </div>
                            </div>
                            <div class="content">
                                Analyzer and project documenter <a>@Sergio884</a>.
                                <a href="#">#ESCOM</a> <a href="#">#IPN</a>
                                <br>
                                <time datetime="2018-11-21">11:09 AM - 21 November 2018</time>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <%
        footer footer = new footer();
        out.println(footer.showFooter());
    %>
</html>
