package it.aizoon.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.aizoon.model.dao.UtenteDAO;
import it.aizoon.model.dto.Utente;

/**
 * Servlet implementation class UtenteControllerList
 */
public class UtenteControllerList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UtenteControllerList() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		UtenteDAO dao = new UtenteDAO();
		List<Utente> utenti = dao.searchAll();
		request.setAttribute("utenti",utenti);
		String pagina = "utente-list.jsp";
		//Il controller fa forward ad un'altra view
		
		RequestDispatcher disp = request.getRequestDispatcher(pagina);
		disp.forward(request, response);
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
