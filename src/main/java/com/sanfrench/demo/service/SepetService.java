package com.sanfrench.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sanfrench.demo.dao.SepetRepository;
import com.sanfrench.demo.model.Sepet;

@Service
public class SepetService{
	//
	@Autowired
	private SepetRepository sepetRepository;
	
	public void save(Sepet sepet) {
		sepetRepository.save(sepet);
	}
	
	public List<Sepet> getMasaSepet(String masaNo){
		return sepetRepository.findByMasaNumarasi(masaNo);
	}
	
	public void remove(String id) {
		sepetRepository.deleteById(id);
	}
	
	public void deleteSepetAll(List<Sepet> sepetList) {
		sepetRepository.deleteAll(sepetList);
	}
}
