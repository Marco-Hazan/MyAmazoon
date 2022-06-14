package it.aizoon.model.dto;

import java.util.Objects;

public class Prodotto {
	private Long id;
	private String nome;
	private String descrizione;
	private String categoria;
	private double prezzo;
	/**
	 * @param id
	 * @param nome
	 * @param descrizione
	 * @param categoria
	 * @param prezzo
	 */
	public Prodotto(Long id, String nome, String descrizione, String categoria, double prezzo) {
		this.id = id;
		this.nome = nome;
		this.descrizione = descrizione;
		this.categoria = categoria;
		this.prezzo = prezzo;
	}
	
	
	public Prodotto(String nome, String descrizione, String categoria, double prezzo) {
		this.nome = nome;
		this.descrizione = descrizione;
		this.categoria = categoria;
		this.prezzo = prezzo;
	}
	/**
	 * @return the id
	 */
	public Long getId() {
		return id;
	}
	/**
	 * @return the nome
	 */
	public String getNome() {
		return nome;
	}
	/**
	 * @return the descrizione
	 */
	public String getDescrizione() {
		return descrizione;
	}
	/**
	 * @return the categoria
	 */
	public String getCategoria() {
		return categoria;
	}
	/**
	 * @return the prezzo
	 */
	public double getprezzo() {
		return prezzo;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * @param nome the nome to set
	 */
	public void setNome(String nome) {
		this.nome = nome;
	}
	/**
	 * @param descrizione the descrizione to set
	 */
	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}
	/**
	 * @param categoria the categoria to set
	 */
	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}
	/**
	 * @param prezzo the prezzo to set
	 */
	public void setprezzo(double prezzo) {
		this.prezzo = prezzo;
	}
	@Override
	public int hashCode() {
		return Objects.hash(categoria, descrizione, id, prezzo, nome);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Prodotto other = (Prodotto) obj;
		return Objects.equals(categoria, other.categoria) && Objects.equals(descrizione, other.descrizione)
				&& Objects.equals(id, other.id) && Objects.equals(prezzo, other.prezzo)
				&& Objects.equals(nome, other.nome);
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Prodotto [id=");
		builder.append(id);
		builder.append(", nome=");
		builder.append(nome);
		builder.append(", descrizione=");
		builder.append(descrizione);
		builder.append(", categoria=");
		builder.append(categoria);
		builder.append(", prezzo=");
		builder.append(prezzo);
		builder.append("]");
		return builder.toString();
	}
	
	
}
