package it.aizoon.model.dao;

import java.util.ArrayList;
import java.util.List;

import it.aizoon.model.dto.Prodotto;
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

public class ProdottoDAO {
	
	private static List<Prodotto> prodotti;
	
	static {
		prodotti = new ArrayList<>();
		prodotti.add(new Prodotto(1L,"Cellulare Xiami","Cellulare della xiaomi veloce ed economico","Smartphone",129));
		prodotti.add(new Prodotto(2L,"Dell Aizoon","Molto efficente","Laptop",800));
		prodotti.add(new Prodotto(3L,"Lavatrice guzza","Bella lavatrice","Elettrodomestici",1000));
	}
	
	public ProdottoDAO() {
		
	}
	
	public List<Prodotto> searchAll(){
		final List<Prodotto> copyprodotti = new ArrayList<>();
		for(Prodotto p: prodotti) {
			copyprodotti.add(p);
		}
		return copyprodotti;
	}
	
	/*
	 * ATTENZIONE: A MENO CHE NON METTI UN RETURN O BREAK
	 * NON PUOI MODIFICARE NEL FOR EACH!!!!!
	 */
	public boolean delete(Long id) {
		for(Prodotto p: prodotti) {
			if(p.getId() == id) {
				prodotti.remove(p);
				return true;
			}
		}
		return false;
	}
	
	
	private long getMaxId() {
		long max = 0;
		for(Prodotto p: prodotti) {
			if(p.getId() > max) {
				max = p.getId();
			}
		}
		return max;
	}
	
	public long addProdotto(Prodotto p) {
		if(p == null) {
			return -1;
		}
		long id = getMaxId() + 1;
		p.setId(id);
		prodotti.add(p);
		return id;
		
	}
	
}
