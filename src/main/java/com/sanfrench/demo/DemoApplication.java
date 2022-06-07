package com.sanfrench.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.mongodb.repository.config.EnableMongoRepositories;

@SpringBootApplication
@EnableMongoRepositories
public class DemoApplication {
	//Proje buradan ayağa kalkıyor.

	public static void main(String[] args) {
		SpringApplication.run(DemoApplication.class, args);
	}
	

}
