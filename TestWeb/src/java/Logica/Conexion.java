package Logica;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {

    Connection con;

    public Conexion() {

        try {
            Class.forName("com.mysql.jdbc.Driver");

            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbventas", "root", "Rmejia2021");
            System.out.println("Conexion exitosa con la base de datos dbventas.....................................\n");
            
        } catch (Exception ex) {
            System.err.println("Error de conexion con la base de datos:" + ex.getMessage());
        }
    }

    public Connection getConection() {
        return con;
    }
}
