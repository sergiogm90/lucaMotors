package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import datos.Datos;
import datos.GestionarDatos;
import modelo.Moto;
import modelo.Usuario;
import servicios.servicios;

/**
 * Servlet implementation class registroMoto
 */
@WebServlet("/RegistroMoto")
public class RegistroMoto extends HttpServlet {

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
 /*
		GestionarDatos gd = new GestionarDatos("root", "1111");
		Datos dat = new Datos();
		Connection conn = gd.getConn();
		System.out.println(conn); */

		
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

		System.out.println(m);
	//	servicios.addMoto(dat, gd, m);
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
		doGet(request, response);
	}

}
