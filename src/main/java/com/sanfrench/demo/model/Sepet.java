package com.sanfrench.demo.model;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

//veritabanı sepet modeli
@Document("sepet")
public class Sepet {
	
	@Id
	private String id;
	
	private String urunAdi;
	
	private double urunFiyati;
	
	private String aciklama;
	
	private String masaNumarasi;

	public Sepet() {
		
	}
	public Sepet(String urunAdi, double urunFiyati, String aciklama, String masaNumarasi) {
		super();
		this.urunAdi = urunAdi;
		this.urunFiyati = urunFiyati;
		this.aciklama = aciklama;
		this.masaNumarasi = masaNumarasi;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getUrunAdi() {
		return urunAdi;
	}

	public void setUrunAdi(String urunAdi) {
		this.urunAdi = urunAdi;
	}

	public double getUrunFiyati() {
		return urunFiyati;
	}

	public void setUrunFiyati(double urunFiyati) {
		this.urunFiyati = urunFiyati;
	}

	public String getAciklama() {
		return aciklama;
	}

	public void setAciklama(String aciklama) {
		this.aciklama = aciklama;
	}

	public String getMasaNumarasi() {
		return masaNumarasi;
	}

	public void setMasaNumarasi(String masaNumarasi) {
		this.masaNumarasi = masaNumarasi;
	}

	@Override
	public String toString() {
		return "Sepet [id=" + id + ", urunAdi=" + urunAdi + ", urunFiyati=" + urunFiyati + ", aciklama=" + aciklama
				+ ", masaNumarasi=" + masaNumarasi + "]";
	}
	
}
