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
import Modelos.Pokemon;
import Modelos.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Hospital
 */
public class crearPokemon extends HttpServlet {

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
        
        response.setContentType("text/html;charset=UTF-8");
        HttpSession HS = request.getSession();
        
        //Usuario usuario =(Usuario)HS.getAttribute("usuario");
        //Personaje personaje =(Personaje)HS.getAttribute("personaje");
        String[] pokemons=request.getParameterValues("pokemones")[0].split(",");
        
 //Mocks
        Personaje personaje=new Personaje();
        Usuario usuario =new Usuario();
        personaje.id=2;
        usuario.id=2;
        
        HS.setAttribute("usuario",usuario);
        HS.setAttribute("personaje", personaje);
        out.println("*"+personaje.id+"*");
        out.println("*"+usuario.id+"*");
        
        out.println(pokemons[0]);
        out.println(pokemons[1]);
        out.println(pokemons[2]);
//finMocks        
       
        Consultas con=new Consultas();
        
        
        for (String pokemon : pokemons) {
            con.guardarPokemon(Integer.parseInt(pokemon),personaje.id);
            log(pokemon);
        }
        
        ArrayList<Pokedex> lista_pokemon=con.cargarPokemons(usuario.id);
        out.println(lista_pokemon.size());
        
        
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
