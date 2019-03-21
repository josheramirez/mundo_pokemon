<%-- 
    Document   : confirm_NU
    Created on : 30-01-2019, 17:41:00
    Author     : KATHY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession objsesion=request.getSession(false);
    String Nombre=(String)objsesion.getAttribute("nombre");
    if (Nombre.equals("")){
        response.sendRedirect("NewUser.jsp");
    }
%>
<!DOCTYPE html>
<html>   
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Creación de usuario.</title>
    </head>
    <body>
        <br><br><br>
        <div align="center">
            <img src="https://fontmeme.com/permalink/190206/cc8bff332df13d63619f061948f54771.png" alt="pokemon-font" border="0"><br><br>
            <h1><strong style="font-family: Arial, Helvetica, sans-serif; color: #2a75bb; font-size: 40px; text-decoration: none; padding-right: 5px"><%out.println(Nombre);%>.</strong></h1>
            <br>
        </div>
        <div align="center">
            <%--Nombre de usuario y contraseña correctos.<br>--%>                                   
            <h2> <strong style="font-family: Arial, Helvetica, sans-serif; color: #2a75bb; font-size: 25px; text-decoration: none; padding-right: 5px">Ahora, debes crear tu personaje.</strong>
                <br>
              <a href="Personaje.jsp">
                  <img src="https://fontmeme.com/permalink/190206/8d65ece36ad7b0ed3fe3b4543d67f295.png" alt="pokemon-font" border="0"></a></h2>  
        </div>
        
    </body>
</html>
