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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    </head>
    <body>
        <div class="position-relative">
            <div class="position-absolute top-0 start-50 translate-middle-x">
                <h1><kbd>Biblioteca</kbd></h1>
                <form action="ControlCTO" method="post">
                    <input type="hidden" name="menu" value="Libros">
                    <input type="submit" class="btn btn-outline-primary" name="accion" value="Listar">
                </form>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
    </body>
</html>
<%}else{
         request.getRequestDispatcher("error.html").forward(request, response);
        }
%>
