package Java;

/**
 *
 * @author MedinaVilla
 */
public class footer {

    public String showFooter() {

        String footer;

        footer = "<footer class='footer'>"
                + "<div class='level'>"
                + "<div class='level-left'>"
                + "<div class='columns'>"
                + "<div class='column'>Materias"
                + "<div><a href='./materias'>Materias</a></div>"
                + "</div>"
                + "<div class='column'>Experiencias"
                + "<div><a href='./experiences'>Catálogo de experiencias</a></div>"
                + "<div><a href='./enviarExperiencia'>Envío de experiencias</a></div>"
                + "</div>"
                + "<div class='column'>ESCOM"
                + "<div><a href='./infoESCOM'>Información de ESCOM</a></div>"
                + "<div><a href='./clubes'>Clubes</a></div>"
                + "</div>"
                + "<div class='column'>Info. del Sistema"
                + "<div><a href='./ayuda'>Ayuda</a></div>"
                + "<div><a href='./acercaDe'>Acerca de</a></div>"
                + "<div><a href='./reportarError'>Reporte de errores</a></div>"
                + "<div><a href='./encuesta'>Encuesta</a></div>"
                + "</div>"
                + "</div>"
                + "</div>"
                + "<div class='level-right'>"
                + "<div class='container' style='padding-right:50px;'>"
                + "<p class='level-item'><strong>Contáctanos</strong></p>"
                + "<div class='level-item'>Teléfono: 01 55 5729 6000 </div>"
                + "<div class='level-item'>Sitio web de ESCOM: http://www.escom.ipn.mx/</div>"
                + "<div class='level-item'>Pregúntanos: pit.escom@gmail.com</div>"
                + "</div>"
                + "</div>"
                + "</div>";
        return footer;
    }
}
