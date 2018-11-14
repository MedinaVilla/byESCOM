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
        
        navbar = "<div id='navbar-container'>"
                + "<ul>"
                + "<li><a href=\'modulo1\'>Ejemplo navbar</a></li>"
                + "<li><a href=\'modulo2\'>Modulo2</a></li>"
                + "<li><a href=\'modulo3'>Modulo3</a></li>"
                + "</ul>"
                + "</div>";
        return navbar;
    }
}
