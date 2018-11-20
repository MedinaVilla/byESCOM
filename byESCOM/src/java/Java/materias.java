package Java;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author MedinaVilla
 */
public class materias {

    Statement s = null;
    ResultSet rs = null;
    private PreparedStatement ps = null;
    private final database db = new database();

    public ResultSet getMaterias() throws SQLException {
        db.conectar();
        String query = ("select m.idMateria, m.titulo, m.descripcion, t.tipoMateria "
                + "from materias m "
                + "inner join tipoMateria t "
                + "on m.idTipoMateria = t.idTipoMateria order by t.tipoMateria;");

        rs = db.consulta(query);

        return rs;
    }

    public ResultSet getMateriaporTitulo(String titulo) throws SQLException {
        db.conectar();

        String query = ("select * from materias where titulo=?;");

        ps = db.getC().prepareStatement(query);

        ps.setString(1, titulo);

        return ps.executeQuery();
    }

    public String imprimirCategoria(String categoria) throws SQLException {
        db.conectar();

        String publicacion;
        publicacion = "<p class='menu-label'>"
                + categoria
                + "</p>";

        return publicacion;
    }

    public String imprimirTitulo(String titulo, String descripcion) throws SQLException {
        db.conectar();

        String publicacion;
        publicacion = "<ul class='menu-list'>"
                + "<li><a onClick='showMateriaDetails"+"("+'"'+titulo+'"'+","+ '"'+descripcion+'"'+")'>" + titulo + "</a></li>"
                + "</ul>";

        return publicacion;
    }

}
