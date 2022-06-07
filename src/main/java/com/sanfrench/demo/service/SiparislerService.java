package com.sanfrench.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sanfrench.demo.dao.SiparislerRepository;
import com.sanfrench.demo.model.Siparisler;

@Service
public class SiparislerService {
	
	@Autowired
	private SiparislerRepository siparislerRepository;
	
	public void saveSiparis(Siparisler siparis) {
		siparislerRepository.save(siparis);
	}
	
	public List<Siparisler> getAllSiparisler(String masaNo){
		return siparislerRepository.findByMasaNumarasi(masaNo);
	}
	
	public void removeSiparis(String id) {
		siparislerRepository.deleteById(id);
	}
	
	public void removeAll(String masaNo) {
		siparislerRepository.deleteAllByMasaNumarasi(masaNo);
	}
}
