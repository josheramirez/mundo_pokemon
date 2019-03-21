<%-- 
    Document   : crearPersonaje
    Created on : 17-01-2019, 21:11:22
    Author     : Mazamo Dafter Dark
--%>

<%@page import="Modelos.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crear personaje</title>
		<link rel="stylesheet" type="text/css" href="css/JP.css">
    </head>
    <body bgcolor="#f0f0fd">
	<%
	HttpSession HS = request.getSession();
	Usuario usuario= (Usuario)HS.getAttribute("usuario");
        out.println(usuario.id);
	if(usuario == null){
		response.sendRedirect("index.jsp");
	}
	%>
       <!--
	<div id='StarterM' align='center'>
		<h1>Bienvenido!</h1>
		<div>
		<p>
			Antes de empezar a jugar debes crear tu personaje.
		</p>
		</div>
		<div><button onclick='ShowAll()' type='button'>Continuar</button></div>
	</div>
       -->
       
	<div id='CContent'>
		<div align="left" id="CrearPersonajeB">
			<img hspace="20px" vspace="5px" id="CrearPersonajeIMG" src="https://fontmeme.com/permalink/190118/b3cb4a64dfbb869a9fe1f6656b30823e.png">
		</div>
		<div style="height: 50px"></div>
		<div align="center">
			<div id="CrearPersonajeForm" align="center">
				<form action="crearPersonaje" method="get" id="CrearPersonaje">
					<fieldset>
						<legend>Crear personaje</legend>
						<input maxlength="50" id="usuario" name="usuario" type="text" value="<%= usuario.nombre%>" readonly>
						<hr><div style="height: 10px"></div>
						<input type="text" name="nombre" id="nombre" required placeholder="Nombre del Personaje"><div style="height: 10px"></div>
						<input type="radio" name="Genero" id="Hombr" value="Hombr" onclick='GenderC(this.id)' checked>
						<label for="Hombr">Hombre</label>
						<input type="radio" name="Genero" id="Mujer" value="Mujer" onclick='GenderC(this.id)'>
						<label for="Mujer">Mujer</label><div style="height: 10px"></div>
						<div align="left">
							<div id="CharacterCMas">
								<img class="character" id="CharGH" src="pic/Hombr.png" onclick='GenderCP(this.id)'>
								<img class="character" id='CharRazaH' src="pic/Hombr/raza/Europ.png" onclick='GenderCP("CharGH")'>
								<img class="character" id='CharEqH' src="pic/Hombr/equipo/Zaf.png" onclick='GenderCP("CharGH")'>
								<img class="character" id='CharCOH' src="pic/Hombr/colorOjos/Marr.png" onclick='GenderCP("CharGH")'>
								<img class="character" id='CharCPH' src="pic/Hombr/colorPelo/Cast.png" onclick='GenderCP("CharGH")'>
							</div>
							<div id="CharacterCFem">
								<img class="character" id="CharGM" src="pic/Mujer.png" onclick='GenderCP(this.id)'>
								<img class="character" id='CharRazaM' src="pic/Mujer/raza/Europ.png" onclick='GenderCP("CharGM")'>
								<img class="character" id='CharEqM' src="pic/Mujer/equipo/Zaf.png" onclick='GenderCP("CharGM")'>
								<img class="character" id='CharCOM' src="pic/Mujer/colorOjos/Marr.png" onclick='GenderCP("CharGM")'>
								<img class="character" id='CharCPM' src="pic/Mujer/colorPelo/Cast.png" onclick='GenderCP("CharGM")'>
							</div>
						</div>
						<div style="height: 200px"></div>
						<div style="height: 10px"></div>
						<label for="Raza">Tono de piel:</label>
						<select name="Raza" id="Raza" onchange='ChangeR(this.value)'>
							<option value="Europ">Claro</option>
							<option value="Moren">Oscuro</option>
							<option value="Asian">Más claro</option>
							<option value="Latin">Menos oscuro</option>
						</select>
						<div style="height: 10px"></div>
						<label for="COjos">Color de Ojos:</label>
						<select name="COjos" id="COjos" onchange='ChangeCO(this.value)'>
							<option value="Marr">Marrones</option>
							<option value="Azul">Azules</option>
							<option value="Verd">Verdes</option>
							<option value="Purp">Púrpura</option>
							<option value="Rojo">Rojos</option>
							<option value="Gris">Grises</option>
							<option value="Amar">Amarillos</option>
						</select>
						<div style="height: 10px"></div>
						<label for="CPelo">Color de Pelo:</label>
						<select name="CPelo" id="CPelo" onchange='ChangeCP(this.value)'>
							<option value="Cast">Castaño</option>
							<option value="Negr">Negro</option>
							<option value="Rubi">Rubio</option>
							<option value="Blan">Blanco</option>
							<option value="Purp">Púrpura</option>
							<option value="Rojo">Rojo</option>
						</select>
						<div style="height: 10px"></div>
						<label for="Equipo">Equipo:</label>
						<select name="Equipo" id="Equipo" onchange='ChangeEq(this.value)'>
							<option value="Zaf">Zafiro</option>
							<option value="Esm">Esmeralda</option>
							<option value="Rub">Rubí</option>
						</select>
						<div style="height: 10px"></div>
						<input type="submit" value="Listo!">
					</fieldset>
				</form>
			</div>
		</div>
	</div>
	<script src="js/CPersonaje.js" type="text/javascript"></script>
	</body>
</html>
