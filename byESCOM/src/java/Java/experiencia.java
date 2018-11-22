/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Java;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author MedinaVilla
 */
public class experiencia {

    String idExperiencia;
    Statement s = null;
    ResultSet rs = null;
    private PreparedStatement ps = null;
    private int count;
    private final database db = new database();

    public ResultSet getExperienciasEnRevision() throws SQLException {
        db.conectar();
        String query = ("select e.idExperiencia, e.nombreAlumno,e.contenido,e.fechaEnvio,t.tipoExperiencia "
                + "from experiencia e inner join tipo_experiencia t on e.tipoExperiencia= t.idTipoExperiencia where e.estado=2;");
        rs = db.consulta(query);
        return rs;
    }

    public ResultSet getAllExperiencias() throws SQLException {
        db.conectar();
        String query = "select nombreAlumno, fechaEnvio,contenido,tipoExperiencia from experiencia where estado=1;";
        rs = db.consulta(query);
        return rs;
    }

    public ResultSet getSomeExperiencias(int tipo) throws SQLException {
        db.conectar();
        String query = "select nombreAlumno, fechaEnvio,contenido,tipoExperiencia from experiencia where estado=1 and tipoExperiencia=" + tipo + ";";
        rs = db.consulta(query);
        return rs;
    }
    
    public int getCountAll() throws SQLException {
        db.conectar();
        String query = "select count(idExperiencia) from experiencia where estado=1;";
        rs= db.consulta(query);
        while(rs.next()){
            count=rs.getInt("count(idExperiencia)");
        }

        return count;
    }
    
    public int getCountSome(int tipo) throws SQLException {
        db.conectar();
        String query = "select count(idExperiencia) from experiencia where estado=1 and tipoExperiencia=" + tipo + ";";
        rs= db.consulta(query);
        while(rs.next()){
            count=rs.getInt("count(idExperiencia)");
        }

        return count;
    }

    public String imprimirNombreAlumnoExperiencia(String idExperiencia, String nombreAlumno, String contenido, String fechaEnvio, String tipoExperiencia) {
        db.conectar();

        String alumnoExp;
        alumnoExp = "<ul class='menu-list'>"
                + "<li><a onClick='showExperienciaDetails" + "(" + '"' + idExperiencia + '"' + "," + '"' + nombreAlumno + '"' + "," + '"' + contenido + '"' + "," + '"' + fechaEnvio + '"' + "," + '"' + tipoExperiencia + '"' + ")'>" + nombreAlumno + "</a></li>"
                + "</ul>";

        return alumnoExp;
    }

    public String imprimirBotonesControl() {
        db.conectar();
        String botones;
        botones = "<nav class=\"level\">"
                + "<div class=\"level-left\"></div>\n"
                + "<div class=\"level-right\">\n"
                + "<p class=\"level-item\"><a class=\"button is-danger\">Rechazar</a></p>\n"
                + "<p class=\"level-item\"><a class=\"button is-success\">Aceptar</a></p>\n"
                + "<div>\n"
                + "</nav>";
        return botones;
    }

    public void denegarExperiencia(int idExperiencia) throws SQLException {
        db.conectar();
        PreparedStatement ps;
        String query = ("delete from experiencia where idExperiencia = ?;");
        ps = db.getC().prepareStatement(query);
        ps.setInt(1, idExperiencia);
        ps.executeUpdate();
        s = db.getC().createStatement();
        db.cierraConexion();
        System.out.println("Experiencia eliminada!");

    }

    public void aceptarExperiencia(int idExperiencia) throws SQLException {
        db.conectar();
        PreparedStatement ps;
        String query = ("update experiencia set estado = 1 where idExperiencia = ?;");
        ps = db.getC().prepareStatement(query);
        ps.setInt(1, idExperiencia);
        ps.executeUpdate();
        s = db.getC().createStatement();
        db.cierraConexion();
        System.out.println("Experiencia aceptada!");

    }
}
