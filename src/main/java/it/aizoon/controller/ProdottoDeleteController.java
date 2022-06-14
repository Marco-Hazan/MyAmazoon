package it.aizoon.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.aizoon.model.dao.ProdottoDAO;
import it.aizoon.model.dto.Prodotto;

/**
 * Servlet implementation class ProdottoDeleteController
 */
public class ProdottoDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProdottoDeleteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		if(request.getParameter("id") != null) {
			Long id = Long.parseLong(request.getParameter("id"));
			boolean eliminato = new ProdottoDAO().delete(id);
			String msg = "";
			List<Prodotto> prodotti = new ProdottoDAO().searchAll();
			if(eliminato) {
				msg = "Prodotto con id: " + id +" rimosso con successo dalla lista";
			}else {
				msg = "Prodotto con id" + id +"non rimosso";
			}
			request.setAttribute("prodotti",prodotti);
			request.setAttribute("messaggio", msg);
			RequestDispatcher disp = request.getRequestDispatcher("lista-prodotti.jsp");
			disp.forward(request, response);
		}
		
		
		
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
