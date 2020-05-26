<%-- 
    Document   : login
    Created on : 22-05-2020, 05:07:42 PM
    Author     : HP
--%>
<%@page import="com.emergentes.modelo.Blog"%>
<%@page import="java.util.List"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.emergentes.modelo.Blog"%>

<%
  List<Blog> lista=(List<Blog>) request.getAttribute("lista");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <h1>login</h1>
        <form action="LoginControlador" method="post">
            <label>Usuario</label>
            <input type="text" name="usuario">
            <br>
            <label>Password</label>
                <input type="password" name="password">
                <br>
                <input type="submit" value="Ingresar">
        </form>
    </center>
    </body>
</html>
