 
<%@page import="java.util.List" %>
<%@page import="Modelo.Usuario" %>
<%@page import="Logica.UsuarioManager" %>

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
        <title>JSP Page</title>
    </head>
    <body>
        <style>
            table, th, td {
                border: 1px solid black;
            }
        </style>
        <br/>
        <%--   <% 
                      List<Usuario> usuarios=(List<Usuario>) request.getAttribute("listaUsuariosRender");
                      String ="";
                   <%@page import="Controlador.ConsultaCatalogoTipoUsuarios"%>
        --%>
        <div class="row col-lg-12">
            <div class="container">


                <% String path = request.getContextPath(); %>

                <button type="button" class="btn btn-primary" aria-label="Left Align"
                        onclick="location.href = '../TestWeb/Vistas/AccionesUsuario/NuevoUsuario.jsp'">
                    Nuevo
                </button>
            </div>
        </div>
        <br/>
        <br/>
        <div class="row col-lg-12">
            <div class="container">

                <%
     String error="";
     error=(String)request.getAttribute("error");
     if(error==null)
     error="";
                %>
                <h4 style="color:red"><%=error%></h4>
            </div>
        </div>
        <br/>
        <br/>

        <div class="row col-lg-12">
            <div class="container">
                <table class="table table-striped table-bordered dt-responsive nowrap" >

                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Nombre</th>
                            <th>Ap Paterno</th>
                            <th>Ap Materno</th>
                            <th>Correo</th>
                            <th>Opciones</th>
                        </tr>

                    </thead>
                    <tbody
                        <% 
              List<Usuario> usuarios=(List<Usuario>) request.getAttribute("listaUsuariosRender");
                          for(Usuario u: usuarios){
                        %>
                        <tr>
                    <td> <%= u.getIdUsuario()%> </td>
                    <td> <%= u.getNombre()%> </td>
                    <td> <%= u.getApPaterno()%> </td>
                    <td> <%= u.getApMaterno()%> </td>
                    <td> <%= u.getCorreo()%> </td>
                    <td>
                        <form method="post" action="<%= path %>/ConsultaUsuarioEditar">
                            <button type="submit" class="btn btn-default" aria-label="Left Align" value="<%=u.getIdUsuario()%>" name="editar">
                                <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
                            </button>  
                        </form>    
                        <form method="post" action="<%= path %>/EliminarUsuario">
                            <button type="submit" class="btn btn-default" aria-label="Left Align" value="<%=u.getIdUsuario()%>" name="eliminar">
                                <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
                            </button>
                        </form>
                    </td>

                    <% 
                        }
                    %>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
                  
    </body>
</html>
