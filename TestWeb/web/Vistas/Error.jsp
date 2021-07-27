<%-- 
    Document   : Error
    Created on : 27 jul 2021, 11:27:28
    Author     : Acer ES 15
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="Controlador.ConsultaCatalogoTipoUsuarios" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>

        <%--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> --%>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet"/>

        <link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.11/css/jquery.dataTables.css">

        <script type="text/javascript" charset="utf8" src="//cdn.datatables.net/1.10.11/js/jquery.dataTables.js"></script>

        <title>Error</title>
    </head>
    <body>
        <h1 style="color: red">Ocurrio un error, intentalo más tarde</h1>
        <% String path = request.getContextPath(); %>
        <form method="post" action="<%= path %>/ConsultaCatalogoTipoUsuarios">


            <div class="row col-md-12">
                <div class="col-md-3">

                    <button type="submit" class="btn btn-primary" aria-label="Left Align" value="1" name="submitCatalogo">
                        Regresar
                    </button>
                </div>

            </div>

        </form>
    </body>
</html>
