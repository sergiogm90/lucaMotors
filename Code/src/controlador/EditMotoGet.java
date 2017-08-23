package controlador;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import datos.Datos;
import datos.GestionarDatos;
import modelo.Moto;
import servicios.servicios;

/**
 * Servlet implementation class EditarMoto
 */
@WebServlet("/EditMotoGet")
public class EditMotoGet extends HttpServlet {
	
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        
        
        System.out.println("eo");
        int id = Integer.parseInt(request.getParameter("idMoto"));
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

		Moto m = new Moto(id, marca, modelo, color, largo, ancho, alto, peso, capacidadDeposito, modeloMotor, modeloChasis, modeloSuspension, modeloRuedas, precio, fotoMoto);

		System.out.println(m);
		try{
			servicios.updateMoto(m);
		}catch (Exception e) {
			e.printStackTrace();
		}
		
        request.setAttribute("arrayMotos", servicios.listarMotos());

        request.getRequestDispatcher("buscarMoto.jsp").forward(request, response);	//no existe editarmoto.jsp
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
