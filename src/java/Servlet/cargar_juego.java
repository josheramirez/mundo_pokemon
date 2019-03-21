/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Modelos.Personaje;
import Modelos.Pokedex;
import Modelos.Pokemon;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
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
public class cargar_juego extends HttpServlet {

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
        Personaje personaje_usuario=(Personaje)HS.getAttribute("personaje");
        Pokedex pokemon_usuario_sesion =(Pokedex)HS.getAttribute("pokemon_usuario");
        out.println(pokemon_usuario_sesion.nombre+"-");
        out.println(personaje_usuario.id);
        String[] ataques_usuario=pokemon_usuario_sesion.getAtaques();
        out.println(ataques_usuario[0]);
        out.println(ataques_usuario[1]);
        out.println(ataques_usuario[2]);
        out.println(ataques_usuario[3]+"----");
        
         // LLENADO DE EQUIPO POKEMON (aun no implementado)
        ArrayList<Pokedex> ataques_oponente = new ArrayList<Pokedex>();
        
        // LLENADO POKEMON USUARIO (datos estaticos de prueba)
        Pokedex pokemon_usuario=new Pokedex();
        pokemon_usuario.id=pokemon_usuario_sesion.id;
        pokemon_usuario.nombre=pokemon_usuario_sesion.nombre;
        pokemon_usuario.salud=pokemon_usuario_sesion.salud;
        pokemon_usuario.nivel=pokemon_usuario_sesion.nivel;
        pokemon_usuario.imagen=pokemon_usuario_sesion.gif_back;
        pokemon_usuario.ataque_1=ataques_usuario[0];
        pokemon_usuario.ataque_2=ataques_usuario[1];
        pokemon_usuario.ataque_3=ataques_usuario[2];
        pokemon_usuario.ataque_4=ataques_usuario[3];
        
        out.println(pokemon_usuario.id+",");
        out.println(pokemon_usuario.nombre+",");
        out.println(pokemon_usuario.salud+",");
        out.println(pokemon_usuario.nivel+",");
        out.println(pokemon_usuario.imagen+",");
        out.println(pokemon_usuario.ataque_1+",");
        out.println(pokemon_usuario.ataque_2+",");
        out.println(pokemon_usuario.ataque_3+",");
        out.println(pokemon_usuario.ataque_4);
        
