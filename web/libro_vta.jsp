<%-- 
    Document   : libro_vta
    Created on : 21/05/2024, 11:06:51 a. m.
    Author     : Estudiante
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%HttpSession obj=request.getSession();
if(obj !=null && obj.getAttribute("usuario")!=null){
    
%>  
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    </head>
    <body>
        <div class="d-flex">
            <div class="col-sm-8">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th scope="col">ISBN</th>
                            <th scope="col">Nombre Libro</th>
                            <th scope="col">Autor</th>
                            <th scope="col">Editorial</th>
                            <th scope="col">Año</th>
                        </tr>
                    </thead>
                    <tbody>

                        <c:forEach var="libro" items="${lista}">
                            <tr>
                                <td>${libro.getIsbn()}</td>
                                <td>${libro.getNombre()}</td>
                                <td>${libro.getAutor()}</td>
                                <td>${libro.getEditorial()}</td>
                                <td>${libro.getAnio()}</td>
                                <td>
                                    <a class="btn btn-info" href="ControlCTO?menu=Editar&id=${libro.getIsbn()}">Editar</a>
                                    <a class="btn btn-secondary" href="ControlCTO?menu=Eliminar&id=${libro.getIsbn()}">Delete</a>                                        
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            <div class="card col-sm-4">
                <div class="card-body">
                    <form action="ControlCTO" method="POST">
                        <div class="form-group">
                            <label>ISBN</label>
                            <input type="text" value="${libro.getIsbn()}" name="txtIsbn" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Nombre</label>
                            <input type="text" value="${libro.getNombre()}" name="txtNombre" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Autor</label>
                            <input type="text" value="${libro.getAutor()}" name="txtAutor" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Editorial</label>
                            <input type="text" value="${libro.getEditorial()}" name="txtEditorial" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Año</label>
                            <input type="text" value="${libro.getAnio()}" name="txtAnio" class="form-control">
                        </div>
                        <input type="submit" name="menu" value="Agregar" class="btn btn-info">
                        <input type="submit" name="menu" value="Actualizar" class="btn btn-secondary">
                    </form>
                </div>
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
