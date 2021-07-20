<%-- 
    Document   : CatalogoUsuarios
    Created on : 19 jul 2021, 22:15:54
    Author     : Acer ES 15
--%>

<%@page import="java.util.List" %>
<%@page import="Modelo.CatTipoUsuario" %>
<%@page import="Logica.GetCatTipoUsuario" %>
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
        <h2>Catalogo de tipos de usuarios</h2>
        <div class="col-lg-10">
                <table  border="1" id="mytabla" class="table table-striped table-bordered dt-responsive nowrap">

            <thead>
                <tr>
                    <th>Id</th>
                <th>Descripción</th>
                </tr>
                
            </thead>
            <tbody>
                <% 
                    GetCatTipoUsuario usc= new GetCatTipoUsuario();
                    List<CatTipoUsuario> lista= usc.GetListCatTipoUsuario();
                  for(CatTipoUsuario u: lista){
                %>
                <tr>
                    <td> <%= u.getIdcattipoUsuario()%> </td>
                    <td> <%= u.getDescripcion()%> </td>
                    <% 
                        }
                    %>
                </tr>
            </tbody>
        </table>
        </div>
    
        
        <script>
            $(document).ready(function () {
                $('#mytabla').DataTable();
            });
        </script>
    </body>
</html>
