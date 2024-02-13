package com.esmt.model;

import java.util.Date;

public class Produit {
	private String code;
	private String nom;
	private String categorie;
	private double prixUnitaire;
	private int quantite;
	private Date dateLivraison;
	private String fournisseur;

	public Produit() {
	}

	public Produit(String code, String nom, String categorie, double prixUnitaire, int quantite, Date dateLivraison,
			String fournisseur) {
		this.code = code;
		this.nom = nom;
		this.categorie = categorie;
		this.prixUnitaire = prixUnitaire;
		this.quantite = quantite;
		this.dateLivraison = dateLivraison;
		this.fournisseur = fournisseur;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
	    this.code = code;
	}


	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getCategorie() {
		return categorie;
	}

	public void setCategorie(String categorie) {
		this.categorie = categorie;
	}

	public double getPrixUnitaire() {
		return prixUnitaire;
	}

	public void setPrixUnitaire(double prixUnitaire) {
		this.prixUnitaire = prixUnitaire;
	}

	public int getQuantite() {
		return quantite;
	}

	public void setQuantite(int quantite) {
		this.quantite = quantite;
	}

	public Date getDateLivraison() {
		return dateLivraison;
	}

	public void setDateLivraison(Date dateLivraison) {
	    
	    this.dateLivraison = dateLivraison;
	}


	public String getFournisseur() {
		return fournisseur;
	}

	public void setFournisseur(String fournisseur) {
		this.fournisseur = fournisseur;
	}

	@Override
	public String toString() {
		return "Produit{" + "code=" + code + ", nom='" + nom + '\'' + ", categorie='" + categorie + '\''
				+ ", prixUnitaire=" + prixUnitaire + ", quantite=" + quantite + ", dateLivraison=" + dateLivraison
				+ ", fournisseur='" + fournisseur + '\'' + '}';
	}

}
