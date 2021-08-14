package Controlador;

import Logica.CatTipoUsuarioManager;
import Modelo.CatTipoUsuario;
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
@WebServlet(name = "NuevoTipoUsuario", urlPatterns = {"/NuevoTipoUsuario"})
public class NuevoTipoUsuario extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            int valorBoton = Integer.parseInt(request.getParameter("submitCatalogo"));
            
            String valor = request.getParameter("descripcion");
            
            if (valorBoton == 1) {            //response.sendRedirect(request.getContextPath() + "/Vistas/AccionesCatalogoTipoUsuarios/Nuevo.jsp");
                response.sendRedirect(request.getContextPath() + "/Vistas/CatalogoTipoUsuarios.jsp");
            } else {
                if (!valor.isEmpty()) {

                    CatTipoUsuario u = new CatTipoUsuario();
                    u.setDescripcion(valor);
                    CatTipoUsuarioManager registrar = new CatTipoUsuarioManager();
                    int registro = registrar.registrarCatTipoUsuario(u);
                    
                    if (registro == 1) {
                        //response.sendRedirect(request.getContextPath() + "/Vistas/CatalogoTipoUsuarios.jsp");
                         CatTipoUsuarioManager usc = new CatTipoUsuarioManager();
            List<CatTipoUsuario> lista = usc.GetListCatTipoUsuario();
            
         request.setAttribute("listCatTipoUsuario", lista);
         request.getRequestDispatcher("/Vistas/CatalogoTipoUsuarios.jsp").forward(request, response);

                    } else {
                        response.sendRedirect(request.getContextPath() + "/Error.jsp");

                    }
                } else {

                }
            }

        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
