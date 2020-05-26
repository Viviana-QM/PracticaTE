<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.emergentes.modelo.Blog" %>
<%
    Blog libro = (Blog)request.getAttribute("libro");
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
        <h1>BLOG/SALUD</h1>
    </center>
    
        <form action="MainController" method="post">
           <pre> 
                   <label>FECHA</label> 
                   <input type="date" name="fecha"/><br>
                   <label>Titulo</label>
                   <input type="text" name="titulo"/><br>
                   <label>Contenido:</label><br>
                   <textarea name="contenido" rows="10" cols="40" id="contenido"/></textarea><br>
                   <input type="submit" name="enviar"/>
            </pre> 
                 
         </form>
    
    </body>
</html>
