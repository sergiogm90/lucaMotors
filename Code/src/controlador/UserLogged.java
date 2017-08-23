package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modelo.Usuario;
import servicios.servicios;

/**
 * Servlet implementation class UsedLogged
 */
@WebServlet("/UserLogged")
public class UserLogged extends HttpServlet {
       
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String email=request.getParameter("email");
        String pass=request.getParameter("password");
        boolean logueado=servicios.login(email,pass);
        System.out.println(logueado);
        if(logueado==true){
        	//recoger las motos y mandarlas al principal para que las muestre
        	
        	HttpSession sesion = request.getSession();
        	
        	Usuario cliente=servicios.usuarioEmail(email);
            // Guardo el usuario (creado con bean) en la sesion
            sesion.setAttribute("cliente", cliente);
        	
        	request.setAttribute("listaMotos", servicios.listarMotos());
        	
        	request.getRequestDispatcher("principal.jsp").forward(request, response);
        }
        else{
        	//meter un alert
        	request.getRequestDispatcher("loginUsuario.jsp").forward(request, response);
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
