package com.sanfrench.demo;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.sanfrench.demo.model.Sepet;
import com.sanfrench.demo.service.SepetService;

@SpringBootTest
class DemoApplicationTests {
	
	@Autowired
	private SepetService sepetService;

	@Test
	void contextLoads() {
	}

	@Test
	public void save() {
		sepetService.save(new Sepet("Makarna", 30, "Tavuklu Makarna", "Masa 1"));
	}
	
}
