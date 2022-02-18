<%-- 
    Document   : index
    Created on : Jan. 11, 2022, 1:14:22 p.m.
    Author     : khushpreetkaurgulati
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Session.SayHelloRemote" %>
<%@page import="javax.naming.Context" %>
<%@page import="javax.naming.InitialContext" %>
<%@page import="javax.naming.NamingException" %>
<!DOCTYPE html>
<html>
   <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>JSP Page</title>
   </head>
   <body>
       <h1>Hello World!</h1>
<% Context ctx = new InitialContext();
SayHelloRemote sb = (SayHelloRemote) ctx.lookup(SayHelloRemote.class.getName());
String result = sb.HelloWorld("Khushpreet");
out.println(result);
%>
 
   </body>
</html>