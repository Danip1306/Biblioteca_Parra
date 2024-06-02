<%-- 
    Document   : index
    Created on : 21/05/2024, 11:36:23 a. m.
    Author     : Estudiante
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <title>Inicio</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">        <style>

        </style>
    </head>
    <body>        
        <div class="container-fluid" >
            <h1><kbd>INGRESO</kbd></h1>
            <form action="ValidaCTO" method="post">
                <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label">Correo Electronico</label>
                    <input type="email" name="email"  class="form-control text-bg-light border border-primary" id="exampleFormControlInput1" placeholder="nombre@example.com">
                </div>
                <div class="row g-3 align-items-center">
                    <div class="col-auto">
                        <label for="inputPassword6" class="col-form-label">Contraseña</label>
                    </div>
                    <div class="col-auto">
                        <input type="password" name="clave" id="inputPassword6" class="form-control border border-primary" aria-describedby="passwordHelpInline">
                    </div>
                </div>

                <button type="submit" name="accion" value="Ingresar" class="btn btn-outline-primary">Ingresar</button>
            </form>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
    </body>
</html>
