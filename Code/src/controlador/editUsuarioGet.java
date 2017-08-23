package controlador;

import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import datos.Datos;
import datos.GestionarDatos;
import javafx.util.converter.LocalDateStringConverter;
import modelo.Moto;
import modelo.Usuario;
import servicios.servicios;

/**
 * Servlet implementation class EditarMoto
 */
@WebServlet("/editUsuarioGet")
public class editUsuarioGet extends HttpServlet {
	
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        
        
        System.out.println("eo");
        
        int id = Integer.parseInt(request.getParameter("idUsuarios"));
        String dni = request.getParameter("dni");
        String nombre = request.getParameter("nombre");
		String apellido1 = request.getParameter("apellido1");
		String apellido2 = request.getParameter("apellido2");
		String direccion = request.getParameter("direccion");
		int telefono = Integer.parseInt(request.getParameter("telefono"));
		String email = request.getParameter("email");
		String pass = request.getParameter("pass");
		String fecha = request.getParameter("fecha");
		int day = Integer.parseInt(fecha.substring(8, 10));
		int month = Integer.parseInt(fecha.substring(5, 7));
		int year = Integer.parseInt(fecha.substring(0, 4));

		
		Usuario u = new Usuario(id, nombre, apellido1, apellido2, direccion, telefono, dni, email, pass, day, month, year);

		System.out.println(u);
		try{
			servicios.updateUsuario(u);
		}catch (Exception e) {
			e.printStackTrace();
		}
		
        request.setAttribute("listaUsuarios", servicios.mostrarUsuarios());

        request.getRequestDispatcher("buscarUsuario.jsp").forward(request, response);	//no existe editarmoto.jsp
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
