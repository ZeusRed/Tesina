package Logica;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {

    Connection con;
 private static String db="dbventas";
  private static String usuario="root";
   private static String password="Rmejia2021";
    private static String conexion="jdbc:mysql://localhost:3306/"+db;
    public Conexion() {

        try {
            Class.forName("com.mysql.jdbc.Driver");

            //con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbventas", "root", "Rmejia2021");
               con = DriverManager.getConnection(conexion,usuario,password);
            System.out.println("Conexion exitosa con la base de datos dbventas.....................................\n");
            
        } catch (Exception ex) {
            System.err.println("Error de conexion con la base de datos:_____________________________" + ex.getMessage());
        }
    }

    public Connection getConection() {
        return con;
    }
}
