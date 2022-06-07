package com.sanfrench.demo.model;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

//veritabanı siparişler modeli
@Document("siparisler")
public class Siparisler {
	
	@Id
	private String id;
	
	private String urunAdi;
	
	private double urunFiyati;
	
	private String aciklama;
	
	private String masaNumarasi;

	public Siparisler() {
		
	}
	
	public Siparisler(String urunAdi, double urunFiyati, String aciklama, String masaNumarasi) {
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

}
