/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Java;

/**
 *
 * @author MedinaVilla
 */
public class navbar {

    public String showNavbar() {

        String navbar;
        //Se puede declarar otra variable en donde tenga funciones extras para moderador o algun otro usuario

        navbar = "<nav class='navbar' role='navigation' aria-label='main navigation'>"
                + "<div class='navbar-brand'>"
                + "<a class='navbar-item' href='https://bulma.io'>"
                + "<img src='https://bulma.io/images/bulma-logo.png' width='112' height='28'>"
                + "</a>"
                + "<a role='button' class='navbar-burger burger' aria-label='menu' aria-expanded='false' data-target='navbarBasicExample'>"
                + "<span aria-hidden='false'></span>"
                + "<span aria-hidden='false'></span>"
                + "<span aria-hidden='false'></span>"
                + "</a>"
                + "</div>"
                + "<div id='navbarBasicExample' class='navbar-menu'>"
                + "<div class='navbar-start'>"
                + "<a class='navbar-item'>"
                + "Inicio"
                + "</a>"
                + "<a class='navbar-item'>"
                + "Carreras"
                + "</a>"
                + "<div class='navbar-item has-dropdown is-hoverable'>"
                + "<a class='navbar-link'>"
                + "Materias"
                + "</a>"
                + "<div class='navbar-dropdown'>"
                + "<a class='navbar-item'>"
                + "Visualizar comentarios"
                + "</a>"
                + "<a class='navbar-item'>"
                + "Realiza una comentario"
                + "</a>"
                + "</div>"
                + "</div>"
                + "</div>"
                + "<div class='navbar-end'>"
                + "<div class='navbar-item'>"
                + "<div class='buttons'>"
                + "<a class='button is-primary'>"
                + "<strong>Registrarse</strong>"
                + "</a>"
                + "<a href='./login' class='button is-light'>"
                + "Iniciar Sesion"
                + "</a>"
                + "</div>"
                + "</div>"
                + "</div>"
                + "</div>"
                + "</nav>";
        return navbar;
    }
}
