package com.sanfrench.demo.web;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sanfrench.demo.model.Sepet;
import com.sanfrench.demo.model.Siparisler;
import com.sanfrench.demo.service.SepetService;
import com.sanfrench.demo.service.SiparislerService;


@Controller
public class indexController {
	//linklere göre sayfa yönlendirmeleri post/get
	@Autowired
	private SepetService sepetService;
	
	@Autowired
	private SiparislerService siparislerService;
	
	@ModelAttribute
	public Sepet newsepet() {
		return new Sepet();
	}

	//anasayfa
	@RequestMapping(value = {"/"}, method = RequestMethod.GET)
	public ModelAndView index() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("formAktifMi", false);
		mav.setViewName("index");
		return mav;
	}
	//qr koddan gelen sayfaya gider.
	@RequestMapping(value = "/index.html", method = RequestMethod.GET) // /index.html?masaNo=masa1
	public ModelAndView indexMasaNo(@RequestParam String masaNo){
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("masaNo", masaNo);
		mav.addObject("formAktifMi", true);
		mav.setViewName("index");
		return mav;
	}
	//post işlemi sepete ekle
	@RequestMapping(value = "/index.html", method = RequestMethod.POST) // /index.html?masaNo=masa1
	public ModelAndView sepeteEkle(@RequestParam String masaNo, @ModelAttribute Sepet sepet){
		ModelAndView mav = new ModelAndView();
		mav.addObject("masaNo", masaNo);
		mav.addObject("formAktifMi", true);
		
		sepetService.save(sepet);
		
		mav.setViewName("index");
		return mav;
	}
	//sepet sayfası
	@RequestMapping(value = "/sepet.html", method = RequestMethod.GET) // /sepet.html?masaNo=masa1
	public ModelAndView sepet(@RequestParam String masaNo, @RequestParam(value = "urun", defaultValue = "Null_") String id){
		ModelAndView mav = new ModelAndView();

		if(!id.equals("Null_")) {
			sepetService.remove(id);
		}
		List<Sepet> sepet = sepetService.getMasaSepet(masaNo);
		double fiyatToplam = 0;
		for (Sepet sepet2 : sepet) {
			fiyatToplam += sepet2.getUrunFiyati();
		}
		mav.addObject("masaNo", masaNo);
		mav.addObject("formAktifMi", true);
		mav.addObject("sepetUrunler", sepet);
		mav.addObject("fiyatToplam", fiyatToplam);
		mav.setViewName("sepet");
		return mav;
	}
	//sepeti onayla dendiğinde anasayfaya gidiyor.
	// Sepeti onaylaya basıldığında sepetteki ürünler siparişlere gider.
	// Sepet silinir.
	@RequestMapping(value = "/sepeti-onayla", method = RequestMethod.GET) // /sepet.html?masaNo=masa1
	public ModelAndView sepetOnayla(@RequestParam String masaNo){
		ModelAndView mav = new ModelAndView();
		List<Sepet> sepet = sepetService.getMasaSepet(masaNo);
		for (Sepet sepet2 : sepet) {
			Siparisler s = new Siparisler(sepet2.getUrunAdi(), sepet2.getUrunFiyati(), sepet2.getAciklama(), masaNo);
			siparislerService.saveSiparis(s);
		}
		sepetService.deleteSepetAll(sepet);
		
		mav.addObject("masaNo", masaNo);
		mav.addObject("formAktifMi", true);
		mav.setViewName("index");
		return mav;
	}
	//admin paneli. masalar . Login olmadan giriş yapılamaz.
	@RequestMapping(value = "/dashboard", method = RequestMethod.GET)
	public String admin() {
		return "dashboard";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "login";
	}

	//masa no suna göre şiparişler listelenir.
	@RequestMapping(value = "/siparis.html", method = RequestMethod.GET) // /siparis.html?masaNo=masa-1&urun=id&pay=delete
	public ModelAndView siparis(@RequestParam String masaNo, @RequestParam(value = "urun", defaultValue = "Null_") String id, 
			@RequestParam(value = "pay", defaultValue = "not") String hesap){
		ModelAndView mav = new ModelAndView();
		if(!id.equals("Null_")) {
			siparislerService.removeSiparis(id);
		}
		
		if(!hesap.equals("not")) {
			siparislerService.removeAll(masaNo);
		}
		//masa no ya göre ürünler getirilir. Hesap işlemleri
		List<Siparisler> siparisler = siparislerService.getAllSiparisler(masaNo);
		double fiyatToplamSiparis = 0;
		for (Siparisler siparis : siparisler) {
			fiyatToplamSiparis += siparis.getUrunFiyati();
		}
		//key:value
		mav.addObject("siparisler", siparisler);
		mav.addObject("fiyatToplamSiparis", fiyatToplamSiparis);
		mav.addObject("masaNo", masaNo);
		mav.setViewName("siparis");
		return mav;
	}
	
}
