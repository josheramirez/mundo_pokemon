<%@page import="Modelos.Medalla"%>
<%@page import="Modelos.Pokedex"%>
<%@page import="Modelos.Pokemon"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelos.Usuario"%>
<%@page import="Modelos.Personaje"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	HttpSession HS = request.getSession();
        // datos de usuario
	Usuario usuario = (Usuario)HS.getAttribute("usuario");
        // datos personaje
        Personaje personaje= (Personaje)HS.getAttribute("personaje");
        // lista de pokemones del personaje
        ArrayList<Pokedex> lista_pokemon=(ArrayList<Pokedex>)request.getAttribute("lista_pokemon");
        // lista de medallas
        ArrayList<Medalla> lista_medallas=(ArrayList<Medalla>)request.getAttribute("lista_medallas");
        // verificacion de usuario valido, si no redirije al inicio
        if(usuario == null){
	response.sendRedirect("index.jsp");
	}
        
        // medallas
        
        //
        HS.setAttribute("lista_pokemon",lista_pokemon);
        
        
out.println(usuario.id);
out.println(personaje.id);
out.println(lista_pokemon.size());

// mock
personaje.nombre="joshe_poke";
personaje.nivel=23;
personaje.experiencia=12;
personaje.pokemonedas=3020;

String genero = "Hombr";
String raza = "Latin";
String equipo = "Zaf";
String colorOjos = "Rojo";
String colorPelo = "Rojo";

usuario.nombre="JOSE RAMIREZ";

// fin mock
  

// PERSONAJE    
	String nombre_personaje = personaje.nombre;
	int Nivel = personaje.nivel;
	int Exp = personaje.experiencia;
	int Pokemonedas = personaje.pokemonedas;
        /*
        String genero = (String)request.getAttribute("genero");
	String raza = (String)request.getAttribute("raza");
	String equipo = (String)request.getAttribute("equipo");
	String colorOjos = (String)request.getAttribute("color_ojos");
	String colorPelo = (String)request.getAttribute("color_pelo");
        */
        HS.setAttribute("usuario", usuario);
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Perfil</title>
        <link href="css/pagina.css" rel="stylesheet" type="text/css"/>
		<link href="css/JP.css" rel="stylesheet" type="text/css"/>
    </head>
    <body bgcolor="#f0f0fd">
		<div>
			
		</div>
        <div align="left">
		<div class='Banner'>
			<div>
				<a href="#">
					<img class='BannerIMG' src="https://fontmeme.com/permalink/190125/cdd3d9c68e05fca2e7c519691f72f3cd.png" alt="Perfil">
				</a>
			</div>
			<div id='nUsuario'>
				<%= usuario.nombre%>
			</div>
		</div>
        </div>
        <div id="personaje" align="left" style="background-color:skyblue; width:25%;">
            <div align="center">
            <h2><%=nombre_personaje%></h2><br>
                <%
                  out.print("<div class='charDiv'><img class='charPhoto' src='pic/"+genero+".png'></div>");
                  out.print("<div class='charDiv'><img class='charPhoto' src='pic/"+genero+"/raza/"+raza+".png'></div>");
                  out.print("<div class='charDiv'><img class='charPhoto' src='pic/"+genero+"/equipo/"+equipo+".png'></div>");
                  out.print("<div class='charDiv'><img class='charPhoto' src='pic/"+genero+"/colorOjos/"+colorOjos+".png'></div>");
                  out.print("<div class='charDiv'><img class='charPhoto' src='pic/"+genero+"/colorPelo/"+colorPelo+".png'></div>");
                %>
		<div id='charStats'>
			<div>Nivel: <%=Nivel%></div>
			<div>Exp: <%=Exp%></div>
			<div>Pokemonedas: <%=Pokemonedas%></div>
		</div>
            </div>
        </div>
        <div id="pokemones" align="center" style="background-color:greenyellow; width:25%;">
		<!--<div style="height:10%"></div>-->
            <h2>Pokemones</h2>
        <div style="height:5%"></div>
		<%
                    
                    
                    
		out.print("<div>");               
                int index = 0;
                for (Pokedex pokemon : lista_pokemon) {
                   if(index%3==0){out.print("<div></div>");}
                   out.print("<img src='"+pokemon.imagen+"' width='60' height='60' border='2px' class='poke'>");
                   index++;
                }
                /*
		out.print("<img src='"+pkmn1+"' width='60' height='60' border='2px' class='poke'>");
		out.print("<img src='"+pkmn2+"' width='60' height='60' border='2px' class='poke'>");
		out.print("<img src='"+pkmn3+"' width='60' height='60' border='2px' class='poke'>");
		out.print("<div></div>");
                out.print("<img src='"+pkmn4+"' width='60' height='60' border='2px' class='poke'>");
		out.print("<img src='"+pkmn5+"' width='60' height='60' border='2px' class='poke'>");
		out.print("<img src='"+pkmn6+"' width='60' height='60' border='2px' class='poke'>");
                */
		out.print("</div>");
		%>
        <!--<div style="height:10%"></div>-->
        <h2>Medallas</h2>
			<div>
			<%
                                for (Medalla medalla : lista_medallas) {
                                    out.print("<img src='"+medalla.imagen+"' width='60' height='60'>");
                                }
                                
   
                                /*
				if(Medalla1){
					out.print("<img src='pic/medalla1.png' width='60' height='60'>");
				}
				else{
					out.print("<img src='pic/medalNotch.png' width='60' height='60'>");
				}
				
				if(Medalla2){
					out.print("<img src='pic/medalla2.png' width='60' height='60'>");
				}
				else{
					out.print("<img src='pic/medalNotch.png' width='60' height='60'>");
				}
				
				if(Medalla3){
					out.print("<img src='pic/medalla3.png' width='60' height='60'>");
				}
				else{
					out.print("<img src='pic/medalNotch.png' width='60' height='60'>");
				}
                                */
			%>
			</div>
		</div>
        <div align="center" id="opciones">
			<a href="Cerrar">
				<img src="https://fontmeme.com/permalink/190125/78758a24caa3460432d012965af22750.png" alt="Salir" class='profileButtons'>
			</a>
			<a href="preparar">
				<img src="https://fontmeme.com/permalink/190125/b491790f3625bbb0847e75f553cfdca1.png" alt="Jugar" class='profileButtons'>
			</a>
			<a href="servletPC">
				<img src="https://fontmeme.com/permalink/190204/f8e9a16ac025cc70790abd651b7594df.png" alt="PC" class='profileButtons'>
			</a>
			<a href="pokedex.jsp">
				<img src="https://fontmeme.com/permalink/190206/7ab1e18883d333af7aa22de5d961caed.png" alt="Pokédex" class='profileButtons'>
			</a>
			<a href="Bazar.jsp">
				<img src="https://fontmeme.com/permalink/190206/e1cd2ee429f5411b181884a7d4caba36.png" alt="Bazar" class='profileButtons'>
			</a>
			<a href="configuracion.jsp">
				<img src="https://fontmeme.com/permalink/190125/daf6d4535e123fe2c82fdf5d4b1bfafc.png" alt="Configuración" class='profileButtons'>
			</a>
        </div>
    </body>
</html>