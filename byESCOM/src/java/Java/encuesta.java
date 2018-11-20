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
public class encuesta {

    Statement s = null;
    ResultSet rs = null;
    private final database db = new database();
    PreparedStatement ps = null;

    public void registrarEncuesta(String r1, String r2, String r3, String r4, String r5) throws SQLException {
        db.conectar();
        PreparedStatement ps;

        String insertUsuario = ("insert into estadistica(pregunta1,pregunta2,pregunta3,pregunta4,pregunta5)values(?,?,?,?,?);");

        ps = db.getC().prepareStatement(insertUsuario);
        ps.setString(1, r1);
        ps.setString(2, r2);
        ps.setString(3, r3);
        ps.setString(4, r4);
        ps.setString(5, r5);
        ps.executeUpdate();

        s = db.getC().createStatement();
        db.cierraConexion();
    }

    public ResultSet getCountEncuestasRealizadas() throws SQLException {
        db.conectar();
        String query = ("select COUNT(idEstadistica) from estadistica;");
        rs = db.consulta(query);
        return rs;
    }

    public ResultSet getAnswerPregunta1() throws SQLException {
        db.conectar();
       // String query = ("select COUNT(idEstadistica) from estadistica;");
       // rs = db.consulta(query);
        return rs;
    }

    public ResultSet getAnswerPregunta2() throws SQLException {
        db.conectar();
      //  String query = ("select COUNT(idEstadistica) from estadistica;");
      //  rs = db.consulta(query);
        return rs;
    }

    public ResultSet getAnswerPregunta3() throws SQLException {
        db.conectar();
      //  String query = ("select COUNT(idEstadistica) from estadistica;");
      //  rs = db.consulta(query);
        return rs;
    }

    public ResultSet getAnswerPregunta4() throws SQLException {
        db.conectar();
       // String query = ("select COUNT(idEstadistica) from estadistica;");
       // rs = db.consulta(query);
        return rs;
    }

    public ResultSet getAnswerPregunta5() throws SQLException {
        db.conectar();
       // String query = ("select COUNT(idEstadistica) from estadistica;");
       // rs = db.consulta(query);
        return rs;
    }
}
