/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Controlador.Consultas;
import Modelos.Usuario;
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
public class crearPersonaje extends HttpServlet {

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
                
                // capturo los datos enviados desde crearPersonaje.jsp

                HttpSession HS = request.getSession();
                Usuario usuario= (Usuario)HS.getAttribute("usuario");
                //out.println(usuario.id);
		int usuario_id =(int)usuario.id;
		String nombre = request.getParameter("nombre");
                String Genero = request.getParameter("Genero");
                String Raza = request.getParameter("Raza");
                String Equipo = request.getParameter("Equipo");
		String COjos = request.getParameter("COjos");
		String CPelo = request.getParameter("CPelo");

		Consultas C = new Consultas();
                
                // creo al personaje en la bd
               if(C.crearPersonaje(nombre,usuario_id,Genero,Raza,Equipo,COjos,CPelo)){
                    
                    // redirijo a cargarUsuario
                    response.sendRedirect("cargarUsuario");
                }
                else{
                    response.sendRedirect("crearPersonaje.jsp");
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
