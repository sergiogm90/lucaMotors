package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class AdministrarWeb
 */
@WebServlet("/AdministrarWeb")
public class AdministrarWeb extends HttpServlet {
	
	
	
	
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("--- dentro del servlet");
        try {

            HttpSession ses = request.getSession(false);
            if (ses == null) {
                System.out.println("sesion nula");
                //response.encodeRedirectURL("restaurante.jsp");
                request.getRequestDispatcher("loginAdministrador.jsp").forward(request, response);
            }
            else{
            	System.out.println(ses.getAttribute(""));
            	request.getRequestDispatcher("administradorWeb.jsp").forward(request, response);
            }

        } catch (Exception e) {
            System.out.println("--------------------  FALLO  -----------------------------");
            System.out.println(e.getMessage());
            System.out.println("----------------------------------------------------------");
        }
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 processRequest(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 processRequest(request, response);
	}

}
