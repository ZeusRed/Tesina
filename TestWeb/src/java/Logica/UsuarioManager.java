 
 
package Logica;

import Modelo.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Acer ES 15
 */
public class UsuarioManager extends Conexion {

    public List<Usuario> GetUsuarios() {
        List<Usuario> usuarios = new ArrayList<Usuario>();
        try {
            Connection con = getConection();
            String query = "select * from usuario";
            PreparedStatement st = con.prepareStatement(query);
            System.out.println("Registros obtenidos correctamente");
            con.close();
            
        } catch (Exception E) {
               System.out.println("Error:"+E.getMessage());
            return null;
        }
        return usuarios;

    }

    public Usuario GetUsuario(int idUsuario) {
        Usuario u = new Usuario();
        try {

            Connection con = getConection();
            String query = "select * from usuario where idUsuario=?" + idUsuario;
            PreparedStatement st = con.prepareStatement(query);
            st.setInt(1, idUsuario);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {

            } else {

            }
            System.out.println("Registro obtenido correctamente");
            con.close();

        } catch (Exception E) {
               System.out.println("Error:"+E.getMessage());
            return null; 
        }
        return u;

    }

    public int RegistraUsuario(Usuario u) {
        int estatus = 0;
        try {
            Connection con = getConection();
            String query = "insert into usuario(Nombre,ApPaterno,ApMaterno,correo,password,idcattipousuario)" + "values(?,?,?,?,?,?)";
            PreparedStatement st = con.prepareStatement(query);

            st.setString(1, u.getNombre());
            st.setString(2, u.getApPaterno());
            st.setString(3, u.getApMaterno());
            st.setString(4, u.getCorreo());
            st.setString(5, u.getPassword());
            st.setInt(6, u.getIdcattipousuario());

            estatus = st.executeUpdate();
            System.out.println("Registrado correctamente");
            con.close();
            return estatus;

        } catch (Exception E) {
            System.out.println("Error:"+E.getMessage());
            return 0;
        }
    }
}
