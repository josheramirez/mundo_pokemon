/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Controlador.Consultas;
import Modelos.Medalla;
import Modelos.Personaje;
import Modelos.Pokedex;
import Modelos.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
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
public class cargarPerfil extends HttpServlet {

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
        
        HttpSession HS = request.getSession();
        Usuario usuario=(Usuario)HS.getAttribute("usuario");
        Personaje personaje=(Personaje)HS.getAttribute("personaje");
        
        // SIN SESION DATOS DE PRUEBA
        if(usuario==null){
        String pokemon_id="108";
        String personaje_id="2";
        usuario=new Usuario();
        usuario.id=2;
        personaje=new Personaje();
        personaje.id=2;
        HS.setAttribute("usuario", usuario);
        HS.setAttribute("personaje", personaje);
        }else{
     
        }
        
        
        Consultas con=new Consultas();
        ArrayList<Pokedex> lista_pokemon=con.cargarPokemons(usuario.id);
        
        Consultas con2=new Consultas();
        ArrayList<Medalla> lista_medallas=con2.cargarMedallas(personaje.id);
        
        request.setAttribute("lista_medallas",lista_medallas); 
        
        request.setAttribute("lista_pokemon",lista_pokemon); 
        request.getRequestDispatcher("perfil.jsp").forward(request, response);

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
