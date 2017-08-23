package controlador;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import datos.Datos;
import datos.GestionarDatos;
import modelo.Usuario;
import modelo.Administrador;
import servicios.servicios;

/**
 * Servlet implementation class comprobarAdministrador
 */
@WebServlet("/ComprobarAdministrador")
public class ComprobarAdministrador extends HttpServlet {

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		response.setContentType("text/html;charset=UTF-8");
		
        String usuario=request.getParameter("username");
        String pass=request.getParameter("password");
        
        boolean logueado=servicios.loginAdmin(usuario, pass);
        if(logueado==true){
        	
        	HttpSession sesion = request.getSession();
        	
        	Administrador admin=servicios.adminUsername(usuario);
        	
            sesion.setAttribute("admin", admin);
        	
        	request.getRequestDispatcher("administradorWeb.jsp").forward(request, response);
        }
        else{

        	request.getRequestDispatcher("loginAdministrador.jsp").forward(request, response);
        }
	}
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			processRequest(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
