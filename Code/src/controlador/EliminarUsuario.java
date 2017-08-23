package controlador;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.Usuario;
import servicios.servicios;

/**
 * Servlet implementation class EliminarMoto
 */
@WebServlet("/EliminarUsuario")
public class EliminarUsuario extends HttpServlet {
	

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String dni = request.getParameter("dni");
				servicios.deleteUsuario(dni);
		
		 
        request.setAttribute("listaUsuarios", servicios.mostrarUsuarios());

	    request.getRequestDispatcher("buscarUsuario.jsp").forward(request, response);; 

	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}