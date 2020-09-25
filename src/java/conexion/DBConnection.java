/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conexion;
import java.sql.Connection;
import java.sql.DriverManager;


public class DBConnection {

public static Connection createConnection()
{
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
try
{
try
{
Class.forName(driverDb);
}
catch (ClassNotFoundException e)
{
e.printStackTrace();
}
conexion = DriverManager.getConnection(url, user, pass);
System.out.println("Post establishing a DB connection - "+ conexion);
}
catch (Exception e)
{
e.printStackTrace();
}
 
return conexion;
}
}
