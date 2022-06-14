package it.aizoon.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.aizoon.model.dao.ProdottoDAO;
import it.aizoon.model.dto.Prodotto;

/**
 * Servlet implementation class ProdottoCreateController
 */
public class ProdottoCreateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProdottoCreateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ProdottoDAO dao = new ProdottoDAO();
		String nomeProdotto = request.getParameter("nome_prodotto");
		String descrizione = request.getParameter("Descrizione");
		String categoria = request.getParameter("categoria");
		double prezzo_prodotto = Double.parseDouble(request.getParameter("prezzo_prodotto"));
		Prodotto prodotto = new Prodotto(nomeProdotto, descrizione, categoria, prezzo_prodotto);
		boolean aggiunto = dao.addProdotto(prodotto);
		String msg ="";
		if(aggiunto) {
			msg = "Il prodotto è stato inserito correttamente";
		}else {
			msg = "C'è stato un problema";
		}
		request.setAttribute("messaggio", msg);
		RequestDispatcher disp = request.getRequestDispatcher("ProdottoListController");
		disp.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
