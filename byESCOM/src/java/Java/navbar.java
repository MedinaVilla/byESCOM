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
                    + "<a href='./cerrarSesion' class='navbar-item'>"
                    + "Cerrar sesión"
                    + "</a>"
                    + "</div>"
                    + "</div>"
                    + "</div>";
        } else {
            usuario = "<div class='navbar-end'>"
                    + "<div class='navbar-item'>"
                    + "<div class='buttons'>"
                    + "<div><h1>¿Eres moderador?</h1></div> &nbsp &nbsp"
                    + "<a href='./login' class='button is-primary'>"
                    + "Iniciar Sesión"
                    + "</a>"
                    + "</div>"
                    + "</div>"
                    + "</div>"
                    + "</div>";
        }
        if (tipoUsuario.equals("1")) {
            moderador = "<div class='navbar-item has-dropdown is-hoverable'>"
                    + "<a class='navbar-link'>"
                    + "Moderador"
                    + "</a>"
                    + "<div class='navbar-dropdown'>"
                    + "<a href='revisionExperiencias' class='navbar-item'>"
                    + "Revisión de experiencias"
                    + "</a>"
                    + "<a href='revisionErrores' class='navbar-item'>"
                    + "Revisión de errores"
                    + "</a>"
                    + "<a href='./estadistica' class='navbar-item'>"
                    + "Estadísticas"
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
                + "<a href='experiences' class='navbar-item'>"
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
                + "<a href='./infoESCOM' class='navbar-item'>"
                + "Informacion de ESCOM"
                + "</a>"
                + "<a class='navbar-item'>"
                + "Mapa de ESCOM"
                + "</a>"
                + "</div>"
                + "</div>"
                + "<div class='navbar-item has-dropdown is-hoverable'>"
                + "<a class='navbar-link'>"
                + "Info. del Sistema"
                + "</a>"
                + "<div class='navbar-dropdown'>"
                + "<a class='navbar-item'>"
                + "Ayuda"
                + "</a>"
                + "<a class='navbar-item'>"
                + "Acerca de"
                + "</a>"
                + "<a class='navbar-item'>"
                + "Reportar error"
                + "</a>"
                + "<a href='./encuesta' class='navbar-item'>"
                + "Realizar encuesta"
                + "</a>"
                + "</div>"
                + "</div>"
                + moderador
                + "</div>"
                + usuario
                + "</nav>";
        return navbar;
    }
}
