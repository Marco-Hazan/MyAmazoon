package it.aizoon.controller;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.aizoon.model.dao.UtenteDAO;
import it.aizoon.model.dto.Utente;

/**
 * Servlet implementation class LoginController
 */
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public LoginController() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Leggo i parametri dalla pagina login.html
		String username = request.getParameter("username");
		String pwd = request.getParameter("pwd");
		String pagina = "login.jsp";
		String msg = "";
		UtenteDAO dao = new UtenteDAO();
		Utente ut = dao.searchByUsernameAndPassword(username, pwd);
		if(ut != null) {
			pagina = "amministrazione.jsp";
			msg = "Autenticato!!!";
			request.setAttribute("utente", ut);
		}
		else {
			msg = "Errore di autenticazione, login e/o password errati";
		}
		
		//response.sendRedirect(pagina);
		//Metto il messaggio in request, una mappa chiave-valore, per poi recuperarlo in jsp
		request.setAttribute("msg",msg);
		//Il controller fa forward ad un'altra view
		RequestDispatcher disp = request.getRequestDispatcher(pagina);
		disp.forward(request, response);
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
