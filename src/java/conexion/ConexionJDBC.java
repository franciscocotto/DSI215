package conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;



public class ConexionJDBC {
    //variables de conexion
    Connection conexion = null;
    //nombre base de datos
    String db= "vision";
    String host = "localhost";
    //puerto por defecto
    String port = "5432";
    //usuario
    String user  = "postgres";
    //variable de password cambiar si en el postgres se tiene otro password sino no conectara
    String pass = "admin";
    
    //driver
    String  driverDb = "org.postgresql.Driver";
    String url="jdbc:postgresql://" + host + ":" + port + "/" +db;
    
    //metodo para conectar a la base de datos
    public Connection conectar(){
        try{
            Class.forName(driverDb);
             conexion = DriverManager.getConnection(url, user, pass);
             if(!conexion.isClosed()){
                 //si se conecto muestra mensaje
                 System.out.println("Exito Conexion");               
             }
             return conexion;
        } catch (ClassNotFoundException | SQLException ex){ //si no se conecto muestra captura exepcion
            Logger.getLogger(ConexionJDBC.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        } 
        
    }
    //metodo getter usado en el sistema de conexion
    public Connection getConexion(){
        return conexion;
    }
    
}

