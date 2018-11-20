package Java;

import java.sql.*;

/**
 *
 * @author MedinaVilla
 */
public class usuario {

    private String boleta;
    private String nombre;
    private String contrasenia;

    Statement s = null;
    ResultSet rs = null;

    private database db = new database();
    PreparedStatement ps = null;

    public usuario(){}
    public usuario(String boleta, String nombre, String password) {
        this.boleta = boleta;
        this.nombre = nombre;
        this.contrasenia = password;

    }

    public void registrarUsuario() throws SQLException {
        db.conectar();
        PreparedStatement ps;

        String insertUsuario = ("insert into usuario(boleta, nombre, contrasenia, idTipoUsuario) values("
                + "?, " 
                + "?, "
                + "?, " 
                + "?" 
                + ");");

        ps = db.getC().prepareStatement(insertUsuario);
        ps.setString(1, this.getBoleta());
        ps.setString(2, this.getNombreUsuario());
        ps.setString(3, this.getPassword());
        ps.setString(4, "1");
        ps.executeUpdate();

        s = db.getC().createStatement();
        db.cierraConexion();
    }

    public boolean iniciarSesion(String nombreUsuario, String password) throws SQLException {
        ResultSet rsIniciarSesion;
        boolean userExist = false;
        db.conectar();

        String queryBuscar = ("select * from usuario where nombreUsuario = ? and contrasenia = ?;");

        PreparedStatement psIniciarSesion = db.getC().prepareStatement(queryBuscar);

        psIniciarSesion.setString(1, nombreUsuario);
        psIniciarSesion.setString(2, password);
        rsIniciarSesion = psIniciarSesion.executeQuery();

        if(rsIniciarSesion.next()) {
            userExist = true;
        }
        return userExist;
    }

    public ResultSet getUsuarioPorID(String idAlumno) throws SQLException {
        String query = "select * from usuario "+ "where nombreUsuario = ?;";
        db.conectar();
        PreparedStatement psQueryPerfil = db.getC().prepareStatement(query);
        psQueryPerfil.setString(1, idAlumno);
        return psQueryPerfil.executeQuery();
    }

    public String getBoleta() {
        return boleta;
    }

     public String getNombreUsuario() {
        return this.nombre;
    }

    public String getPassword() {
        return this.contrasenia;
    }

}
