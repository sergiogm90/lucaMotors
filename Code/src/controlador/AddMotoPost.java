package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;

import datos.Datos;
import datos.GestionarDatos;
import modelo.Moto;
import servicios.servicios;

/**
 * Servlet implementation class addMotoPost
 */
@WebServlet("/AddMotoPost")
public class AddMotoPost extends HttpServlet {
	
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		String marca = request.getParameter("marca");
		String modelo = request.getParameter("modelo");
		String color = request.getParameter("color");
		double largo = Double.parseDouble(request.getParameter("largo"));
		double ancho = Double.parseDouble(request.getParameter("ancho"));
		double alto = Double.parseDouble(request.getParameter("alto"));
		double peso = Double.parseDouble(request.getParameter("peso"));
		double capacidadDeposito = Double.parseDouble(request.getParameter("capacidadDeposito"));
		String modeloMotor = request.getParameter("modeloMotor");
		String modeloChasis = request.getParameter("modeloChasis");
		String modeloSuspension = request.getParameter("modeloSuspension");
		String modeloRuedas = request.getParameter("modeloRuedas");
		double precio = Double.parseDouble(request.getParameter("precio"));
		String fotoMoto = request.getParameter("fotoMoto");

		Moto m = new Moto(marca, modelo, color, largo, ancho, alto, peso, capacidadDeposito, modeloMotor, modeloChasis, modeloSuspension, modeloRuedas, precio, fotoMoto);

		servicios.addMoto(m);
		
	    request.getRequestDispatcher("administradorWeb.jsp").forward(request, response);
	    System.out.println("mzagvs");
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}

}
