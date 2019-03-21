/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Controlador.Consultas;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author WarPc
 */
public class Registro_usuario extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       PrintWriter out = response.getWriter();
         // Captura de datos.
        String Nombre=request.getParameter("nombre");
        String Contraseña=request.getParameter("pass");
        String Email=request.getParameter("email");        
        String Telefono=request.getParameter("telefono");            
        
            Consultas con = new Consultas();
            if(con.registrar(Nombre, Contraseña, Email, Telefono)){
                HttpSession objsesion=request.getSession(true);
                objsesion.setAttribute("nombre", Nombre); 
                request.getSession().removeAttribute("errorRegistro");
                response.sendRedirect("confirm_NU.jsp");
                //System.out.println("Datos ingresados correctamente. Ahora, inicie sesión.");
            }else{
               HttpSession objsesion=request.getSession(true);
               String mensaje="HAY UN ERROR EN EL REGISTRO";
               objsesion.setAttribute("errorRegistro", mensaje); 
               response.sendRedirect("errorRegistro.jsp");
               //System.out.println("Los datos ingresados son incorrectos.");
            }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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
