 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="css/sb-admin-2.min.css" rel="stylesheet">
        <title>Login</title>

        <%--    <style>
               body,
               html {
                   margin: 0;
                   padding: 0;
                   height: 100%;
                   background: #60a3bc !important;
               }
               .user_card {
                   height: 400px;
                   width: 350px;
                   margin-top: auto;
                   margin-bottom: auto;
                   background: #f39c12;
                   position: relative;
                   display: flex;
                   justify-content: center;
                   flex-direction: column;
                   padding: 10px;
                   box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
                   -webkit-box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
                   -moz-box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
                   border-radius: 5px;

            }
            .brand_logo_container {
                position: absolute;
                height: 170px;
                width: 170px;
                top: -75px;
                border-radius: 50%;
                background: #60a3bc;
                padding: 10px;
                text-align: center;
            }
            .brand_logo {
                height: 150px;
                width: 150px;
                border-radius: 50%;
                border: 2px solid white;
            }
            .form_container {
                margin-top: 100px;
            }
            .login_btn {
                width: 100%;
                background: #c0392b !important;
                color: white !important;
            }
            .login_btn:focus {
                box-shadow: none !important;
                outline: 0px !important;
            }
            .login_container {
                padding: 0 2rem;
            }
            .input-group-text {
                background: #c0392b !important;
                color: white !important;
                border: 0 !important;
                border-radius: 0.25rem 0 0 0.25rem !important;
            }
            .input_user,
            .input_pass:focus {
                box-shadow: none !important;
                outline: 0px !important;
            }
            .custom-checkbox .custom-control-input:checked~.custom-control-label::before {
                background-color: #c0392b !important;
            }
        </style> --%>
    </head>


    <body>
        <%--    <div class="container h-100">
             <div class="d-flex justify-content-center h-100">
                 <div class="user_card">
                     <div class="d-flex justify-content-center">
                         <div class="brand_logo_container">
                             <img src="https://cdn.freebiesupply.com/logos/large/2x/pinterest-circle-logo-png-transparent.png" class="brand_logo" alt="Logo">
                         </div>
                     </div>
                     <div class="d-flex justify-content-center form_container">
                         <form>
                             <div class="input-group mb-3">
                                 <div class="input-group-append">
                                     <span class="input-group-text"><i class="fas fa-user"></i></span>
                                 </div>
                                 <input type="text" name="" class="form-control input_user" value="" placeholder="username">
                             </div>
                             <div class="input-group mb-2">
                                 <div class="input-group-append">
                                     <span class="input-group-text"><i class="fas fa-key"></i></span>
                                 </div>
                                 <input type="password" name="" class="form-control input_pass" value="" placeholder="password">
                             </div>
                             <div class="form-group">
                                 <div class="custom-control custom-checkbox">
                                     <input type="checkbox" class="custom-control-input" id="customControlInline">
                                     <label class="custom-control-label" for="customControlInline">Remember me</label>
                                 </div>
                             </div>
                             <div class="d-flex justify-content-center mt-3 login_container">
                                 <button type="button" name="button" class="btn login_btn">Login</button>
                             </div>
                         </form>
                     </div>

                    <div class="mt-4">
                        <div class="d-flex justify-content-center links">
                            Don't have an account? <a href="#" class="ml-2">Sign Up</a>
                        </div>
                        <div class="d-flex justify-content-center links">
                            <a href="#">Forgot your password?</a>
                        </div>
                        
                        <a href="Vistas/CatalogoUsuarios.jsp">Users</a>
                    </div>
                </div>
            </div>
        </div>  --%>
        <br/>
        <div class="row col-lg-12">
               <%--    <div class="container">
               <form method="post" action="ConsultaTipoUsuario" >
                <a href="Vistas/CatalogoTipoUsuarios.jsp">CatalogoTipoUsuarios</a> 
                <input class="btn btn-primary" type="submit"  value="Entrar"  />
            </form> 
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
                <div class="container">
                    
             
                <form method="post" action="Login" >
                    <input type="email" name="correo"/>
                    <input type="password" name="password"/>
                    <input class="btn btn-primary" type="submit"  value="Entrar"  />

                </form> 
            </div>
          </div>
        <div class="row col-lg-12">
            <div class="container">

                <%
     String error="";
     error=(String)request.getAttribute("error");
     if(error==null)
     error="";
                %>
                <p style="color:red"><%=error%></p>
            </div>
        </div>
    </body>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</html>

</body>
</html>
