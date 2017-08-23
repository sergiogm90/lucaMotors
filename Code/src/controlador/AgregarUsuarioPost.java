package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import datos.Datos;
import datos.GestionarDatos;
import modelo.Usuario;
import servicios.servicios;

import java.sql.Connection;

/**
 * Servlet implementation class menu
 */
@WebServlet("/AgregarUsuarioPost")
public class AgregarUsuarioPost extends HttpServlet {
	// private static final long serialVersionUID = 1L;

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String dni = request.getParameter("dni");
		String nombre = request.getParameter("nombre");
		String apellido1 = request.getParameter("apellido1");
		String apellido2 = request.getParameter("apellido2");
		String direccion = request.getParameter("direccion");
		int telefono = Integer.parseInt(request.getParameter("telefono"));
		String email = request.getParameter("email");
		String password = request.getParameter("pass");
		String fecha = request.getParameter("fecha");
		int day = Integer.parseInt(fecha.substring(8, 10));
		int month = Integer.parseInt(fecha.substring(5, 7));
		int year = Integer.parseInt(fecha.substring(0, 4));

		Usuario u = new Usuario(dni, nombre, apellido1, apellido2, direccion, telefono, email, password, day, month,
				year);

		servicios.addUser(u);

       request.getRequestDispatcher("administradorWeb.jsp").forward(request, response);


	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}

}