        // LLENADO POKEMON OPONENTE (datos estaticos de prueba)
        Pokedex pokemon_oponente=new Pokedex();
        pokemon_oponente.nombre="Charizard";
        pokemon_oponente.salud=90;
        pokemon_oponente.nivel=35;
        pokemon_oponente.imagen="http://img.pokemondb.net/sprites/black-white/anim/normal/charizard.gif";
        pokemon_oponente.ataque_1="FUEGO fatuo";
        pokemon_oponente.ataque_2="CASTIGO";
        pokemon_oponente.ataque_3="EMBESTIDA";
        pokemon_oponente.ataque_4="TANQUE";
        
        
        int usuario_HP = pokemon_usuario.salud;
        int oponente_HP =  pokemon_oponente.salud;
        int turno_usuario = 0;
        
        
        String nombre_ataque=null;
        
        
                // RESPUESTA DINAMICA
        try {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
                out.println("<title>Servlet carga_javascript</title>");
                out.println("<style>");
                    RequestDispatcher rd = request.getRequestDispatcher("/css/pokemon.css");
                    rd.include(request, response);
                out.println("</style>"); 
            
                out.println("<script>");   
                    RequestDispatcher rd_javascript = request.getRequestDispatcher("/js/pokemon.js");
                    rd_javascript.include(request, response);
               
                    out.println("var userHP ="+usuario_HP+";");
                    out.println("var opHP ="+oponente_HP+";");
                    out.println("playerMove ="+turno_usuario+";");
                    
                    out.println("var personaje_usuario="+personaje_usuario.id+";");
                    out.println("var personaje_oponente='vacio';");
                    out.println("var pokemon_usuario="+pokemon_usuario.id+";");
                    out.println("var pokemon_oponente='vacio'");
                    
                    out.println("var ganador_usuario;");
                    out.println("var ganador_pokemon;");
                    

                                    // CREACION DINAMICA DE ATAQUES
                    for(String ataque:ataques_usuario){
                        nombre_ataque= ataque.replace(" ","_");
                        out.println("function "+nombre_ataque+"()");
                        out.println("{");
                        out.println("  if(playerMove == 0 && userHP != 0) {");
                        out.println("      var miss = Math.floor((Math.random() * 10) + 1);");
                        out.println("      if(miss == 1) {");
                        out.println("          document.getElementById('message').innerHTML = \""+pokemon_usuario.nombre+" fallo!\";");
                        out.println("      }");
                        out.println("      else {");
                        out.println("          document.getElementById('message').innerHTML = \" "+pokemon_usuario.nombre+" usa "+ataque+" \";");
                        out.println("          var critical = Math.floor((Math.random() * 10) + 1);");
                        out.println("          if(critical == 4){");
                        out.println("              for(var x = 0; x < 2; x++){");
                        out.println("                  opHP = opHP - 30;");
                        out.println("              }");
                        out.println("          }");
                        out.println("          else{");
                        out.println("              opHP = opHP - 30;");
                        out.println("          }");
                        out.println("          if(opHP < 0){ opHP = 0}");
                        out.println("          document.getElementById('apHP').innerHTML = opHP;");
                        out.println("          if(opHP == 0){");
                        out.println("              document.getElementById('message').innerHTML = \" EL CONTRINCANTE COPERO! \"");
                        out.println("              ganador();");
                        out.println("          }");
                        out.println("      }");

                        // cambiar valor a 1 para hacer turnos
                        out.println("      playerMove = 1;");

                        out.println("  }");
                        out.println("  console.log(playerMove);");
                        out.println("}");  
                    }
                    
                     
                    
                    out.println("opAttacks = [flameThrower, dragonClaw, ember, growl];");
                    
                    // FUNCION PARA TURNOS DE JUEGO
                    out.println("function compPokemon() {");
                    out.println("if(playerMove == 1 && opHP != 0) {");
                    out.println("var move = Math.floor((Math.random() * 4));");
                    out.println("console.log('movimiento '+move)");
                    out.println("opAttacks[move]();");
                    out.println("playerMove = 0;");
                    out.println("}");
                    out.println("}");
                    
                    // FUNCION PARA CALCULAR GANADOR CREAR BOTON DE SALIDA
                    out.println("function ganador() {");
                    out.println("document.getElementById('ganador_usuario').value=personaje_usuario;");
                    out.println("document.getElementById('ganador_pokemon').value=pokemon_usuario;");
                   
                    out.println("console.log(document.getElementById('ganador_usuario').value);");
                    out.println("console.log(document.getElementById('ganador_pokemon').value);");
                    
                    //out.println("document.getElementById('btn_continuar').removeAttribute('onclick');");
                    out.println("document.getElementById('btn_continuar').setAttribute('onclick','terminar()');");
                    out.println("document.getElementById('btn_continuar').innerText='Salir del Combate';");
                    out.println("}");
                    
                    
                    // FUNCION REDIRIGIR
                    out.println("function terminar() {");
                        out.println("alert('termino el combate')");
                        out.println("document.getElementById('btn_continuar').disabled = true;");
                        out.println("document.getElementById(\"form_oculto\").submit();");
                             
                    out.println("}");
            
                    
                                out.println("var userHP ="+usuario_HP+";");
                                out.println("var opHP ="+oponente_HP+";");
           
                out.println("</script>");     
            out.println("</head>");
            
            
            out.println("<body>");
            


            out.println("<div class=\"actions\">");
                for(String ataque:ataques_usuario){
                   nombre_ataque= ataque.replace(" ","_");
                   out.println("<button onclick =\""+nombre_ataque+"()\">"+ataque+"</button>");
                }
                out.println("<button onclick =alerta()>alerta</button>");
            out.println("</div>");

                
                // datos de prueba
                

                
                
                request.setAttribute("nombre_pokemon_usr", pokemon_usuario.nombre);
                request.setAttribute("nombre_pokemon_op", pokemon_oponente.nombre);
                request.setAttribute("img_usr", pokemon_usuario.imagen);
                request.setAttribute("img_op", pokemon_oponente.imagen);
                request.setAttribute("hp_usr", pokemon_usuario.salud);
                request.setAttribute("hp_op", pokemon_oponente.salud);
                request.setAttribute("level_usr", pokemon_usuario.nivel);
                request.setAttribute("level_op", pokemon_oponente.nivel);
                
                
                RequestDispatcher rd2 = request.getRequestDispatcher("arena_layout.jsp");
		rd2.include(request, response);
                
                
                // CREACION DIV BOTONES DE ATAQUE 
                out.println("<div class=\"actions\">");
                    for(String ataque:ataques_usuario){
                       nombre_ataque= ataque.replace(" ","_");
                       out.println("<button onclick =\""+nombre_ataque+"()\">"+ataque+"</button>");
                    }
                out.println("</div>");
                out.println("</div>");
                
                // FORM OCULTO QUE ENVIA DATOS DEL GANADOR A RECOMPENSA.JSP
                RequestDispatcher rd_form = request.getRequestDispatcher("form_oculto.jsp");
		rd_form.include(request, response);
         
            out.println("</body>");
            out.println("</html>");
        }
        catch(IOException e){
        
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
