 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Controlador.ConsultaCatalogoTipoUsuarios" %>
<%@page import="Modelo.CatTipoUsuario" %>
<%@page import="Logica.CatTipoUsuarioManager" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>

        <%--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> --%>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet"/>

        <link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.11/css/jquery.dataTables.css">

        <script type="text/javascript" charset="utf8" src="//cdn.datatables.net/1.10.11/js/jquery.dataTables.js"></script>

        <title>Editar</title>
    </head>
    <body>

        <% String path = request.getContextPath(); %>

        <br/>
        <br/>
        <% 
            int id=Integer.parseInt(request.getParameter("id"));
                CatTipoUsuarioManager usc= new CatTipoUsuarioManager();
               CatTipoUsuario e= usc.GetCatTipoUsuario(id);
        %>
        
        <form method="post" action="<%= path %>/EditarTipoUsuario">
            <div class="row col-md-12">
                <div class="col-md-4" > 

                    <input class="form-control" readonly="true" type="text" name="idS"  id="idS" placeholder="id" value="<%= e.getIdcattipoUsuario()%>"  />
                </div>
                <div class="col-md-4" > 

                    <input class="form-control" type="text" name="descripcion"  placeholder="Descripción" value="<%= e.getDescripcion()%>"/>
                </div>

            </div>

            <br/>
            <br/>
            <br/>
            <br/>



            <div class="row col-md-12">
                <div class="col-md-3">

                    <button type="submit" class="btn btn-primary" aria-label="Left Align" value="1" name="submitCatalogo">
                        Regresar
                    </button>
                </div>
                <div class="col-md-3">
                    <button type="submit" class="btn btn-primary" aria-label="Left Align" value="2" name="submitCatalogo">
                        Actualizar
                    </button>
                </div>
            </div>

        </form>
    </body>
</html>
