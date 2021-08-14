 
package Controlador;

import Logica.UsuarioManager;
import Modelo.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

/**
 *
 * @author Acer ES 15
 */
@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            String correo = request.getParameter("correo");
            String password = request.getParameter("password");

            UsuarioManager manager = new UsuarioManager();

            int login = manager.LoginUsuario(correo, password);
            if (login == 1) {
           //response.sendRedirect(request.getContextPath() + "/Vistas/CatalogoUsuarios.jsp");
                    UsuarioManager mn = new UsuarioManager();
                List<Usuario> usuarios = mn.GetUsuarios();
              
              request.setAttribute("listaUsuariosRender", usuarios);
             request.getRequestDispatcher("usuarios.jsp").forward(request, response);
             
            } else {
                String error = "Contraseña incorrecta, intentalo de nuevo";
                request.setAttribute("error", error);
                 request.getRequestDispatcher("index.jsp").forward(request, response);

            }
        }
    }

 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
 
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
