 

<%@page import="java.util.List" %>
<%@page import="Modelo.CatTipoUsuario" %>
<%@page import="Logica.CatTipoUsuarioManager" %>
 <%@page import="Controlador.ConsultaTipoUsuario" %>


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>

        <%--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> --%>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet"/>

        <link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.11/css/jquery.dataTables.css">

        <script type="text/javascript" charset="utf8" src="//cdn.datatables.net/1.10.11/js/jquery.dataTables.js"></script>

        <title>Catálogo</title>
    </head>
    <style>
        .btn-circle {
            width: 30px;
            height: 30px;
            padding: 6px 0px;
            border-radius: 15px;
            font-size: 8px;
            text-align: center;
        }
    </style>
    <body>
        <h2>Catalogo de tipos de usuarios</h2>
        <div class="row col-lg-10"  >
            <div class="col-lg-5">

            </div>
            <div class="col-lg-5">
                
         <%@page import="Controlador.ConsultaCatalogoTipoUsuarios"%>
                <% String path = request.getContextPath(); %>
             
                    <button type="button" class="btn btn-primary" aria-label="Left Align"
                              onclick="location.href ='../TestWeb/Vistas/AccionesCatalogoTipoUsuarios/Nuevo.jsp'">
                        Nuevo
                    </button>
          
            </div>

            <br/>

            <br/>
        </div>
   
        <div class="col-lg-7"   >
            <table  id="mytabla" class="table table-striped table-bordered dt-responsive nowrap">

                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Descripción</th>
                        <th>Opciones</th>
                    </tr>

                </thead>
                <tbody>
                    <% 
                      List<CatTipoUsuario> listaCU=(List<CatTipoUsuario>) request.getAttribute("listCatTipoUsuario");
                      for(CatTipoUsuario u: listaCU){
                    %>
                    <tr>
                        <td> <%= u.getIdcattipoUsuario()%> </td>
                        <td> <%= u.getDescripcion()%> </td>
                        <td>

                            <button type="button" class="btn btn-default" aria-label="Left Align"
                              onclick="location.href ='../TestWeb/Vistas/AccionesCatalogoTipoUsuarios/Editar.jsp?id=<%= u.getIdcattipoUsuario()%>'">
                                <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
                            </button>  
                           
                            <button type="button" class="btn btn-default" aria-label="Left Align"
                               onclick="location.href ='../TestWeb/Vistas/AccionesCatalogoTipoUsuarios/Eliminar.jsp?id=<%= u.getIdcattipoUsuario()%>'">
                                <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
                            </button>

                        </td>

                        <% 
                            }
                        %>
                    </tr>
                </tbody>
            </table>
        </div>
        <%--    <%@ page import="Controlador.registrarUsuario" %>
         <div class="container">
             <div class="row" style="background-color: greenyellow">
                 <div class="col-lg-6" style="background-color: pink">
                     <input   value="Salir" class="btn btn-primary" />
                 </div>
                 
                 <div class="col-lg-6"  >

                    <form method="post" action="registrarUsuario" >
                        <input class="btn btn-primary" type="submit"  value="Entrar"  />

                    </form> 
                </div>
            </div> --%>

        <script>
            $(document).ready(function () {
                $('#mytabla').DataTable();
            });
        </script>
    </body>
</html>
