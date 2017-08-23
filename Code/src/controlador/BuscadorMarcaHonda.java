package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.Moto;
import servicios.servicios;

/**
 * Servlet implementation class Yamaha
 */
@WebServlet("/BuscadorMarcaHonda")
public class BuscadorMarcaHonda extends HttpServlet {

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		if (servicios.buscador("Honda").isEmpty()){
			request.setAttribute("mostrarHonda", false);
			request.setAttribute("listaMotos", servicios.listarMotos());
	     	request.getRequestDispatcher("principal.jsp").forward(request, response);

		}else{
			request.setAttribute("mostrarHonda", true);
			request.setAttribute("listaMotos", servicios.buscador("Honda"));
	     	request.getRequestDispatcher("principal.jsp").forward(request, response);
		}
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
