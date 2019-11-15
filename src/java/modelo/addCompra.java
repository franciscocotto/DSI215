/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import conexion.ConexionJDBC;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.SQLException;



public class addCompra {
       //metodo para agregar registros en la base de datos  
       public void agrega(compras compra){
           //conexion a la base de datos
            ConexionJDBC con = new ConexionJDBC();    
            con.conectar();
            //INSERT SQL
            String sql = "INSERT INTO public.\"compras\" (nombre,descripcion,cantidad,precio,forma_de_pago,estado,abono,total_deuda)"+"VALUES(?,?,?,?,?,?,?,?)";
            String status = "";
            
           //PREPARANDO SCRIPT PARA SUBIDA
            try(PreparedStatement pst = con.getConexion().prepareStatement(sql)){
                pst.setString(1, compra.nombre);
                pst.setString(2, compra.descripcion);
                pst.setInt(3, compra.cantidad);
                pst.setDouble(4, compra.precio);
                pst.setInt(5, compra.pago); 
                pst.setInt(6, compra.pago);
                if(compra.pago==1){
                double value = 0.0;
                 pst.setDouble(7, value);
                 pst.setDouble(8, value);               
                }else{
                double value = 0.0;
                 pst.setDouble(7, value);
                 pst.setDouble(8, compra.precio);
                    
                    }
                int i = pst.executeUpdate();
                // ENVIA MENSAJE DEPENDIENDO SI DE GUARDO O NO
                if (i != 0) {
                    status = "Guardado";
                } else {
                    status = "No Guardado";
                 }
                con.conectar().close();
 
            } catch (SQLException ex) {//captura excepciones del codigo si hubo error
                ex.printStackTrace();         
        }
            
            
       }
       //metodo para editar  registros en la base de datos
         public void edita(compras compra){
            //conexion a la base de datos
            ConexionJDBC con = new ConexionJDBC();    
            con.conectar();
            //UPDATE SQL
            String sql = "UPDATE public.\"compras\"\n" +
            "SET  nombre=?, descripcion=?, cantidad=?, precio=?, forma_de_pago=?, estado=?, abono=?, total_deuda=?\n" +
            "WHERE  id_compras="+compra.codigo+";";
            String status = "";
            try(PreparedStatement pst = con.getConexion().prepareStatement(sql)){
                pst.setString(1, compra.nombre);
                pst.setString(2, compra.descripcion);
                pst.setInt(3, compra.cantidad);
                pst.setDouble(4, compra.precio);
                pst.setInt(5, compra.pago);   
                pst.setInt(6, compra.pago);
                 if(compra.pago==1){
                double value = 0.0;
                 pst.setDouble(7, value);
                 pst.setDouble(8, value);               
                }else{
                double value = 0.0;
                 pst.setDouble(7, value);
                 pst.setDouble(8, compra.precio);
                    
                    }
                int i = pst.executeUpdate();
                 // ENVIA MENSAJE DEPENDIENDO SI DE EDITO O NO
                 if (i != 0) {
                    status = "Editado";
                } else {
                    status = "No Editado";
                 }
                con.conectar().close();
 
            } catch (SQLException ex) {//captura excepciones del codigo si hubo error
                ex.printStackTrace();         
        }
            
            
            
       }
         
         //metodo para editar  deuda
         public void edita_deuda(compras compra){
            //conexion a la base de datos
            ConexionJDBC con = new ConexionJDBC();    
            con.conectar();
            //UPDATE SQL
            String sql = "UPDATE public.\"compras\"\n" +
            "SET  forma_de_pago=?, estado=?, abono=?, total_deuda=?\n" +
            "WHERE  id_compras="+compra.codigo+";";
            String status = "";
            try(PreparedStatement pst = con.getConexion().prepareStatement(sql)){
               double k = (compra.total - compra.descuento);
               Double j = compra.abono;
               if(k == 0 || k < 0){
                 pst.setDouble(1, 1);
                 pst.setDouble(2, 1);
                 pst.setDouble(3, compra.abono);
                 pst.setDouble(4, 0);                         
               }
               if(k == 0 || k < 0 && j > compra.precio ){
                 pst.setDouble(1, 1);
                 pst.setDouble(2, 1);
                 pst.setDouble(3, compra.precio);
                 pst.setDouble(4, 0);                         
               }              
               else{
               pst.setDouble(1, 2);
               pst.setDouble(2, 2);
               pst.setDouble(3, compra.abono);
               pst.setDouble(4, k);
                }               
                int i = pst.executeUpdate();
                 // ENVIA MENSAJE DEPENDIENDO SI DE EDITO O NO
                 if (i != 0) {
                    status = "Editado";
                } else {
                    status = "No Editado";
                 }
                con.conectar().close();
 
            } catch (SQLException ex) {//captura excepciones del codigo si hubo error
                ex.printStackTrace();         
        }
            
            
            
       }    
         
      // metodo para eliminar  registros en la base de datos 
       public void elimina(compras compra) throws SQLException{
           //conexion a base de datos 
            ConexionJDBC con = new ConexionJDBC();    
            con.conectar();
            //prepara subida de delete 
            Statement stmt =  con.conectar().createStatement();
            stmt.execute( "DELETE FROM public.\"compras\"\n" +
           "WHERE  id_compras="+compra.codigo+";");             
            
       }

        

   
 }

    
    

