package com.sanfrench.demo.dao;

import java.util.List;

import org.springframework.data.mongodb.repository.MongoRepository;

import com.sanfrench.demo.model.Siparisler;
//// sipariş modeli veritabanı işlemlerini gerçekleştirir.
public interface SiparislerRepository extends MongoRepository<Siparisler, String>{
	List<Siparisler> findByMasaNumarasi(String masaNo);
	void deleteAllByMasaNumarasi(String masaNo);
}
