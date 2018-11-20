package Java;

/**
 *
 * @author MedinaVilla
 */
public class navbar {

    public String showNavbar(String nombre, String tipoUsuario) {

        String navbar;
        String moderador = "";
        String usuario = "";

        if (!"".equals(nombre)) {
            usuario = "<div class='navbar-end'>"
                    + "<div class='navbar-item has-dropdown is-hoverable'>"
                    + "<a class='navbar-link'>"
                    + "@" + nombre
                    + "</a>"
                    + "<div class='navbar-dropdown'>"
                    + "<a class='navbar-item'>"
                    + "Perfil"
                    + "</a>"
                    + "<a href='./cerrarSesion' class='navbar-item'>"
                    + "Cerrar sesion"
                    + "</a>"
                    + "</div>"
                    + "</div>"
                    + "</div>";
        } else {
            usuario = "<div class='navbar-end'>"
                    + "<div class='navbar-item'>"
                    + "<div class='buttons'>"
                    + "<div><h1>Eres moderador?</h1></div>"
                    + "<a href='./login' class='button is-primary'>"
                    + "Iniciar Sesion"
                    + "</a>"
                    + "</div>"
                    + "</div>"
                    + "</div>"
                    + "</div>";
        }
        if (tipoUsuario.equals("2")) {
            moderador = "<div class='navbar-item has-dropdown is-hoverable'>"
                    + "<a class='navbar-link'>"
                    + "Moderador"
                    + "</a>"
                    + "<div class='navbar-dropdown'>"
                    + "<a href='revisionExperiencias' class='navbar-item'>"
                    + "Revision de experiencias"
                    + "</a>"
                    + "<a class='navbar-item'>"
                    + "Revision de errores"
                    + "</a>"
                    + "<a class='navbar-item'>"
                    + "Estadisticas"
                    + "</a>"
                    + "</div>"
                    + "</div>";
        }
        navbar = "<nav class='navbar' role='navigation' aria-label='main navigation'>"
                + "<div class='navbar-brand'>"
                + "<a class='navbar-item' href='./'>"
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
                + "<a href='./' class='navbar-item'>"
                + "Inicio"
                + "</a>"
                + "<a href='./materias' class='navbar-item'>"
                + "Materias"
                + "</a>"
                + "<div class='navbar-item has-dropdown is-hoverable'>"
                + "<a class='navbar-link'>"
                + "Experiencias"
                + "</a>"
                + "<div class='navbar-dropdown'>"
                + "<a class='navbar-item'>"
                + "Catalogo de experiencias"
                + "</a>"
                + "<a class='navbar-item'>"
                + "Envio de experiencias"
                + "</a>"
                + "</div>"
                + "</div>"
                + "<div class='navbar-item has-dropdown is-hoverable'>"
                + "<a class='navbar-link'>"
                + "ESCOM"
                + "</a>"
                + "<div class='navbar-dropdown'>"
                + "<a class='navbar-item'>"
                + "Informacion de ESCOM"
                + "</a>"
                + "<a class='navbar-item'>"
                + "Mapa de ESCOM"
                + "</a>"
                + "</div>"
                + "</div>"
                + "<a class='navbar-item'>"
                + "Ayuda"
                + "</a>"
                + moderador
                + "</div>"
                + usuario
                + "</nav>";
        return navbar;
    }
}
