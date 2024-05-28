<%-- 
    Document   : index
    Created on : 7/05/2024, 11:37:00 a. m.
    Author     : Estudiante
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%HttpSession obj=request.getSession();
if(obj !=null && obj.getAttribute("usuario")!=null){
    
%>    
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>Principal</title>

    </head>
    <body>

        <h1>Mi Biblioteca</h1>
        <form action="ControlCTO" method="post">
            <input type="hidden" name="menu" value="Libros">
            <input type="submit" name="accion" value="Listar">
        </form>

    </body>
</html>
<%}else{
         request.getRequestDispatcher("error.html").forward(request, response);
        }
%>
