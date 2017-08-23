package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import servicios.servicios;

/**
 * Servlet implementation class Buscador
 */
@WebServlet("/Buscador")
public class Buscador extends HttpServlet {

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String busc = request.getParameter("buscador");
       
        
        if(servicios.buscador(busc).isEmpty()){
        	request.setAttribute("comp", true);
        	request.setAttribute("listaMotos", servicios.listarMotos());
        	request.getRequestDispatcher("principal.jsp").forward(request, response);
        }else{
        	 System.out.println(busc);
        	request.setAttribute("comp", false);
            request.setAttribute("listaMotos", servicios.buscador(busc));
        	request.getRequestDispatcher("principal.jsp").forward(request, response);

        }
        

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
