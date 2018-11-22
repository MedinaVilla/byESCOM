<%-- 
    Document   : index
    Created on : 14/11/2018, 01:02:32 PM
    Author     : MedinaVilla
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*,java.sql.*,Java.*"  %>
<%HttpSession sesion = request.getSession();%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="./img/favicon.ico" type="image/x-icon"/>
        <link rel="stylesheet" href="./css/bulma.css" type="text/css"/>
        <link rel="stylesheet" href="./fonts/css/all.css"/> 
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <title>Bievenido</title>
    </head>
    <body>
        <!-- Constructor que imprime navbar -->
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
                            ¡Bienvendido a byESCOM!
                    </div>
                </div>
            </section>
            <br>
            <div class="columns is-desktop">
                <div class="column is-12-tablet is-4-desktop" style="cursor:pointer">
                    <div class="card hover-hero">
                        <div onClick="javascript: location.href = './materias';" class="hero is-primary hover-hero">
                            <div class="hero-body">
                                <h2 class="title">Materias</h2>
                                <p class="subtitle">Visualiza las materias en nuestra escuela y una descripcion en la que aprenderas en ellas</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="column is-12-tablet is-4-desktop" style="cursor:pointer">
                    <div class="card hover-hero">
                        <div onClick="javascript: location.href = './experiences';" class="hero is-info hover-hero">
                            <div class="hero-body">
                                <h2 class="title">Experiencias</h2>
                                <p class="subtitle">¿Quieres preguntarle a alguien que conoce ESCOM algo? No te apures, aquí encontrarás comentarios de ellos.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="column is-12-tablet is-4-desktop" style="cursor:pointer">
                    <div class="card hover-hero">
                        <div onClick="javascript: location.href = './infoESCOM';" class="hero is-danger hover-hero">
                            <div class="hero-body">
                                <h2 class="title">ESCOM</h2>
                                <p class="subtitle">¿No sabes qué es ESCOM?. En este apartado verás a fondo acerca de lo que representa nuestra institución.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <br/>
        </div>
    </body>
    <!-- Constructor que imprime navbar -->
    <%
        footer footer = new footer();
        out.println(footer.showFooter());
    %>
</html>
