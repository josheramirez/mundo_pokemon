/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Controlador.Consultas;
import Modelos.Personaje;
import Modelos.Pokemon;
import Modelos.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author WarPc
 */
public class cargarUsuario extends HttpServlet {

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
        HttpSession HS = request.getSession();
        Usuario usuario =(Usuario)HS.getAttribute("usuario");

        /*
        //mocks
        Usuario usuario=new Usuario();
        usuario.id=2;
        usuario.nombre="joshe ramirez";
        HS.setAttribute("usuario",usuario);
        //
        */
        
        //out.println(usuario.id);
                
           
            Consultas C = new Consultas();
            
            if(usuario.id==0){
            response.sendRedirect("index.jsp");
            }
            
            Personaje personaje=C.cargarPersonaje(usuario.id);
            HS.setAttribute("personaje", personaje); 
            //ArrayList<Pokemon> lista_pokemon=C.cargarPokemons(usuario.id);
          
  
            //request.setAttribute("personaje", personaje); 
        
        /*
        //mock
        personaje.genero="hombre";
        //
        */
            
            
            request.getRequestDispatcher("prueba").forward(request, response);
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
