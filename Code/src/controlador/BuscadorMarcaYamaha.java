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
@WebServlet("/BuscadorMarcaYamaha")
public class BuscadorMarcaYamaha extends HttpServlet {

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		if (servicios.buscador("Yamaha").isEmpty()){
			request.setAttribute("mostrarYamaha", false);
			request.setAttribute("listaMotos", servicios.listarMotos());
	     	request.getRequestDispatcher("principal.jsp").forward(request, response);

		}else{
			request.setAttribute("mostrarYamaha", true);
			request.setAttribute("listaMotos", servicios.buscador("Yamaha"));
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
