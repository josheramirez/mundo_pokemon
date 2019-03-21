<%-- 
    Document   : Preparación
    Created on : 08-02-2019, 19:18:04
    Author     : Mazamo Dafter Dark
--%>

<%@page import="Modelos.Pokedex"%>
<%@page import="Modelos.Personaje"%>
<%@page import="Modelos.Usuario"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Preparación</title>
        <link href="css/JP.css" rel="stylesheet" type="text/css"/>
		<link href="css/pagina.css" rel="stylesheet" type="text/css"/>
    </head>
    <body bgcolor="#f0f0fd">
	<%
	HttpSession HS = request.getSession();
	Usuario usuario = (Usuario)HS.getAttribute("usuario");
        out.println(usuario.nombre);
        
        Personaje personaje = (Personaje)HS.getAttribute("personaje");
        out.println(personaje.id);
        ArrayList<Pokedex> lista_pokemon=(ArrayList<Pokedex>)HS.getAttribute("lista_pokemon");
        
	if(usuario == null){
	response.sendRedirect("index.jsp");
        }
        
	int aux = 1;
	int x = 6;
	int y = 1;
	%>
	<div class="Banner">
		<a href='cargarUsuario'>
			<img class="BannerIMG" src="https://fontmeme.com/permalink/190204/d47185544d1fa348a14808f6c977dcbf.png" alt='Volver'>
		</a>
                <!-- Para algún futuro no tan cercano
			<img class="BannerIMG" src="https://fontmeme.com/permalink/190214/2dfd11517c9e22bb7011e8974ef834bf.png" alt='Volver'>
			<img class="BannerIMG" src="https://fontmeme.com/permalink/190214/6aa59d624ffc72141aa4390c866d6a35.png" alt='Volver'>
			<img class="BannerIMG" src="https://fontmeme.com/permalink/190214/11de0412e027d09020816adf4f9e8d03.png" alt='Volver'>
		-->
		<div id='nUsuario'>
			<%= usuario.nombre %>
		</div>
	</div>
	<div id="prepTextBox">
		<p>Elige un pokémon para jugar</p>
	</div>
    <div id="prepPKMN">
        <%
        int i=0;
        for (Pokedex pokemon: lista_pokemon) {
            %>
			<div align="center" class="prepIMGcont" style="left:<%= x%>%;top:<%= y%>%">
				<img id="Img<%= i%>" class="ImgPokPeq" src="<%= pokemon.imagen %>" onclick="clickPKMN(<%= i%>)">
				<div id="Nombre<%= i%>"><%= pokemon.nombre%></div>
				<div id="Apodo<%= i%>"></div>
				<div id="ID<%= i%>" class="idPokPC"><%=pokemon.id%></div>
			</div>
            <%
			if(x == 72){
				x = -27;
			}
			if(x == -27){
				y += 50;
			}
			x += 33;
			aux++;
                        i++;
		}
		while(aux <= 6){
			%>
			<div class='prepIMGcont' style="left: <%= x%>%; top: <%= y%>%">
				<a href="servletPC">
				<img class='ImgPokPeq' src='pic/PKball.png'>
				</a>
			</div>
			<%
			if(x == 66){
				x = -33;
			}
			if(x == -33){
				y += 50;
			}
			x += 33;
			aux++;
            }
        %>
    </div>
	<div id="prepSelectPKMN">
		<img id="prepImgGra" src="pic/PKball.png" class="ImgSelect">
	</div>
    <div id="prepJugarModo">
		<form action="juego" method="post">
			<input name="pokemonID" id="prepIDpkmn" type="hidden">
			<input id="Jugar" type="submit" value="Jugar" class="prepButton">
		</form>
    </div>
	<script src="js/Preparacion.js"></script>
    </body>
</html>
