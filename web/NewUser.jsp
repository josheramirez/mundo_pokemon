<%-- 
    Document   : NewUser
    Created on : 25-01-2019, 21:32:32
    Author     : KATHY
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuario nuevo</title>
        <script src="JS/Main2.js"></script>
    </head>
    <body><br><br>
        <div align="center" style="">
            <a href="https://fontmeme.com/pokemon-font/">
            <img src="https://fontmeme.com/permalink/190206/f1bfcc87faeb00caceff66c9856a0e0f.png" alt="pokemon-font" border="0"></a>
            <br>
            <br>                        
        </div>
        <div align="center" border="0" width="300">
        <form action="new_user" method="post" id="formInicio">                         
                
                <tr>
                    <strong style="font-family: Arial, Helvetica, sans-serif; color: #2a75bb; font-size: 15px; text-decoration: none; padding-right: 5px">Nombre:</strong>
                    <br>
                    <input title="Completa este campo" type="text" name="nombre" id="txtNombre" required placeholder="Juan Perez">
                </tr>
                    <br><br>
                
                <tr>
                    <td><strong style="font-family: Arial, Helvetica, sans-serif; color: #2a75bb; font-size: 15px; text-decoration: none; padding-right: 5px">Contraseña:</strong></td>
                    <br>
                    <input title="Completa este campo" type="password" name="pass" id="passwordPass" required placeholder="Ingrese contraseña">
                                      
                </tr><br><br>  
                <tr>    
                    <td><strong style="font-family: Arial, Helvetica, sans-serif; color: #2a75bb; font-size: 15px; text-decoration: none; padding-right: 5px">Email:</strong></td>
                    <br><td><input title="Completa este campo" type="email" name="email" id="emailEmail" required placeholder="ejemplo@ejemplo.com"></td>
                </tr><br><br>              
                <%--<tr>
                    <td><label>Fecha de creación: </label></td>
                    <td><input title="Completa este campo" type="date" name="fecha_creacion" id="dateFecha_creacion" required></td>
                </tr>--%>
                <tr> 
                    <td><strong style="font-family: Arial, Helvetica, sans-serif; color: #2a75bb; font-size: 15px; text-decoration: none; padding-right: 5px">Teléfono:</strong></td>
                    <br><td><input title="Completa este campo" type="tel" name="telefono" id="telTelefono" pattern="[9]-[0-9]{8}" required 
                               placeholder="9-12345678"></td>
                </tr><br><br><br>
                <tr>
                    <td colspan="2" align="center">                    
                    <input type="submit" value="Registrarme" id="btnRegistrar" style="height:40px; width:200px; border: 3px solid #2a75bb; background-color: #ffcb05; border-radius: 12px;font-size: 18px; color: #2a75bb; font-family: Arial, Helvetica, sans-serif"></td>
                    <br>
                </tr>
                </form>
     
        </div>    
    </body>
</html>
