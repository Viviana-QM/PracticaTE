<%@page import="com.emergentes.modelo.Blog"%>
<%@page import="java.util.List"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.emergentes.modelo.Blog"%>
<% 
  if(session.getAttribute("logueado")!="ok"){
     response.sendRedirect("login.jsp");
  } 
%>
<%
  List<Blog> lista=(List<Blog>) request.getAttribute("lista");
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="imagenes/usuapequeño.png" alt=""/>${sessionScope.usuario}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="imagenes/pequeño.png" alt=""/> <a href="LoginControlador?action=logout">Salir[x]</a>
    <center>
        
        <h1>BLOG DE SALUD</h1> 
    </center>  
    <p>
            <a href="MainController?op=nuevo">Nuevo Blog</a>
    </p>
      <c:forEach var="item" items="${lista}">
                    
                    <p>${item.fecha}</p>
                    <br>
                     <h2>${item.titulo}</h2> 
                    <br>
                    <p>${item.contenido}</p>
                    <p>Autor:${sessionScope.usuario}
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="MainController?op=editar&id=${item.id}">Editar</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="MainController?op=eliminar&id=${item.id}" onclick="return(confirm('Esta seguro??'))">Eliminar</a></p><hr>
                
                    </c:forEach>             
    </body>
</html>
