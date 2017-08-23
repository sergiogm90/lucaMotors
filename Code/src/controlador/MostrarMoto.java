package controlador;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.Moto;
import servicios.servicios;

/**
 * Servlet implementation class agregarUsuario
 */
@WebServlet("/MostrarMoto")
public class MostrarMoto extends HttpServlet {
       
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        
        int id = Integer.parseInt(request.getParameter("idMoto"));
		Moto m = null;
		m = servicios.motoId2(id);
		
		System.out.println(m);
		request.setAttribute("moto", m);
		
		System.out.println(servicios.sugerenciasMoto(m));		
		request.setAttribute("sugerencias", servicios.sugerenciasMoto(m));
		request.setAttribute("motosRelacionadas", true);

        request.getRequestDispatcher("mostrarMoto.jsp").forward(request, response);
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

