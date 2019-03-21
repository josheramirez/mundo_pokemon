<%-- 
    Document   : ensayo_sesiones
    Created on : 19-mar-2019, 23:19:02
    Author     : WarPc
--%>

<%@page import="java.util.Enumeration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
HttpSession sesion=request.getSession();
sesion.setAttribute("variable 1", "valor variable 1");
Enumeration keys = session.getAttributeNames();
while (keys.hasMoreElements())
{
  String key = (String)keys.nextElement();
  out.println(key + ": " + session.getAttribute(key) + "<br>");
}
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello sesiones 1!</h1>
        <button onclick="window.location.href='/ensayo_sesiones2'">Ir</button>
    </body>
</html>
