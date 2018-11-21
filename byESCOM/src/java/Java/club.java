package Java;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author MedinaVilla
 */
public class club {

    Statement s = null;
    ResultSet rs = null;
    private PreparedStatement ps = null;
    private final database db = new database();

    public ResultSet getClubes() throws SQLException {
        db.conectar();
        String query = ("select c.idClub, c.nombre, c.ubicacion, p.nombreP, h.horario from club c inner join club_profesor p on c.idProfesor = p.idProfesor inner join club_horario h on c.idHorario = h.idHorario;");
        rs = db.consulta(query);
        return rs;
    }

    public String imprimirTituloClub(String idClub, String nombre, String idProfesor, String ubicacion, String idHorario) {
        db.conectar();

        String alumno;
        alumno = "<ul class='menu-list'>"
                + "<li><a onClick='showClubes" + "(" + '"' + idClub + '"' + "," + '"' + nombre + '"' + "," + '"' + idProfesor + '"' + "," + '"' + ubicacion + '"' + "," + '"' + idHorario + '"' + ")'>" + nombre + "</a></li>"
                + "</ul>";

        return alumno;

    }
}
