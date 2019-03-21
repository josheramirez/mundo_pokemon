<%-- 
    Document   : ensayo_sesiones3
    Created on : 19-mar-2019, 23:57:47
    Author     : WarPc
--%>

<%@page import="java.util.Enumeration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
HttpSession sesion=request.getSession(false);
Enumeration keys=sesion.getAttributeNames();
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
        <h1>Hello sesiones 3!</h1>
    </body>
</html>
