package it.aizoon.model.dao;

import java.util.ArrayList;
import java.util.List;

import it.aizoon.model.dto.Utente;

/**
 * Classe per poter rendere persistente un Utente
 * contiene i metodi detti SCRUD
 * search
 * read
 * create
 * update
 * delete
 * Simulazione senza database
 * @author marco.hazan
 *
 */

public class UtenteDAO {
	
	private static List<Utente> utenti;
	
	static {
		utenti = new ArrayList<>();
		utenti.add(new Utente(1L,"Franco","Grivet","admin","admin"));
		utenti.add(new Utente(2L,"Axel","Simo","axel","axel"));
		utenti.add(new Utente(3L,"Giacomo","Parlatoni","giacomo","giacomo"));
		utenti.add(new Utente(1L,"Giovanni","Graziano","giovanni","giovanni"));
	}
	
	public UtenteDAO() {
		
	}
	
	public Utente searchByUsernameAndPassword(String username, String password) {
		Utente ris = null;
		for(Utente utente : utenti) {
			if(
				utente.getUsername().equals(username) &&
				utente.getPassword().equals(password)
			) 
				ris = utente;
		}
		return ris;
	}
	
	public List<Utente> searchAll(){
		final List<Utente> copyutenti= new ArrayList<>();
		for(Utente u: utenti) {
			copyutenti.add(u);
		}
		return copyutenti;
	}
	
}
