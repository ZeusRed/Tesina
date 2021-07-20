/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

import Modelo.CatTipoUsuario;
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
public  class GetCatTipoUsuario extends Conexion {

    public List<CatTipoUsuario> GetListCatTipoUsuario() {
        List<CatTipoUsuario> lstCatUsuario = new ArrayList<>();
        try {
            Connection con = getConection();
            String query = "select * from cattipousuario";
            PreparedStatement st = con.prepareStatement(query);

            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                CatTipoUsuario ctu = new CatTipoUsuario();
                ctu.setIdcattipoUsuario(rs.getInt(1));
                ctu.setDescripcion(rs.getString(2));
                lstCatUsuario.add(ctu);
            }
            System.out.println("Registros obtenidos correctamente");
            con.close();

        } catch (Exception E) {
            System.out.println("Error:" + E.getMessage());
            return null;
        }
        return lstCatUsuario;

    }
}
