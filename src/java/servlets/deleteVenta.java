/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Angel
 */
@WebServlet(name = "deleteVenta", urlPatterns = {"/deleteVenta"})
public class deleteVenta extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //capturo datos del formulario de alerta para eliminar solo tomamos el codigo pues con 
        //eso de hace la consulta
           String Id = request.getParameter("codigo");
           //creando constructor
             modelo.compras compra = new modelo.compras();
             compra.setCodigo(Integer.parseInt(Id));//se cambia el tipo de variable por int desde string
             //objeto para borrar cliente
            modelo.addCompra borrarCompra = new modelo.addCompra();
        try {
            borrarCompra.elimina(compra);//envia objeto a addClientes.
        } catch (SQLException ex) {//captura error de existir
            Logger.getLogger(deleteVenta.class.getName()).log(Level.SEVERE, null, ex);
        }
            response.sendRedirect("ventas");//se redirecciona al index una vez terminado el eliminado de registros
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
