<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@ taglib prefix="form"
	uri="http://www.springframework.org/tags/form"%><%@taglib prefix="c"
	uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

	<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/sepet.css">
    <title>Sepet</title>
</head>

<body>
    <!-- header bolumu basladı     -->
    <header style="position:relative;">

        <div class="logo">
            <a href="index.html?masaNo=${masaNo}"><img src="images/logo.png"></a>
        </div>

        <div class="icons">
        	<a class="active" style="border-radius: .8rem; padding: .8rem"  href="/index.html?masaNo=${masaNo}">Anasayfa</a>
            <i class="fas fa-search" id="search-icon"></i>
            <a href="#" class="fas fa-heart"></a>

        </div>

    </header>
    <!-- header bolumu son-->

    <!-- arastir -->

    <form action="" id="search-form">
        <input type="search" placeholder="ara..." name="" id="search-box">
        <label for="search-box" class="fas fa-search"></label>
        <i class="fas fa-times" id="close"></i>
    </form>

    <div class="container-fluid">
    <div class="container my-5">
        <h3 class="text-center">${masaNo}</h3>
        <table class="table table-hover">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Ürün Adı</th>
                    <th scope="col">Açıklama</th>
                    <th scope="col">Fiyat</th>
                </tr>
            </thead>
            <tbody>
            <c:if test="${sepetUrunler.size() != 0}">
	            <c:forEach var="i" begin="0" end="${sepetUrunler.size()-1}">
	            	<tr>
	             	<th>${i+1}</th>
	             	<td>${sepetUrunler.get(i).getUrunAdi()}</td>
	                 <td>${sepetUrunler.get(i).getAciklama()}</td>
	                 <td>${sepetUrunler.get(i).getUrunFiyati()} TL</td>
	                 <td><a href="/sepet.html?masaNo=${masaNo}&urun=${sepetUrunler.get(i).getId()}" style="color: red; cursor: pointer;"><i class="fas fa-trash-alt"></i></a></td>
	                </tr>
	            </c:forEach>
            </c:if>
            	<tr>
             	<th></th>
             	<td></td>
                 <td class="text-end"><strong>Toplam Fiyat:</strong></td>
                 <td><strong>${fiyatToplam} TL</strong></td>
                 <td></td>
                </tr>
                <!-- <tr>
                    <th scope="row">1</th>
                    <td>Kremalı Fesleğenli Standart</td>
                    <td>150gr Tavuk + 250gr Makarna ve salata ile</td>
                    <td> 35 TL </td>
                </tr> -->

            </tbody>
        </table>
        <div class="text-center">
        	<a href="/sepeti-onayla?masaNo=${masaNo}" class="btn btn-success mb-4">Sepeti Onayla</a>
        </div>
    </div>
</div>

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
                <h3>Anasayfa</h3>
                <a href="/index.html">anasayfa</a>
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
                <a
                    href="https://getir.com/yemek/restoran/san-french-tacos-makarna-merkez-fatih-mah-merkez-isparta/">getir</a>

                <a
                    href="https://www.yemeksepeti.com/san-french-tacos-tavuk-makarna-merkez-fatih-mah-isparta">Yemeksepeti</a>
                <a href="#"> Trendyol</a>
            </div>

        </div>

        <div class="credit"> <span><b> © 2021-2022 San French Tacos & Tavuk Makarna</b></span> </div>

    </section>

    <!-- footer bolumu son -->

	<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
        integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
        integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
        crossorigin="anonymous"></script>
	
	<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

    <!-- custom js file link  -->
    <script src="js/script.js"></script>	

</body>

</html>