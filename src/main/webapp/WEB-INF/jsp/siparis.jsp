<%@ page language="java" contentType="text/html; charset=ISO-8859-9"
    pageEncoding="ISO-8859-9"%><%@taglib prefix="c"	uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-9">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<title>Siparişler</title>
</head>
<body>
	
	<a href="/dashboard" class="text-dark"><i class="fas fa-arrow-alt-circle-left fa-2x mt-2 ms-2"></i></a>
	<div class="container mt-3">
		
		<h3 class="text-center" style="text-transform: uppercase;">${masaNo}</h3>
		<table class="table table-hover">
            <thead>
                <tr>
                	<th scope="col"></th>
                    <th scope="col">#</th>
                    <th scope="col">Ürün Adı</th>
                    <th scope="col">Açıklama</th>
                    <th scope="col">Fiyat</th>
                </tr>
            </thead>
            <tbody>
            <c:if test="${siparisler.size() != 0}">
	            <c:forEach var="i" begin="0" end="${siparisler.size()-1}">
	            	<input id="checboxSize" type="hidden" value="${siparisler.size()}">
	            	<tr>
	            		<th><input id="checbox-${i}" type="checkbox" onclick="checboxOnClick('checbox-${i}')" value="${siparisler.get(i).getUrunFiyati()}"></th>
	             		<th>${i+1}</th>
	             		<td>${siparisler.get(i).getUrunAdi()}</td>
	                 	<td>${siparisler.get(i).getAciklama()}</td>
	                 	<td>${siparisler.get(i).getUrunFiyati()} TL</td>
	                 	<td><a href="/siparis.html?masaNo=${masaNo}&urun=${siparisler.get(i).getId()}" style="color: red; cursor: pointer;"><i class="fas fa-trash-alt"></i></a></td>
	                </tr>
	            </c:forEach>
            </c:if>
            	<tr>
            		<td></td>
	             	<th></th>
	             	<td></td>
	                <td class="text-end"><strong>Toplam Fiyat:</strong></td>
	                <td><strong>${fiyatToplamSiparis} TL</strong></td>
	                <td></td>
                </tr>
            </tbody>
        </table>
        <div class="d-flex justify-content-between">
        	<div>
        		<button class="btn btn-info me-2" onclick="tumunuSec()">Tümünü Seç</button>
        		<button class="btn btn-warning" onclick="hesaplaFiyat()">Hesapla</button>
        		<label id="hesapla"></label>
        	</div>
        	<div>
        		<a class="btn btn-success" href="/siparis.html?masaNo=${masaNo}&urun=Null_&pay=delete">Hesap Öde</a>
        	</div>
        	<div>
	        	<button class="btn btn-warning me-2" onclick="ikiyeBol()">İkiye Böl</button>
	        	<b><label id="ikiyeBol"></label></b>
	        </div>
        </div>
	</div>
	<input type="hidden" id="toplamFiyat" value="${fiyatToplamSiparis}">
	<script>
		function tumunuSec(){
			var checboxSize = document.getElementById("checboxSize").value;
			for(var i = 0; i < checboxSize; i++){
				document.getElementById("checbox-"+i).setAttribute("checked", "checked");
			}
		}	
		
		function hesaplaFiyat(){
			var checboxSize = document.getElementById("checboxSize").value;
			var fiyatToplam = 0;
			for(var i = 0; i < checboxSize; i++){
				if(document.getElementById("checbox-"+i).getAttribute("checked") == "checked"){
					fiyatToplam += parseFloat(document.getElementById("checbox-"+i).value);
				} 
			}
			document.getElementById("hesapla").innerHTML=fiyatToplam+" TL";
		}
		
		function checboxOnClick(checboxId){
			document.getElementById(checboxId).setAttribute("checked", "checked");	
		}
		
		function ikiyeBol(){
			document.getElementById("ikiyeBol").innerHTML=document.getElementById("toplamFiyat").value/2 + " TL";
		}
	</script>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
        integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
        integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
        crossorigin="anonymous"></script>
</body>
</html>