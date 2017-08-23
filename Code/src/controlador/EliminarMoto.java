package controlador;

import java.io.IOException;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.Moto;
import servicios.servicios;

/**
 * Servlet implementation class EliminarMoto
 */
@WebServlet("/EliminarMoto")
public class EliminarMoto extends HttpServlet {
	

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("idMoto"));
				servicios.deleteMoto(id);
		
		 
        request.setAttribute("arrayMotos", servicios.listarMotos());

	    request.getRequestDispatcher("buscarMoto.jsp").forward(request, response);; 

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
