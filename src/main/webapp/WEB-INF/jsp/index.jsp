<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@ taglib prefix="form"
	uri="http://www.springframework.org/tags/form"%><%@taglib prefix="c"
	uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="tr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>San French Restaurant</title>

    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="css/style.css">
    

</head>

<body>

    <!-- header bolumu basladı     -->

    <header>

        <div class="logo">
            <a href="#"><img src="images/logo.png"></a>
        </div>

        
        	<nav class="navbar">
            <a class="active" href="#home">Anasayfa</a>
            <a href="#menu">Menü</a>
            <a href="#hakimizda">hakkımızda</a>
            <a href="#review">müşteri memnuniyeti</a>
            <a href="#order">Rezervasyon</a>
            <a href="#iletisim">İletişim</a>
	        </nav>
	
	        <div class="icons">
	            <i class="fas fa-bars" id="menu-bars"></i>
	            <i class="fas fa-search" id="search-icon"></i>
	            <a href="#" class="fas fa-heart"></a>
	            <c:if test="${not empty masaNo}">
	            	<a href="sepet.html?masaNo=${masaNo}" class="fas fa-shopping-cart"></a>
	            </c:if>
	            
	        </div>
         

    </header>

    <!-- header bolumu son-->

    <!-- arastir -->

    <form action="" id="search-form">
        <input type="search" placeholder="ara..." name="" id="search-box">
        <label for="search-box" class="fas fa-search"></label>
        <i class="fas fa-times" id="close"></i>
    </form>

    <!-- home bolumu basladı  -->

     <!-- <section class="home" id="home">
        <div class="swiper-container home-slider">

            <div class="swiper-wrapper wrapper">
              
                <div class="swiper-slide slide">
                    <div class="content">
                       <a href="#tavuk-makarna" >
                       		<h3>
                            	Tavuk & Makarna
                        	</h3>
                        </a>
                    </div>
                    <div class="image">
                        <img src="images/yiyecekler/makarna.jpg" weight="200" >
                    </div>
                </div>
    
                <div class="swiper-slide slide">
                    <div class="content">
                        <a href="#tacos" >  
                        <h3>French Tacos </h3></a>
                    </div>
                    <div class="image">
                        <img src="images/yiyecekler/111-1113769_french-tacos-hd-png-download.png" width="607" >
                    </div>
                </div>
                <div class="swiper-slide slide">
                    <div class="content">
                        <a href="#wrap" >  
                        <h3>Wrap </h3></a>
                    </div>
                    <div class="image">
                        <img src="images/yiyecekler/acili wrap.jpg" width="200" >
                    </div>
                </div>
    
                <div class="swiper-slide slide">
                    <div class="content">
                        <a href="#avantaj" ><h3>Avantajlı Menüler</h3></a>
                    </div>
                    <div class="image">
                        <img src="images/yiyecekler/WhatsApp Image 2022-03-16 at 6.26.42 PM.jpeg" weight="200" >
                    </div>
                </div>
                <div class="swiper-slide slide">
                    <div class="content">
                        <a href="#extra" ><h3>Extra's</h3></a>
                    </div>
                    <div class="image">
                        <img src="images/yiyecekler/shutterstock_510881971.jpg" weight="200" >
                    </div>
                </div>
                <div class="swiper-slide slide">
                    <div class="content">
                        <a href="#icecek" ><h3>İçecekler</h3></a>
                    </div>
                    <div class="image">
                        <img src="images/içecekler/Coca-Cola_Orijinal_350x220px.jpg" weight="200" >
                    </div>
                </div>
              
            </div>
            <div class="swiper-pagination"></div>
        </div>
     
    </section>  -->

    <!-- home bolumu son -->
	<section id="home">
		<div class="slider-custum" style="width: 80%; margin: 0 auto;">
			<div class="swiper mySwiper">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<a href="#extra"
							style="text-align: center; font-family: 'Nunito', sans-serif; color: #192a56; font-size: 2rem"><h3>Extra's</h3></a>
						<img src="images/yiyecekler/shutterstock_510881971.jpg"
							style="width: 100%">
					</div>
					<div class="swiper-slide">
						<a href="#tavuk-makarna"
							style="text-align: center; font-family: 'Nunito', sans-serif; color: #192a56; font-size: 2rem"><h3>Tavuk
								& Makarna</h3></a> <img src="images/yiyecekler/makarna.jpg"
							style="width: 100%">
					</div>

					<div class="swiper-slide">
						<a href="#tacos"
							style="text-align: center; font-family: 'Nunito', sans-serif; color: #192a56; font-size: 2rem"><h3>French
								Tacos</h3></a> <img
							src="images/yiyecekler/111-1113769_french-tacos-hd-png-download.png"
							style="width: 100%">
					</div>
					<div class="swiper-slide">
						<a href="#wrap"
							style="text-align: center; font-family: 'Nunito', sans-serif; color: #192a56; font-size: 2rem"><h3>Wrap</h3></a>
						<img src="images/yiyecekler/acili wrap.jpg" style="width: 100%">
					</div>
					<div class="swiper-slide">
						<a href="#avantaj"
							style="text-align: center; font-family: 'Nunito', sans-serif; color: #192a56; font-size: 2rem"><h3>Avantajlı
								Menüler</h3></a> <img
							src="images/yiyecekler/WhatsApp Image 2022-03-16 at 6.26.42 PM.jpeg"
							style="width: 100%">
					</div>
					<div class="swiper-slide">
						<a href="#icecek"
							style="text-align: center; font-family: 'Nunito', sans-serif; color: #192a56; font-size: 2rem"><h3>İçecekler</h3></a>
						<img src="images/içecekler/Coca-Cola_Orijinal_350x220px.jpg"
							style="width: 100%">
					</div>
				</div>
				<div class="swiper-pagination"></div>
			</div>
		</div>
	</section>

	<!-- menu  -->

    <section class="menu" id="menu">
    
    <%-- <form:form  method="post" modelAttribute="sepet">
	   	<form:input value="Kremalı Fesleğenli Standart" path="urunAdi" style="display: none;"/>
	   	<form:input value="35.0" path="urunFiyati" style="display: none;"/>
	   	<form:input value="150gr. tavuk , 250gr. makarna ve salata ile." path="aciklama" style="display: none;"/>
		<form:input value="${masaNo}" path="masaNumarasi" style="display: none;"/>
	   	<button class="btn" type="submit">Sepete Ekle</button>
   </form:form> --%>
    

        <h3 class="sub-heading">Tavuk & Makarna</h3>
        <h1 class="heading"> Menü </h1>

        <div class="box-container" id="tavuk-makarna">

            <div class="box" >
                <a href="#" class="fas fa-heart"></a>
                <a href="#" class="fas fa-eye"></a>
                <img src="images/yiyecekler/kremalı.jpg" alt="">
                <h3>Kremalı Fesleğenli Standart</h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <p>150gr. tavuk , 250gr. makarna ve salata ile.</p>
                <span>35.00 tl</span>
                <c:if test="${formAktifMi}">
                <form:form action="/index.html?masaNo=${masaNo}" method="post" modelAttribute="sepet">
			    	<form:input value="Kremalı Fesleğenli Standart" path="urunAdi" style="display: none;"/>
			    	<form:input value="35.0" path="urunFiyati" style="display: none;"/>
			    	<form:input value="150gr. tavuk , 250gr. makarna ve salata ile." path="aciklama" style="display: none;"/>
			 		<form:input value="${masaNo}" path="masaNumarasi" style="display: none;"/>
			    	<button class="btn" type="submit">Sepete Ekle</button>
			    </form:form>
			    </c:if>
            </div>
            <div class="box" >
                <a href="#" class="fas fa-heart"></a>
                <a href="#" class="fas fa-eye"></a>
                <img src="images/yiyecekler/kremalı.jpg" alt="">
                <h3>Kremalı Fesleğenli Büyük</h3>
                <br>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <p>250gr. tavuk , 400gr. makarna ve salata ile</p>
                <span>45.00 tl</span>
                <c:if test="${formAktifMi}">
                    <form:form action="/index.html?masaNo=${masaNo}" method="post" modelAttribute="sepet">
                        <form:input value="Kremalı Fesleğenli Büyük" path="urunAdi" style="display: none;"/>
                        <form:input value="45.0" path="urunFiyati" style="display: none;"/>
                        <form:input value="250gr. tavuk , 400gr. makarna ve salata ile." path="aciklama" style="display: none;"/>
                         <form:input value="${masaNo}" path="masaNumarasi" style="display: none;"/>
                        <button class="btn" type="submit">Sepete Ekle</button>
                    </form:form>
                    </c:if>
            </div>

            <div class="box">
                <a href="#" class="fas fa-heart"></a>
                <a href="#" class="fas fa-eye"></a>
                <img src="images/yiyecekler/bbq makrna.jpg" alt="">
                <h3>BBQ soslu Standart</h3>
                <br><br>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <p>150gr. tavuk , 250gr. makarna ve salata ile</p>
                <span>35.00 tl</span>
                <c:if test="${formAktifMi}">
                    <form:form action="/index.html?masaNo=${masaNo}" method="post" modelAttribute="sepet">
                        <form:input value="BBQ Soslu Standart" path="urunAdi" style="display: none;"/>
                        <form:input value="35.0" path="urunFiyati" style="display: none;"/>
                        <form:input value="150gr. tavuk , 250gr. makarna ve salata ile" path="aciklama" style="display: none;"/>
                         <form:input value="${masaNo}" path="masaNumarasi" style="display: none;"/>
                        <button class="btn" type="submit">Sepete Ekle</button>
                    </form:form>
                    </c:if>
            </div>
            <div class="box">
                <a href="#" class="fas fa-heart"></a>
                <a href="#" class="fas fa-eye"></a>
                <img src="images/yiyecekler/bbq makrna.jpg" alt="">
                <h3>BBQ soslu Büyük</h3>
                <br>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <p>250gr. tavuk , 400gr. makarna ve salata ile</p>
                <span>45.00 tl</span>
                <c:if test="${formAktifMi}">
                    <form:form action="/index.html?masaNo=${masaNo}" method="post" modelAttribute="sepet">
                        <form:input value="BBQ Soslu Büyük" path="urunAdi" style="display: none;"/>
                        <form:input value="45.0" path="urunFiyati" style="display: none;"/>
                        <form:input value="250gr. tavuk , 400gr. makarna ve salata ile." path="aciklama" style="display: none;"/>
                         <form:input value="${masaNo}" path="masaNumarasi" style="display: none;"/>
                        <button class="btn" type="submit">Sepete Ekle</button>
                    </form:form>
                    </c:if>
            </div>

            <div class="box">
                <a href="#" class="fas fa-heart"></a>
                <a href="#" class="fas fa-eye"></a>
                <img src="images/yiyecekler/kori.jpg" alt="">
                <h3>Köri soslu Standart</h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <p>150gr. tavuk , 250gr. makarna ve salata ile</p>
                <span>35.00 tl</span>
                <c:if test="${formAktifMi}">
                    <form:form action="/index.html?masaNo=${masaNo}" method="post" modelAttribute="sepet">
                        <form:input value="Köri Soslu Standart" path="urunAdi" style="display: none;"/>
                        <form:input value="35.0" path="urunFiyati" style="display: none;"/>
                        <form:input value="150gr. tavuk , 250gr. makarna ve salata ile" path="aciklama" style="display: none;"/>
                         <form:input value="${masaNo}" path="masaNumarasi" style="display: none;"/>
                        <button class="btn" type="submit">Sepete Ekle</button>
                    </form:form>
                    </c:if>
            </div>
            <div class="box">
                <a href="#" class="fas fa-heart"></a>
                <a href="#" class="fas fa-eye"></a>
                <img src="images/yiyecekler/kori.jpg" alt="">
                <h3>Köri soslu Büyük</h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <p>250gr. tavuk , 400gr. makarna ve salata ile</p>
                <span>45.00 tl</span>
                <c:if test="${formAktifMi}">
                    <form:form action="/index.html?masaNo=${masaNo}" method="post" modelAttribute="sepet">
                        <form:input value="Köri soslu Büyük" path="urunAdi" style="display: none;"/>
                        <form:input value="45.0" path="urunFiyati" style="display: none;"/>
                        <form:input value="250gr. tavuk , 400gr. makarna ve salata ile." path="aciklama" style="display: none;"/>
                         <form:input value="${masaNo}" path="masaNumarasi" style="display: none;"/>
                        <button class="btn" type="submit">Sepete Ekle</button>
                    </form:form>
                    </c:if>
            </div>

            <div class="box">
                <a href="#" class="fas fa-heart"></a>
                <a href="#" class="fas fa-eye"></a>
                <img src="images/yiyecekler/mexican.jpg" alt="">
                <h3>Mexican soslu Standart</h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <p>150gr. tavuk , 250gr. makarna ve salata ile</p>
                <span>35.00 tl</span>
                <c:if test="${formAktifMi}">
                    <form:form action="/index.html?masaNo=${masaNo}" method="post" modelAttribute="sepet">
                        <form:input value="Mexican Soslu Standart" path="urunAdi" style="display: none;"/>
                        <form:input value="35.0" path="urunFiyati" style="display: none;"/>
                        <form:input value="150gr. tavuk , 250gr. makarna ve salata ile" path="aciklama" style="display: none;"/>
                         <form:input value="${masaNo}" path="masaNumarasi" style="display: none;"/>
                        <button class="btn" type="submit">Sepete Ekle</button>
                    </form:form>
                    </c:if>
            </div>
            <div class="box">
                <a href="#" class="fas fa-heart"></a>
                <a href="#" class="fas fa-eye"></a>
                <img src="images/yiyecekler/mexican.jpg" alt="">
                <h3>Mexican soslu Büyük</h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <p>250gr. tavuk , 400gr. makarna ve salata ile</p>
                <span>45.00 tl</span>
                <c:if test="${formAktifMi}">
                    <form:form action="/index.html?masaNo=${masaNo}" method="post" modelAttribute="sepet">
                        <form:input value="Mexican Soslu Büyük" path="urunAdi" style="display: none;"/>
                        <form:input value="45.0" path="urunFiyati" style="display: none;"/>
                        <form:input value="250gr. tavuk , 400gr. makarna ve salata ile." path="aciklama" style="display: none;"/>
                         <form:input value="${masaNo}" path="masaNumarasi" style="display: none;"/>
                        <button class="btn" type="submit">Sepete Ekle</button>
                    </form:form>
                    </c:if>
            </div>

            <div class="box">
                <a href="#" class="fas fa-heart"></a>
                <a href="#" class="fas fa-eye"></a>
                <img src="images/yiyecekler/domates.jpg" alt="">
                <h3>Domates soslu Standart</h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <p>150gr. tavuk , 250gr. makarna ve salata ile</p>
                <span>35.00 tl</span>
                <c:if test="${formAktifMi}">
                    <form:form action="/index.html?masaNo=${masaNo}" method="post" modelAttribute="sepet">
                        <form:input value="Domates Soslu Standart" path="urunAdi" style="display: none;"/>
                        <form:input value="35.0" path="urunFiyati" style="display: none;"/>
                        <form:input value="150gr. tavuk , 250gr. makarna ve salata ile" path="aciklama" style="display: none;"/>
                         <form:input value="${masaNo}" path="masaNumarasi" style="display: none;"/>
                        <button class="btn" type="submit">Sepete Ekle</button>
                    </form:form>
                    </c:if>
            </div>
            <div class="box">
                <a href="#" class="fas fa-heart"></a>
                <a href="#" class="fas fa-eye"></a>
                <img src="images/yiyecekler/domates.jpg" alt="">
                <h3>Domates soslu Büyük</h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <p>250gr. tavuk , 400gr. makarna ve salata ile</p>
                <span>45.00 tl</span>
                <c:if test="${formAktifMi}">
                    <form:form action="/index.html?masaNo=${masaNo}" method="post" modelAttribute="sepet">
                        <form:input value="Domates Soslu Büyük" path="urunAdi" style="display: none;"/>
                        <form:input value="45.0" path="urunFiyati" style="display: none;"/>
                        <form:input value="250gr. tavuk , 400gr. makarna ve salata ile." path="aciklama" style="display: none;"/>
                         <form:input value="${masaNo}" path="masaNumarasi" style="display: none;"/>
                        <button class="btn" type="submit">Sepete Ekle</button>
                    </form:form>
                    </c:if>
            </div>

            <div class="box">
                <a href="#" class="fas fa-heart"></a>
                <a href="#" class="fas fa-eye"></a>
                <img src="images/yiyecekler/bbq makrna.jpg" alt="">
                <h3>Soya soslu Standart</h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <p>150gr. tavuk , 250gr. makarna ve salata ile</p>
                <span>35.00 tl</span>
                <c:if test="${formAktifMi}">
                    <form:form action="/index.html?masaNo=${masaNo}" method="post" modelAttribute="sepet">
                        <form:input value="Soya Soslu Standart" path="urunAdi" style="display: none;"/>
                        <form:input value="35.0" path="urunFiyati" style="display: none;"/>
                        <form:input value="150gr. tavuk , 250gr. makarna ve salata ile" path="aciklama" style="display: none;"/>
                         <form:input value="${masaNo}" path="masaNumarasi" style="display: none;"/>
                        <button class="btn" type="submit">Sepete Ekle</button>
                    </form:form>
                    </c:if>
            </div>
            <div class="box">
                <a href="#" class="fas fa-heart"></a>
                <a href="#" class="fas fa-eye"></a>
                <img src="images/yiyecekler/bbq makrna.jpg" alt="">
                <h3>Soya soslu Büyük</h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <p>250gr. tavuk , 400gr. makarna ve salata ile</p>
                <span>45.00 tl</span>
                <c:if test="${formAktifMi}">
                    <form:form action="/index.html?masaNo=${masaNo}" method="post" modelAttribute="sepet">
                        <form:input value="Soya Soslu Büyük" path="urunAdi" style="display: none;"/>
                        <form:input value="45.0" path="urunFiyati" style="display: none;"/>
                        <form:input value="250gr. tavuk , 400gr. makarna ve salata ile." path="aciklama" style="display: none;"/>
                         <form:input value="${masaNo}" path="masaNumarasi" style="display: none;"/>
                        <button class="btn" type="submit">Sepete Ekle</button>
                    </form:form>
                    </c:if>
            </div>
            <div class="box">
                <a href="#" class="fas fa-heart"></a>
                <a href="#" class="fas fa-eye"></a>
                <img src="images/yiyecekler/krema acı.jpg" weight="600" height="600">
                <h3>Kremalı Acılı Standart</h3>
                <br><br>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <p>150gr. tavuk , 250gr. makarna ve salata ile</p>
                <span>35.00 tl</span>
                <c:if test="${formAktifMi}">
                    <form:form action="/index.html?masaNo=${masaNo}" method="post" modelAttribute="sepet">
                        <form:input value="Kremalı Acılı Standart" path="urunAdi" style="display: none;"/>
                        <form:input value="35.0" path="urunFiyati" style="display: none;"/>
                        <form:input value="150gr. tavuk , 250gr. makarna ve salata ile" path="aciklama" style="display: none;"/>
                         <form:input value="${masaNo}" path="masaNumarasi" style="display: none;"/>
                        <button class="btn" type="submit">Sepete Ekle</button>
                    </form:form>
                    </c:if>
            </div>
            <div class="box">
                <a href="#" class="fas fa-heart"></a>
                <a href="#" class="fas fa-eye"></a>
                <img src="images/yiyecekler/krema acı.jpg" weight="600" height="600">
                <h3>Kremalı Acılı Büyük</h3>
                <br><br>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <p>250gr. tavuk , 400gr. makarna ve salata ile</p>
                <span>45.00 tl</span>
                <c:if test="${formAktifMi}">
                    <form:form action="/index.html?masaNo=${masaNo}" method="post" modelAttribute="sepet">
                        <form:input value="Kremalı Acılı Büyük" path="urunAdi" style="display: none;"/>
                        <form:input value="45.0" path="urunFiyati" style="display: none;"/>
                        <form:input value="250gr. tavuk , 400gr. makarna ve salata ile." path="aciklama" style="display: none;"/>
                         <form:input value="${masaNo}" path="masaNumarasi" style="display: none;"/>
                        <button class="btn" type="submit">Sepete Ekle</button>
                    </form:form>
                    </c:if>
            </div>
            <div class="box">
                <a href="#" class="fas fa-heart"></a>
                <a href="#" class="fas fa-eye"></a>
                <img src="images/yiyecekler/patatesli-menü.jpeg" alt=""> <!-- yenı resım eklenecek -->
                <h3>soslu tavuk+patates+salata</h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <p>150 gr. tavuk , baharatlı patates kızartması ve salata ile</p>
                <span>35.00 tl</span>
                <c:if test="${formAktifMi}">
                    <form:form action="/index.html?masaNo=${masaNo}" method="post" modelAttribute="sepet">
                        <form:input value="soslu tavuk + patates + salata" path="urunAdi" style="display: none;"/>
                        <form:input value="35.0" path="urunFiyati" style="display: none;"/>
                        <form:input value="150gr. tavuk , 250gr. makarna ve salata ile" path="aciklama" style="display: none;"/>
                         <form:input value="${masaNo}" path="masaNumarasi" style="display: none;"/>
                        <button class="btn" type="submit">Sepete Ekle</button>
                    </form:form>
                    </c:if>
            </div>

        </div>

        <h3 class="sub-heading">FrenchTacos</h3>
        <h1 class="heading"> menü </h1>

        <div class="box-container" id="tacos">

            <div class="box">
                <a href="#" class="fas fa-heart"></a>
                <a href="#" class="fas fa-eye"></a>
                <img src="images/yiyecekler/Screenshot 2022-03-16 144422.jpg" alt="">
                <h3>Classic tacos Medium</h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <p>patates, tavuk, yeşil zeytin, kırmızı biber , özel peynir sosu</p>
                <span>30.00 tl</span>
                <c:if test="${formAktifMi}">
                    <form:form action="/index.html?masaNo=${masaNo}" method="post" modelAttribute="sepet">
                        <form:input value="Classic tacos Medium" path="urunAdi" style="display: none;"/>
                        <form:input value="30.0" path="urunFiyati" style="display: none;"/>
                        <form:input value="patates, tavuk, yeşil zeytin, kırmızı biber , özel peynir sosu" path="aciklama" style="display: none;"/>
                         <form:input value="${masaNo}" path="masaNumarasi" style="display: none;"/>
                        <button class="btn" type="submit">Sepete Ekle</button>
                    </form:form>
                    </c:if>
            </div>
            <div class="box">
                <a href="#" class="fas fa-heart"></a>
                <a href="#" class="fas fa-eye"></a>
                <img src="images/yiyecekler/Screenshot 2022-03-16 144422.jpg" alt="">
                <h3>Classic tacos XL</h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <p>patates, tavuk, yeşil zeytin, kırmızı biber , özel peynir sosu</p>
                <span>40.00 tl</span>
                <c:if test="${formAktifMi}">
                    <form:form action="/index.html?masaNo=${masaNo}" method="post" modelAttribute="sepet">
                        <form:input value="Classic tacos XL" path="urunAdi" style="display: none;"/>
                        <form:input value="40.0" path="urunFiyati" style="display: none;"/>
                        <form:input value="patates, tavuk, yeşil zeytin, kırmızı biber , özel peynir sosu" path="aciklama" style="display: none;"/>
                         <form:input value="${masaNo}" path="masaNumarasi" style="display: none;"/>
                        <button class="btn" type="submit">Sepete Ekle</button>
                    </form:form>
                    </c:if>
            </div>

            <div class="box">
                <a href="#" class="fas fa-heart"></a>
                <a href="#" class="fas fa-eye"></a>
                <img src="images/yiyecekler/bbqtacos-1024x665.jpg" alt="">
                <h3>BBQ tacos Medium</h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <p>patates, tavuk, yeşil zeytin, kırmızı biber , özel peynir sosu</p>
                <span>33.00 tl</span>
                <c:if test="${formAktifMi}">
                    <form:form action="/index.html?masaNo=${masaNo}" method="post" modelAttribute="sepet">
                        <form:input value="BBQ tacos Medium" path="urunAdi" style="display: none;"/>
                        <form:input value="33.0" path="urunFiyati" style="display: none;"/>
                        <form:input value="patates, tavuk, yeşil zeytin, kırmızı biber , özel peynir sosu" path="aciklama" style="display: none;"/>
                         <form:input value="${masaNo}" path="masaNumarasi" style="display: none;"/>
                        <button class="btn" type="submit">Sepete Ekle</button>
                    </form:form>
                    </c:if>
            </div>
            <div class="box">
                <a href="#" class="fas fa-heart"></a>
                <a href="#" class="fas fa-eye"></a>
                <img src="images/yiyecekler/bbqtacos-1024x665.jpg" alt="">
                <h3>BBQ tacos XL</h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <p>patates, tavuk, yeşil zeytin, kırmızı biber , özel peynir sosu</p>
                <span>43.00 tl</span>
                <c:if test="${formAktifMi}">
                    <form:form action="/index.html?masaNo=${masaNo}" method="post" modelAttribute="sepet">
                        <form:input value="BBQ tacos XL" path="urunAdi" style="display: none;"/>
                        <form:input value="43.0" path="urunFiyati" style="display: none;"/>
                        <form:input value="patates, tavuk, yeşil zeytin, kırmızı biber , özel peynir sosu" path="aciklama" style="display: none;"/>
                         <form:input value="${masaNo}" path="masaNumarasi" style="display: none;"/>
                        <button class="btn" type="submit">Sepete Ekle</button>
                    </form:form>
                    </c:if>
            </div>

            <div class="box">
                <a href="#" class="fas fa-heart"></a>
                <a href="#" class="fas fa-eye"></a>
                <img src="images/yiyecekler/pesto.jpg" alt="">
                <h3>Pesto tacos  Medium</h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <p>patates, tavuk, yeşil zeytin, kırmızı biber , özel peynir sosu</p>
                <span>33.00 tl</span>
                <c:if test="${formAktifMi}">
                    <form:form action="/index.html?masaNo=${masaNo}" method="post" modelAttribute="sepet">
                        <form:input value="Pesto tacos Medium" path="urunAdi" style="display: none;"/>
                        <form:input value="33.0" path="urunFiyati" style="display: none;"/>
                        <form:input value="patates, tavuk, yeşil zeytin, kırmızı biber , özel peynir sosu" path="aciklama" style="display: none;"/>
                         <form:input value="${masaNo}" path="masaNumarasi" style="display: none;"/>
                        <button class="btn" type="submit">Sepete Ekle</button>
                    </form:form>
                    </c:if>
            </div>
            <div class="box">
                <a href="#" class="fas fa-heart"></a>
                <a href="#" class="fas fa-eye"></a>
                <img src="images/yiyecekler/pesto.jpg" alt="">
                <h3>Pesto tacos  XL</h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <p>patates, tavuk, yeşil zeytin, kırmızı biber , özel peynir sosu</p>
                <span>43.00 tl</span>
                <c:if test="${formAktifMi}">
                    <form:form action="/index.html?masaNo=${masaNo}" method="post" modelAttribute="sepet">
                        <form:input value="Pesto tacos XL" path="urunAdi" style="display: none;"/>
                        <form:input value="43.0" path="urunFiyati" style="display: none;"/>
                        <form:input value="patates, tavuk, yeşil zeytin, kırmızı biber , özel peynir sosu" path="aciklama" style="display: none;"/>
                         <form:input value="${masaNo}" path="masaNumarasi" style="display: none;"/>
                        <button class="btn" type="submit">Sepete Ekle</button>
                    </form:form>
                    </c:if>
            </div>

            <div class="box">
                <a href="#" class="fas fa-heart"></a>
                <a href="#" class="fas fa-eye"></a>
                <img src="images/yiyecekler/acili tacos.jpg" alt="">
                <h3>Acılı tacos Medium</h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <p>patates, tavuk, yeşil zeytin, kırmızı biber , özel peynir sosu</p>
                <span>33.00 tl</span>
                <c:if test="${formAktifMi}">
                    <form:form action="/index.html?masaNo=${masaNo}" method="post" modelAttribute="sepet">
                        <form:input value="Acılı tacos Medium" path="urunAdi" style="display: none;"/>
                        <form:input value="33.0" path="urunFiyati" style="display: none;"/>
                        <form:input value="patates, tavuk, yeşil zeytin, kırmızı biber , özel peynir sosu" path="aciklama" style="display: none;"/>
                         <form:input value="${masaNo}" path="masaNumarasi" style="display: none;"/>
                        <button class="btn" type="submit">Sepete Ekle</button>
                    </form:form>
                    </c:if>
            </div>
            <div class="box">
                <a href="#" class="fas fa-heart"></a>
                <a href="#" class="fas fa-eye"></a>
                <img src="images/yiyecekler/acili tacos.jpg" alt="">
                <h3>Acılı tacos XL</h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <p>patates, tavuk, yeşil zeytin, kırmızı biber , özel peynir sosu</p>
                <span>43.00 tl</span>
                <c:if test="${formAktifMi}">
                    <form:form action="/index.html?masaNo=${masaNo}" method="post" modelAttribute="sepet">
                        <form:input value="Acılı tacos XL" path="urunAdi" style="display: none;"/>
                        <form:input value="43.0" path="urunFiyati" style="display: none;"/>
                        <form:input value="patates, tavuk, yeşil zeytin, kırmızı biber , özel peynir sosu" path="aciklama" style="display: none;"/>
                         <form:input value="${masaNo}" path="masaNumarasi" style="display: none;"/>
                        <button class="btn" type="submit">Sepete Ekle</button>
                    </form:form>
                    </c:if>
            </div>
        </div>
            <h3 class="sub-heading">Tavuk Wrap</h3>
            <h1 class="heading"> menü </h1>
    
            <div class="box-container" id="wrap">
            <div class="box">
                <a href="#" class="fas fa-heart"></a>
                <a href="#" class="fas fa-eye"></a>
                <img src="images/yiyecekler/wrap patates.jpg" alt="">
                <h3>classic wrap+patates</h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <p>sotelenmiş tavuk , yeşillik, mısır ve kaşar ile</p>
                <span>35.00 tl</span>
                <c:if test="${formAktifMi}">
                    <form:form action="/index.html?masaNo=${masaNo}" method="post" modelAttribute="sepet">
                        <form:input value="classic wrap + patates" path="urunAdi" style="display: none;"/>
                        <form:input value="35.0" path="urunFiyati" style="display: none;"/>
                        <form:input value="sotelenmiş tavuk , yeşillik, mısır ve kaşar ile" path="aciklama" style="display: none;"/>
                         <form:input value="${masaNo}" path="masaNumarasi" style="display: none;"/>
                        <button class="btn" type="submit">Sepete Ekle</button>
                    </form:form>
                    </c:if>
            </div>
            <div class="box">
                <a href="#" class="fas fa-heart"></a>
                <a href="#" class="fas fa-eye"></a>
                <img src="images/yiyecekler/bbq menu tacos.jpg" alt="">
                <h3>BBQ wrap+patates</h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <p>sotelenmiş tavuk , yeşillik, mısır ve kaşar ile</p>
                <span>35.00 tl</span>
                <c:if test="${formAktifMi}">
                    <form:form action="/index.html?masaNo=${masaNo}" method="post" modelAttribute="sepet">
                        <form:input value="BBQ wrap + patates" path="urunAdi" style="display: none;"/>
                        <form:input value="35.0" path="urunFiyati" style="display: none;"/>
                        <form:input value="sotelenmiş tavuk , yeşillik, mısır ve kaşar ile" path="aciklama" style="display: none;"/>
                         <form:input value="${masaNo}" path="masaNumarasi" style="display: none;"/>
                        <button class="btn" type="submit">Sepete Ekle</button>
                    </form:form>
                    </c:if>
            </div>
            <div class="box">
                <a href="#" class="fas fa-heart"></a>
                <a href="#" class="fas fa-eye"></a>
                <img src="images/yiyecekler/acili wrap.jpg" alt="">
                <h3>Acılı wrap+patates</h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <p>sotelenmiş tavuk , yeşillik, mısır ve kaşar ile</p>
                <span>35.00 tl</span>
                <c:if test="${formAktifMi}">
                    <form:form action="/index.html?masaNo=${masaNo}" method="post" modelAttribute="sepet">
                        <form:input value="Acılı wrap + patates" path="urunAdi" style="display: none;"/>
                        <form:input value="35.0" path="urunFiyati" style="display: none;"/>
                        <form:input value="sotelenmiş tavuk , yeşillik, mısır ve kaşar ile" path="aciklama" style="display: none;"/>
                         <form:input value="${masaNo}" path="masaNumarasi" style="display: none;"/>
                        <button class="btn" type="submit">Sepete Ekle</button>
                    </form:form>
                    </c:if>
            </div>
            <div class="box">
                <a href="#" class="fas fa-heart"></a>
                <a href="#" class="fas fa-eye"></a>
                <img src="images/yiyecekler/wrap patates.jpg" alt="">
                <h3>Pesto wrap +patates</h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <p>sotelenmiş tavuk , yeşillik, mısır ve kaşar ile</p>
                <span>35.00 tl</span>
                <c:if test="${formAktifMi}">
                    <form:form action="/index.html?masaNo=${masaNo}" method="post" modelAttribute="sepet">
                        <form:input value="Pesto wrap + patates" path="urunAdi" style="display: none;"/>
                        <form:input value="35.0" path="urunFiyati" style="display: none;"/>
                        <form:input value="sotelenmiş tavuk , yeşillik, mısır ve kaşar ile" path="aciklama" style="display: none;"/>
                         <form:input value="${masaNo}" path="masaNumarasi" style="display: none;"/>
                        <button class="btn" type="submit">Sepete Ekle</button>
                    </form:form>
                    </c:if>
            </div>
        </div>
      


        <h3 class="sub-heading">Avantajlı</h3>
        <h1 class="heading">Menüler</h1>

        <div class="box-container" id="avantaj">

            <div class="box">
                <div class="image">
                    <img src="images/yiyecekler/doyurunbeni-lezzet-dolu-menu.png" alt=""> <!-- yenı resım eklenecek -->
                    <a href="#" class="fas fa-heart"></a>
                    <a href="#" class="fas fa-eye"></a>
                </div>
                <div class="content">
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                    <h3>avantaj menü</h3>
                    <p>soslu tavuk(150 gr)+Makarna(250 gr)+baharatlı patates kızartması+Kutu içecek(200 ml)</p>
                    
                    <span class="price">49.50 tl</span>
                    <c:if test="${formAktifMi}">
                        <form:form action="/index.html?masaNo=${masaNo}" method="post" modelAttribute="sepet">
                            <form:input value="avantaj menü" path="urunAdi" style="display: none;"/>
                            <form:input value="49.50" path="urunFiyati" style="display: none;"/>
                            <form:input value="soslu tavuk(150 gr)+Makarna(250 gr)+baharatlı patates kızartması+Kutu içecek(200 ml)" path="aciklama" style="display: none;"/>
                             <form:input value="${masaNo}" path="masaNumarasi" style="display: none;"/>
                            <button class="btn" type="submit">Sepete Ekle</button>
                        </form:form>
                        </c:if>
                </div>
            </div>

            <div class="box">
                <div class="image">
                    <img src="images/yiyecekler/doyurunbeni-lezzet-dolu-menu.png" alt=""> <!-- yenı resım eklenecek -->
                    <a href="#" class="fas fa-heart"></a>
                    <a href="#" class="fas fa-eye"></a>
                </div>
                <div class="content">
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                    <h3>Sporcu menü</h3>
                    <p>soslu tavuk(250 gr)+Makarna(250 gr)+salata+Kutu içecek(200 ml)</p>
                    <br><br>
                    <span class="price">58.50 tl</span>
                    <c:if test="${formAktifMi}">
                        <form:form action="/index.html?masaNo=${masaNo}" method="post" modelAttribute="sepet">
                            <form:input value="Sporcu menü" path="urunAdi" style="display: none;"/>
                            <form:input value="58.50" path="urunFiyati" style="display: none;"/>
                            <form:input value="soslu tavuk(250 gr)+Makarna(250 gr)+salata+Kutu içecek(200 ml)" path="aciklama" style="display: none;"/>
                             <form:input value="${masaNo}" path="masaNumarasi" style="display: none;"/>
                            <button class="btn" type="submit">Sepete Ekle</button>
                        </form:form>
                        </c:if>
                </div>
            </div>

            <div class="box">
                <div class="image">
                    <img src="images/yiyecekler/doyurunbeni-lezzet-dolu-menu.png" alt=""> <!-- yenı resım eklenecek -->
                    <a href="#" class="fas fa-heart"></a>
                    <a href="#" class="fas fa-eye"></a>
                </div>
                <div class="content">
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                    <h3>soslu tavuk menü</h3>
                    <p>soslu tavuk(250 gr)+Makarna(250 gr)+baharatlı patates kızartması+salata+Kutu içecek(200 ml)</p>
                  
                    <span class="price">56.50 tl</span>
                    <c:if test="${formAktifMi}">
                        <form:form action="/index.html?masaNo=${masaNo}" method="post" modelAttribute="sepet">
                            <form:input value="soslu tavuk menü" path="urunAdi" style="display: none;"/>
                            <form:input value="56.50" path="urunFiyati" style="display: none;"/>
                            <form:input value="soslu tavuk(250 gr)+Makarna(250 gr)+baharatlı patates kızartması+salata+Kutu içecek(200 ml)" path="aciklama" style="display: none;"/>
                             <form:input value="${masaNo}" path="masaNumarasi" style="display: none;"/>
                            <button class="btn" type="submit">Sepete Ekle</button>
                        </form:form>
                        </c:if>
                </div>
            </div>

            <div class="box">
                <div class="image">
                    <img src="images/yiyecekler/WhatsApp Image 2022-03-16 at 6.26.42 PM.jpeg" alt="">
                    <a href="#" class="fas fa-heart"></a>
                    <a href="#" class="fas fa-eye"></a>
                </div>
                <div class="content">
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                    <h3>Medium tacos menü</h3>
                    <p>Medium tacos+patates kızartması+Kutu içecek(200 ml)</p>
              
                    <span class="price">42.50 tl</span>
                    <c:if test="${formAktifMi}">
                        <form:form action="/index.html?masaNo=${masaNo}" method="post" modelAttribute="sepet">
                            <form:input value="Medium tacos menü" path="urunAdi" style="display: none;"/>
                            <form:input value="42.50" path="urunFiyati" style="display: none;"/>
                            <form:input value="Medium tacos+patates kızartması+Kutu içecek(200 ml)" path="aciklama" style="display: none;"/>
                             <form:input value="${masaNo}" path="masaNumarasi" style="display: none;"/>
                            <button class="btn" type="submit">Sepete Ekle</button>
                        </form:form>
                        </c:if>
                </div>
            </div>

            <div class="box">
                <div class="image">
                    <img src="images/yiyecekler/WhatsApp Image 2022-03-16 at 6.26.42 PM.jpeg" alt="">
                    <a href="#" class="fas fa-heart"></a>
                    <a href="#" class="fas fa-eye"></a>
                </div>
                <div class="content">
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                    <h3>XL tacos menü</h3>
                    <p>XLtacos+patates kızartması+Kutu içecek(200 ml)</p>
                   
                    <span class="price">51.50 tl</span>
                    <c:if test="${formAktifMi}">
                        <form:form action="/index.html?masaNo=${masaNo}" method="post" modelAttribute="sepet">
                            <form:input value="XL tacos menü" path="urunAdi" style="display: none;"/>
                            <form:input value="51.50" path="urunFiyati" style="display: none;"/>
                            <form:input value="XL tacos+patates kızartması+Kutu içecek(200 ml)" path="aciklama" style="display: none;"/>
                             <form:input value="${masaNo}" path="masaNumarasi" style="display: none;"/>
                            <button class="btn" type="submit">Sepete Ekle</button>
                        </form:form>
                        </c:if>
                </div>
            </div>
            <div class="box">
                <div class="image">
                    <img src="images/yiyecekler/bbq menu tacos.jpg" alt="">
                    <a href="#" class="fas fa-heart"></a>
                    <a href="#" class="fas fa-eye"></a>
                </div>
                <div class="content">
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                    <h3>2'Li Wrap Menü</h3>
                    <p>Seçilen iki adet wrap+baharatlı patates kızartması ile </p>
                    
                    <span class="price">45.00 tl</span>
                    <c:if test="${formAktifMi}">
                        <form:form action="/index.html?masaNo=${masaNo}" method="post" modelAttribute="sepet">
                            <form:input value="2'Li Wrap Menü" path="urunAdi" style="display: none;"/>
                            <form:input value="45.0" path="urunFiyati" style="display: none;"/>
                            <form:input value="Seçilen iki adet wrap+baharatlı patates kızartması ile" path="aciklama" style="display: none;"/>
                             <form:input value="${masaNo}" path="masaNumarasi" style="display: none;"/>
                            <button class="btn" type="submit">Sepete Ekle</button>
                        </form:form>
                        </c:if>
                </div>
            </div>
        </div>
            <h3 class="sub-heading">Extra's</h3>
            <h1 class="heading"> menü </h1>
    
            <div class="box-container" id="extra">

            <div class="box">
                <div class="image">
                    <img src="images/yiyecekler/shutterstock_510881971.jpg" alt="">
                    <a href="#" class="fas fa-heart"></a>
                    <a href="#" class="fas fa-eye"></a>
                </div>
                <div class="content">
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                    <h3>Patates kızartması</h3>
                    <p>Küçük boy</p>
              
                    <span class="price">15 tl</span>
                    <c:if test="${formAktifMi}">
                        <form:form action="/index.html?masaNo=${masaNo}" method="post" modelAttribute="sepet">
                            <form:input value="Patates kızartması" path="urunAdi" style="display: none;"/>
                            <form:input value="15.0" path="urunFiyati" style="display: none;"/>
                            <form:input value="Küçük boy" path="aciklama" style="display: none;"/>
                             <form:input value="${masaNo}" path="masaNumarasi" style="display: none;"/>
                            <button class="btn" type="submit">Sepete Ekle</button>
                        </form:form>
                        </c:if>
                </div>
            </div>
        

            <div class="box">
                <div class="image">
                    <img src="images/yiyecekler/shutterstock_510881971.jpg" alt="">
                    <a href="#" class="fas fa-heart"></a>
                    <a href="#" class="fas fa-eye"></a>
                </div>
                <div class="content">
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                    <h3>Patates kızartması</h3>
                    <p>Büyük boy</p>
                    
                    <span class="price">20 tl</span>
                    <c:if test="${formAktifMi}">
                        <form:form action="/index.html?masaNo=${masaNo}" method="post" modelAttribute="sepet">
                            <form:input value="Patates kızartması" path="urunAdi" style="display: none;"/>
                            <form:input value="20.0" path="urunFiyati" style="display: none;"/>
                            <form:input value="Büyük boy" path="aciklama" style="display: none;"/>
                             <form:input value="${masaNo}" path="masaNumarasi" style="display: none;"/>
                            <button class="btn" type="submit">Sepete Ekle</button>
                        </form:form>
                        </c:if>
                </div>
            </div>
            <div class="box">
                <div class="image">
                    <img src="images/yiyecekler/mevsim_salata.jpg" alt="">
                    <a href="#" class="fas fa-heart"></a>
                    <a href="#" class="fas fa-eye"></a>
                </div>
                <div class="content">
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                    <h3>Mevsim salata</h3>
                    <p>Küçük boy</p>
                  
                    <span class="price">10 tl</span>
                    <c:if test="${formAktifMi}">
                        <form:form action="/index.html?masaNo=${masaNo}" method="post" modelAttribute="sepet">
                            <form:input value="Mevsim salata" path="urunAdi" style="display: none;"/>
                            <form:input value="10.0" path="urunFiyati" style="display: none;"/>
                            <form:input value="Küçük boy" path="aciklama" style="display: none;"/>
                             <form:input value="${masaNo}" path="masaNumarasi" style="display: none;"/>
                            <button class="btn" type="submit">Sepete Ekle</button>
                        </form:form>
                        </c:if>
                </div>
            </div>


            <div class="box">
                <div class="image">
                    <img src="images/yiyecekler/mevsim_salata.jpg" alt="">
                    <a href="#" class="fas fa-heart"></a>
                    <a href="#" class="fas fa-eye"></a>
                </div>
                <div class="content">
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                    <h3>Mevsim salata</h3>
                    <p>Büyük boy</p>
                   
                    <span class="price">20 tl</span>
                    <c:if test="${formAktifMi}">
                        <form:form action="/index.html?masaNo=${masaNo}" method="post" modelAttribute="sepet">
                            <form:input value="Mevsim salata" path="urunAdi" style="display: none;"/>
                            <form:input value="20.0" path="urunFiyati" style="display: none;"/>
                            <form:input value="Büyük boy" path="aciklama" style="display: none;"/>
                             <form:input value="${masaNo}" path="masaNumarasi" style="display: none;"/>
                            <button class="btn" type="submit">Sepete Ekle</button>
                        </form:form>
                        </c:if>
                </div>
            </div>

            <div class="box">
                <div class="image">
                    <img src="images/yiyecekler/ton-balikli-peynirli-salata-300x300.jpeg" alt="">
                    <a href="#" class="fas fa-heart"></a>
                    <a href="#" class="fas fa-eye"></a>
                </div>
                <div class="content">
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                    <h3>Ton balık salata</h3>
                    <p>100gr ton balığı ve mevsim yeşillikleri</p>
                
                    <span class="price">35 tl</span>
                    <c:if test="${formAktifMi}">
                        <form:form action="/index.html?masaNo=${masaNo}" method="post" modelAttribute="sepet">
                            <form:input value="Ton balık salata" path="urunAdi" style="display: none;"/>
                            <form:input value="35.0" path="urunFiyati" style="display: none;"/>
                            <form:input value="100gr ton balığı ve mevsim yeşillikleri" path="aciklama" style="display: none;"/>
                             <form:input value="${masaNo}" path="masaNumarasi" style="display: none;"/>
                            <button class="btn" type="submit">Sepete Ekle</button>
                        </form:form>
                        </c:if>
                </div>
            </div>

        </div>
        <h3 class="sub-heading">İçecekler</h3>
        <h1 class="heading"> menu </h1>

        <div class="box-container" id="icecek">

            <div class="box">
                <a href="#" class="fas fa-heart"></a>
                <a href="#" class="fas fa-eye"></a>
                <img src="images/içecekler/Coca-Cola_Orijinal_350x220px.jpg" alt="">
                <h3>coca cola</h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <span>15.00 tl</span>
                <c:if test="${formAktifMi}">
                    <form:form action="/index.html?masaNo=${masaNo}" method="post" modelAttribute="sepet">
                        <form:input value="coca cola" path="urunAdi" style="display: none;"/>
                        <form:input value="15.0" path="urunFiyati" style="display: none;"/>
                        <form:input value="" path="aciklama" style="display: none;"/>
                         <form:input value="${masaNo}" path="masaNumarasi" style="display: none;"/>
                        <button class="btn" type="submit">Sepete Ekle</button>
                    </form:form>
                    </c:if>
            </div>
            <div class="box">
                <a href="#" class="fas fa-heart"></a>
                <a href="#" class="fas fa-eye"></a>
                <img src="images/içecekler/FANTA_C_330.png" alt="">
                <h3>Fanta</h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <span>15.00 tl</span>
                <c:if test="${formAktifMi}">
                    <form:form action="/index.html?masaNo=${masaNo}" method="post" modelAttribute="sepet">
                        <form:input value="Fanta" path="urunAdi" style="display: none;"/>
                        <form:input value="15.0" path="urunFiyati" style="display: none;"/>
                        <form:input value="" path="aciklama" style="display: none;"/>
                         <form:input value="${masaNo}" path="masaNumarasi" style="display: none;"/>
                        <button class="btn" type="submit">Sepete Ekle</button>
                    </form:form>
                    </c:if>
            </div>
            <div class="box">
                <a href="#" class="fas fa-heart"></a>
                <a href="#" class="fas fa-eye"></a>
                <img src="images/içecekler/Sprite_350x220px.jpg" alt="">
                <h3>Sprite</h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <span>12.00 tl</span>
                <c:if test="${formAktifMi}">
                    <form:form action="/index.html?masaNo=${masaNo}" method="post" modelAttribute="sepet">
                        <form:input value="Sprite" path="urunAdi" style="display: none;"/>
                        <form:input value="12.0" path="urunFiyati" style="display: none;"/>
                        <form:input value="" path="aciklama" style="display: none;"/>
                         <form:input value="${masaNo}" path="masaNumarasi" style="display: none;"/>
                        <button class="btn" type="submit">Sepete Ekle</button>
                    </form:form>
                    </c:if>
            </div>
            <div class="box">
                <a href="#" class="fas fa-heart"></a>
                <a href="#" class="fas fa-eye"></a>
                <img src="images/içecekler/Fusetea_Seftali_350x220px.jpg" alt="">
                <h3>Fuse tea şeftali</h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <span>10.00 tl</span>
                <c:if test="${formAktifMi}">
                    <form:form action="/index.html?masaNo=${masaNo}" method="post" modelAttribute="sepet">
                        <form:input value="Fuse tea şeftali" path="urunAdi" style="display: none;"/>
                        <form:input value="10.0" path="urunFiyati" style="display: none;"/>
                        <form:input value="" path="aciklama" style="display: none;"/>
                         <form:input value="${masaNo}" path="masaNumarasi" style="display: none;"/>
                        <button class="btn" type="submit">Sepete Ekle</button>
                    </form:form>
                    </c:if>
            </div>
            <div class="box">
                <a href="#" class="fas fa-heart"></a>
                <a href="#" class="fas fa-eye"></a>
                <img src="images/içecekler/Fusetea_Limon_350x220px.jpg" alt="">
                <h3>Fuse tea limon</h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <span>10.00 tl</span>
                <c:if test="${formAktifMi}">
                    <form:form action="/index.html?masaNo=${masaNo}" method="post" modelAttribute="sepet">
                        <form:input value="Fuse tea limon" path="urunAdi" style="display: none;"/>
                        <form:input value="10.0" path="urunFiyati" style="display: none;"/>
                        <form:input value="" path="aciklama" style="display: none;"/>
                         <form:input value="${masaNo}" path="masaNumarasi" style="display: none;"/>
                        <button class="btn" type="submit">Sepete Ekle</button>
                    </form:form>
                    </c:if>
            </div>
            <div class="box">
                <a href="#" class="fas fa-heart"></a>
                <a href="#" class="fas fa-eye"></a>
                <img src="images/içecekler/Cappy_Atom_350x220px.jpg" alt="">
                <h3>cappy atom</h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <span>10.00 tl</span>
                <c:if test="${formAktifMi}">
                    <form:form action="/index.html?masaNo=${masaNo}" method="post" modelAttribute="sepet">
                        <form:input value="cappy atom" path="urunAdi" style="display: none;"/>
                        <form:input value="10.0" path="urunFiyati" style="display: none;"/>
                        <form:input value="" path="aciklama" style="display: none;"/>
                         <form:input value="${masaNo}" path="masaNumarasi" style="display: none;"/>
                        <button class="btn" type="submit">Sepete Ekle</button>
                    </form:form>
                    </c:if>
            </div>
            <div class="box">
                <a href="#" class="fas fa-heart"></a>
                <a href="#" class="fas fa-eye"></a>
                <img src="images/içecekler/Ayran_350x220px.jpg" alt="">
                <h3>Ayran</h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <span>6.00 tl</span>
                <c:if test="${formAktifMi}">
                    <form:form action="/index.html?masaNo=${masaNo}" method="post" modelAttribute="sepet">
                        <form:input value="Ayran" path="urunAdi" style="display: none;"/>
                        <form:input value="6.0" path="urunFiyati" style="display: none;"/>
                        <form:input value="" path="aciklama" style="display: none;"/>
                         <form:input value="${masaNo}" path="masaNumarasi" style="display: none;"/>
                        <button class="btn" type="submit">Sepete Ekle</button>
                    </form:form>
                    </c:if>
            </div>
            <div class="box">
                <a href="#" class="fas fa-heart"></a>
                <a href="#" class="fas fa-eye"></a>
                <img src="images/içecekler/Damla-Soda_350x220px.jpg" alt="">
                <h3>Soda</h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <span>5.00 tl</span>
                <c:if test="${formAktifMi}">
                    <form:form action="/index.html?masaNo=${masaNo}" method="post" modelAttribute="sepet">
                        <form:input value="Soda" path="urunAdi" style="display: none;"/>
                        <form:input value="5.0" path="urunFiyati" style="display: none;"/>
                        <form:input value="" path="aciklama" style="display: none;"/>
                         <form:input value="${masaNo}" path="masaNumarasi" style="display: none;"/>
                        <button class="btn" type="submit">Sepete Ekle</button>
                    </form:form>
                    </c:if>
            </div>
            <div class="box">
                <a href="#" class="fas fa-heart"></a>
                <a href="#" class="fas fa-eye"></a>
                <img src="images/içecekler/Damla-Su_350x220px.jpg" alt="">
                <h3>Su</h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <span>5.00 tl</span>
                <c:if test="${formAktifMi}">
                    <form:form action="/index.html?masaNo=${masaNo}" method="post" modelAttribute="sepet">
                        <form:input value="Su" path="urunAdi" style="display: none;"/>
                        <form:input value="5.0" path="urunFiyati" style="display: none;"/>
                        <form:input value="" path="aciklama" style="display: none;"/>
                         <form:input value="${masaNo}" path="masaNumarasi" style="display: none;"/>
                        <button class="btn" type="submit">Sepete Ekle</button>
                    </form:form>
                    </c:if>
            </div>
        </div>
    </section>
     <!-- hakkimizda bolumu -->

     <section class="hakimizda" id="hakimizda">

        <h3 class="sub-heading"> Hakkımızda </h3>
        <h1 class="heading" id="niye-biz"> Neden San French? </h1>

        <div class="row">

            <div class="image">
                <img src="images/sann.jpg" alt="">
            </div>

            <div class="content">
                <p> San French 01 Eylül 2021 yılında kuruldu. Tavuk Makarna ile başlayan San French zamanla yeni soslar
                    üreterek menüsünü
                    zenginleştirmiş olup Fransa'ya ait olan tacosu türk mutfağıyla bütünleştirip lezzetli bir yiyecek
                    ortaya getirerek bu alanda
                    Isparta'da kendini ispatlamıştar.</p>
                <p>San French yemeksepeti ve getir yemek kullanarak,paket servis hizmeti de vermektedir. Üstelik
                    kullanıcı yorumları ve
                    puanları ise sipariş vermek için oldukca etkilidir.</p>
                <p>Siz değerli misafirlerimiz restoranımıza ziyaret ettikçe mutlu olup , iyi hizmet vermek için
                    elimizden geleni yapmak için
                    çabalayoruz.</p>
                <div class="icons-container">
                    <div class="icons">
                        <i class="fas fa-shipping-fast"></i>
                        <span>Paket servis</span>

                    </div>
                    <div class="icons">
                        <i class="fas fa-headset"></i>
                        <span>Açılış-kapanış: 12.00-02.00</span>


                    </div>
                </div>
            </div>

        </div>

    </section>


    <!-- hakkımızda bolumu son -->

    <!-- musteri memunyeti basladi -->

    <!-- <section class="review" id="review">

        <h3 class="sub-heading">müşteri memnuniyeti</h3>
        <h1 class="heading">sizin düşünceleriniz bizim için çok önemli</h1>

        <div class="swiper-container kullanici">

            <div class="swiper-wrapper">

                <div class="swiper-slide slide">
                    <i class="fas fa-quote-right"></i>
                    <div class="user">
                        <img src="images/pic-1.png" alt="">
                        <div class="user-info">
                            <h3>Adem d.</h3>
                            <div class="stars">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                        </div>
                    </div>
                    <p>Tadı muhteşem ve sıcacık geldi.
                        Isparta gibi yerde işini iyi yapan işletme görmek şaşırttı doğrusu,
                        kurye arkadaşa da ayrıca teşekkür ederim.</p>
                    <br />
                    <br />
                    <br />
                    <br />

                </div>

                <div class="swiper-slide slide">
                    <i class="fas fa-quote-right"></i>
                    <div class="user">
                        <img src="images/pic-2.png" alt="">
                        <div class="user-info">
                            <h3>Ayşegül B.</h3>
                            <div class="stars">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star-half-alt"></i>
                            </div>
                        </div>
                    </div>
                    <p>Her şey mükemmel özellikle patatesler. İyi çalışmalar diliyorum kolay gelsin.</p>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    
                </div>

                <div class="swiper-slide slide">
                    <i class="fas fa-quote-right"></i>
                    <div class="user">
                        <img src="images/pic-4.png" alt="">
                        <div class="user-info">
                            <h3>Tuğçe A.</h3>
                            <div class="stars">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                        </div>
                    </div>
                    <p>2 gün geçmeden özlediğim tat her çeşidini yedim tavuklu makarnanın hepsi sıcak geldi hepsi özenle
                        yapılmış geldi hız desen yerinde kurye ayrıca belirtti açıklamayi dikkate aldıklarını ellerinize
                        sağlık.</p>
                    <br />
                    <br />
                </div>

                <div class="swiper-slide slide">
                    <i class="fas fa-quote-right"></i>
                    <div class="user">
                        <img src="images/pic-3.png" alt="">
                        <div class="user-info">
                            <h3>Mert C.</h3>
                            <div class="stars">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star-half-alt"></i>
                            </div>
                        </div>
                    </div>
                    <p>Gayet başarılı makarna ve tavuğu 2 gün üst üste sipariş verdim hem 15 dakikayı geçmedi gelmesi
                        hemde tad olarak çok iyiydi servis açısından zayıf biraz turşu çok az geliyor yanında.</p>
                    <br />
                    <br />
                </div>

            </div>

        </div>

    </section> -->

	<section class="review" id="review">
		<h3 class="sub-heading">müşteri memnuniyeti</h3>
        <h1 class="heading">sizin düşünceleriniz bizim için çok önemli</h1>
		<div class="swiper kullanici">
			<div class="swiper-wrapper">
				<div class="swiper-slide slide">					
					<div class="user">
						<img src="images/pic-3.png" alt="">
						<div class="user-info">
							<h3>Mert C.</h3>
							<div class="stars">
								<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
									class="fas fa-star"></i> <i class="fas fa-star"></i> <i
									class="fas fa-star-half-alt"></i>
							</div>
						</div>
					</div>
					<p>Gayet başarılı makarna ve tavuğu 2 gün üst üste sipariş
						verdim hem 15 dakikayı geçmedi gelmesi hemde tad olarak çok iyiydi
						servis açısından zayıf biraz turşu çok az geliyor yanında.</p>
					<br />
					<br />
				</div>
				<div class="swiper-slide slide">
                    <div class="user">
                        <img src="images/pic-4.png" alt="">
                        <div class="user-info">
                            <h3>Tuğçe A.</h3>
                            <div class="stars">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                        </div>
                    </div>
                    <p>2 gün geçmeden özlediğim tat her çeşidini yedim tavuklu makarnanın hepsi sıcak geldi hepsi özenle
                        yapılmış geldi hız desen yerinde kurye ayrıca belirtti açıklamayi dikkate aldıklarını ellerinize
                        sağlık.</p>           
                </div>
				<div class="swiper-slide slide">
                    <div class="user">
                        <img src="images/pic-2.png" alt="">
                        <div class="user-info">
                            <h3>Ayşegül B.</h3>
                            <div class="stars">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star-half-alt"></i>
                            </div>
                        </div>
                    </div>
                    <p>Her şey mükemmel özellikle patatesler. İyi çalışmalar diliyorum kolay gelsin.</p>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br/>
                </div>
				<div class="swiper-slide slide">
                    <div class="user">
                        <img src="images/pic-1.png" alt="">
                        <div class="user-info">
                            <h3>Adem d.</h3>
                            <div class="stars">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                        </div>
                    </div>
                    <p>Tadı muhteşem ve sıcacık geldi.
                        Isparta gibi yerde işini iyi yapan işletme görmek şaşırttı doğrusu,
                        kurye arkadaşa da ayrıca teşekkür ederim.</p>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </div>
				<div class="swiper-slide slide">					
					<div class="user">
						<img src="images/pic-3.png" alt="">
						<div class="user-info">
							<h3>Mert C.</h3>
							<div class="stars">
								<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
									class="fas fa-star"></i> <i class="fas fa-star"></i> <i
									class="fas fa-star-half-alt"></i>
							</div>
						</div>
					</div>
					<p>Gayet başarılı makarna ve tavuğu 2 gün üst üste sipariş
						verdim hem 15 dakikayı geçmedi gelmesi hemde tad olarak çok iyiydi
						servis açısından zayıf biraz turşu çok az geliyor yanında.</p>
					<br />
					<br />
				</div>
				<div class="swiper-slide slide">
                    <div class="user">
                        <img src="images/pic-4.png" alt="">
                        <div class="user-info">
                            <h3>Tuğçe A.</h3>
                            <div class="stars">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                        </div>
                    </div>
                    <p>2 gün geçmeden özlediğim tat her çeşidini yedim tavuklu makarnanın hepsi sıcak geldi hepsi özenle
                        yapılmış geldi hız desen yerinde kurye ayrıca belirtti açıklamayi dikkate aldıklarını ellerinize
                        sağlık.</p>           
                </div>
				<div class="swiper-slide slide">
                    <div class="user">
                        <img src="images/pic-2.png" alt="">
                        <div class="user-info">
                            <h3>Ayşegül B.</h3>
                            <div class="stars">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star-half-alt"></i>
                            </div>
                        </div>
                    </div>
                    <p>Her şey mükemmel özellikle patatesler. İyi çalışmalar diliyorum kolay gelsin.</p>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br/>
                </div>
				<div class="swiper-slide slide">
                    <div class="user">
                        <img src="images/pic-1.png" alt="">
                        <div class="user-info">
                            <h3>Adem d.</h3>
                            <div class="stars">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                        </div>
                    </div>
                    <p>Tadı muhteşem ve sıcacık geldi.
                        Isparta gibi yerde işini iyi yapan işletme görmek şaşırttı doğrusu,
                        kurye arkadaşa da ayrıca teşekkür ederim.</p>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </div>
			</div>
			<div class="swiper-pagination"></div>
		</div>
	</section>


	<!-- musteri memunyeti son-->

    <!-- siparis verme bolumu  -->

    <section class="order" id="order">

        <h3 class="sub-heading">REZERVASYON</h3>


        <form action="">

            <div class="inputBox">
                <div class="input">
                    <span>Adınız-Soyadınız</span>
                    <input type="text" placeholder="Ad-soyad yazınız">
                </div>
                <div class="input">
                    <span>telefon numaranız</span>
                    <input type="number" placeholder="numaranızı yazınız">
                </div>
            </div>
            <div class="inputBox">
                <div class="input">
                    <span>siparişiniz</span>
                    <input type="text" placeholder="yemek ismini giriniz">
                </div>
                <div class="input">
                    <span>ek sipariş</span>
                    <input type="test" placeholder="ek siparişiniz">
                </div>
            </div>
            <div class="inputBox">
                <div class="input">
                    <span>Sipariş Sayısı </span>
                    <input type="number" placeholder="sipariş adedi">
                </div>
                <div class="input">
                    <span>tarih ve saat</span>
                    <input type="datetime-local">
                </div>
            </div>
            <div class="inputBox">
                <div class="input">
                    <span>adres</span>
                    <textarea name="" placeholder="adres giriniz" id="" cols="30" rows="10"></textarea>
                </div>
                <div class="input">
                    <span>mesajınız</span>
                    <textarea name="" placeholder="mesajınızı giriniz" id="" cols="30" rows="10"></textarea>
                </div>
            </div>

            <input type="submit" value="Rezervasyon Oluştur" class="btn">

        </form>

    </section>

    <!-- siparis verme son -->

    <!-- footer bolumu basladı     -->

    <section class="footer" id="iletisim">

        <div class="box-container">

            <div class="box">
                <h3>Konum</h3>
                <p><iframe
                        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d197.12450099295626!2d30.552917507340236!3d37.76678539999999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14c5b58e2a94bb55%3A0x5193e20d8c83b412!2sSokak%20Lezzetleri!5e0!3m2!1str!2str!4v1647249929601!5m2!1str!2str"
                        width="240" height="200" style="border:0;" allowfullscreen="" loading="lazy"></iframe></p>
            </div>

            <div class="box">
                <h3>Anasayfa linkleri</h3>
                <a href="#home">anasayfa</a> 
                <a href="#menu">menü</a>
                <a href="#hakimizda">hakkımızda</a>
                <a href="#review">müşteri memnuniyeti</a>
                <a href="#order">Rezervasyon</a>
            </div>

            <div class="box">
                <h3>İletişim</h3>
                <a href="#">+905455620280</a>
                <a href="#">san.frenchh@gmail.com</a>
                <a href="#">merkez, isparta - 32200</a>
            </div>

            <div class="box">
                <h3>Bizi takip edin</h3>
                <a href="https://instagram.com/san.french?utm_medium=copy_link">instagram</a>
                <a href="https://getir.com/yemek/restoran/san-french-tacos-makarna-merkez-fatih-mah-merkez-isparta/">getir</a>
               
                <a href="https://www.yemeksepeti.com/san-french-tacos-tavuk-makarna-merkez-fatih-mah-isparta">Yemeksepeti</a>
                <a href="#"> Trendyol</a>
            </div>

        </div>

        <div class="credit"> <span><b> © 2021-2022 San French Tacos & Tavuk Makarna</b></span> </div>

    </section>

    <!-- footer bolumu son -->

    <!-- loader part  -->
    <div class="loader-container">
        <img src="images/loader.gif" alt="">
    </div>


    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

    <!-- custom js file link  -->
    <script src="js/script.js"></script>
    
   <script>
      var swiper = new Swiper(".mySwiper", {
        slidesPerView: 3,
        spaceBetween: 30,
        freeMode: true,
        pagination: {
          el: ".swiper-pagination",
          clickable: true,
        },
      });
    </script>
    
    <script>
      var swiper = new Swiper(".kullanici", {
        slidesPerView: 1,
        spaceBetween: 10,
        pagination: {
          el: ".swiper-pagination",
          clickable: true,
        },
        breakpoints: {
          640: {
            slidesPerView: 2,
            spaceBetween: 20,
          },
          768: {
            slidesPerView: 4,
            spaceBetween: 40,
          },
          1024: {
            slidesPerView: 5,
            spaceBetween: 50,
          },
        },
      });
    </script>

</body>

</html>