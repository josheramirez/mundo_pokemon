/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Controlador.Consultas;
import Modelos.Personaje;
import Modelos.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author WarPc
 */
public class Inicio_Sesion extends HttpServlet {

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
        
            String Nombre=request.getParameter("nombre");
            String Contraseña=request.getParameter("pass");
            
            Consultas con=new Consultas();
            Consultas con2=new Consultas();
            Consultas con3=new Consultas();
            
            HttpSession objsesion=request.getSession();
            Usuario usuario=con3.getUsuario(Nombre,Contraseña);
            objsesion.setAttribute("usuario",usuario); 
            
            if(con.autenticacion(Nombre, Contraseña)){                               
                //creo sesion
                
                objsesion.setAttribute("nombre", Nombre); 
                objsesion.setAttribute("pass", Contraseña);
                request.getSession().removeAttribute("error");
                Personaje personaje=con2.getPersonaje(Nombre,Contraseña);
                
                out.println(personaje.id);
                
                if(personaje.id!=0){
                    objsesion.setAttribute("personaje", personaje); 
                    //request.setAttribute("personaje", personaje);
                    //response.sendRedirect("Confirmation.jsp");
                    //request.getRequestDispatcher("Confirmation.jsp").forward(request, response);
                    response.sendRedirect("cargarUsuario");
                }else{
                    
                    out.println(usuario.id);
                    response.sendRedirect("cargar_personaje.jsp");
                    //response.sendRedirect("crearPersonaje.jsp");
                }
                
            }else{
              
               String mensaje="HAY UN ERROR EN EL INGRESO";
               objsesion.setAttribute("error", mensaje); 
               response.sendRedirect("errorLogin.jsp");
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
