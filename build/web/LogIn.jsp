<%-- 
    Document   : index
    Created on : 25-01-2019, 20:34:18
    Author     : KATHY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%  
     //String username=(String)session.getAttribute("error");
        //out.println(username);
    
    String bandera=request.getParameter("error");
    if(request.getParameter("error") == null){
        //out.println("sin mensaje");
    }
    else{
        //out.println("con mensaje");
    }
%>

      
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Iniciar sesión</title>
        <script src="JS/Main.js"></script>
                        
    </head>
    <body>
        <br><br><br>
        
        <div align="center" style="">
        <a href="https://fontmeme.com/pokemon-font/">
            <img src="https://fontmeme.com/permalink/190205/5d9c6ccdd715da482642db91a622a156.png" alt="pokemon-font" border="0"></a>
        </div>        
        <%--<h1>Iniciar sesión.</h1>--%>
        <br><br>
        <div align="center">
               <form action="login" method="post" id="formInicio">
               <label><strong style="font-family: Arial, Helvetica, sans-serif; color: #2a75bb; font-size: 17px; text-decoration: none; padding-right: 5px">Nombre</strong></label>
                <br>
                <input title="Completa este campo" type="text" name="nombre" id="txtNombre" required placeholder="Juan Perez">
                <br>
                <label><strong style="font-family: Arial, Helvetica, sans-serif; color: #2a75bb; font-size: 17px; text-decoration: none; padding-right: 5px">Contraseña</strong></label>
                <br>
            <input title="Completa este campo" type="password" name="pass" id="passwordPass" required><br>
            <br>            	
            <input align="center" type="submit" value="Iniciar sesión" id="btnIniciar" style="height:40px; width:200px; border: 3px solid #2a75bb; background-color: #ffcb05; border-radius: 12px;font-size: 18px; color: #2a75bb; font-family: Arial, Helvetica, sans-serif">
                                      
</form>
                <br><br><br>
                <strong style="font-family: Arial, Helvetica, sans-serif; color: #2a75bb; font-size: 16px; text-decoration: none; padding-right: 5px">¿No tienes una cuenta?</strong>
                        <br>
			<a href="NewUser.jsp">
                            <img src="https://fontmeme.com/permalink/190205/ed2db4da11755ee2ef3c8a5bb5933002.png" alt="pokemon-font" border="0"></a>
                        
                    <%--¿No tienes una cuenta?<br>
            <a align="center" href="NewUser.jsp">Crear cuenta.</a>--%>
        </div>
    </body>
</html>    

