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
		prodotti.add(new Prodotto(1L,"Dell Aizoon","Molto efficente","Laptop",800));
		prodotti.add(new Prodotto(1L,"Lavatrice guzza","Bella lavatrice","Elettrodomestici",1000));
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
	
}
