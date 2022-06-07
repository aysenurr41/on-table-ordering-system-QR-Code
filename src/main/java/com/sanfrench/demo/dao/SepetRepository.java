package com.sanfrench.demo.dao;

import java.util.List;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

import com.sanfrench.demo.model.Sepet;

// sepet modeli veritabanı işlemlerini gerçekleştirir.
@Repository
public interface SepetRepository extends MongoRepository<Sepet, String> {
	 List<Sepet> findByMasaNumarasi(String masaNo);
}
