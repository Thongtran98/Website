<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<!DOCTYPE html>

<html lang="en">

<head>
<base href="${pageContext.servletContext.contextPath}/">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet"
	href="font-awesome-4.7.0/css/font-awesome.min.css">
<link href="font/font.css" rel="stylesheet">
<link rel="stylesheet" href="css/swiper.min.css">
<link rel="stylesheet" href="css/style.css">


<title>Vape chính hãng</title>

</head>

<body>
	<div class="end" style="text-align:center;>
	<div class="end">
	<span>Chào mừng bạn đến với Website của chúng tôi!</span>
	</div>
	</div>
	<div class="end" style="text-align:center;">
	<div class="hotline1">
	<span> Hotline: 09.0125.0225</span>
	</div>
	</div>
	<div class="wrapper">
		<!--Begin Header-->
		<div class="header">
			<!--Logo-->
			<div class="logo">
				<a href="http://localhost:8080/DoAn/index.htm"
					title="Chào mừng bạn đến với website VAPE">
					<img src="./images/home1.jpg" style="width: 200px; height: 100px;"
				alt="Avatar" class="avatar">
				</a>
			</div>
			<!--form search-->
			<div class="search">
				<form action="search.htm" method="GET">
					<input name="s" type="search" placeholder="Tìm kiếm..." value="" />
					<button class="btnSearch" type="submit">
						<i class="fa fa-search fa-2x"></i>
					</button>
				</form>
			</div>
			<!--list Menu-->
			<div class="listMenu">
				<a href="http://localhost:8080/DoAn/index.htm">
					<div class="txtMenu active">Trang chủ</div>
				</a>
				<div class="txtMenu">
					<div>
						<a href="http://localhost:8080/DoAn/product.htm">Sản phẩm <i class="fa fa-angle-down"></i></a>
					</div>
					<div class="dropdown-content">
						<a href="http://localhost:8080/DoAn/product/1.htm">Thiết bị máy hút vape</a>
						<a href="http://localhost:8080/DoAn/product/2.htm">Tinh dầu vape</a>
						<a href="http://localhost:8080/DoAn/product/10.htm">Phụ kiện vape</a> <a
							href="http://localhost:8080/DoAn/product/11.htm">Sản phẩm HOT</a> <a
							href="http://localhost:8080/DoAn/product/5.htm"> Khác</a>
					</div>
				</div>
				<a href="http://localhost:8080/DoAn/contact.htm">
					<div class="txtMenu">Liên hệ</div>
				</a>

			</div>
			<!--Dang ki dang nhap-->
			<div class="txtMenu">
				<div>
					<i class="fa fa-list"></i>
				</div>
				<div class="dropdown-content login">
					<a href="#">Đăng kí</a> <a href="http://localhost:8080/DoAn/admin/login.htm">Đăng nhập</a>
				</div>
			</div>


		</div>
		<!--End Header-->
		<!--Begin Slide-->
		<div class="slide">
			<div class="" style="max-width: 100%;">
				<img class="mySlides" src="images/1133.jpg">
				<img class="mySlides" src="images/1144.jpg">
				<img class="mySlides" src="images/1155.jpg">

				<div class="sliderContainer">
					<div class="iconPre" onclick="plusDivs(-1)">&#10094;</div>
					<div class="iconNext" onclick="plusDivs(1)">&#10095;</div>


				</div>
			</div>
		</div>
		<!--End Slide-->
		<!--Begin banner-->
		<div class="bannerContainer">
			<div class="layer">
				<a href="http://localhost:8080/DoAn/product/1.htm">
					<div class="over">
						<img class="imgLayer"
							src="images/vape.jpg" />
					</div>
					<div class="over1"></div>
					<div class="over2">
						<span>Thiết Bị Hút Vape<span>
					</div>
				</a>
			</div>
			<div class="layer">
				<a href="http://localhost:8080/DoAn/product/2.htm">
					<div class="over">
						<img class="imgLayer" src="images/abc.jpg" />
					</div>
					<div class="over1"></div>
					<div class="over2">
						<span>Tinh dầu Vape<span>
					</div>
				</a>
			</div>
			<div class="layer">
				<a href="http://localhost:8080/DoAn/product/10.htm">
					<div class="over">
						<img class="imgLayer" src="images/vaporesso-estoc-tank-with-euc-2ml-600x600.jpg" />
					</div>
					<div class="over1"></div>
					<div class="over2">
						<span>Phụ kiện Vape<span>
					</div>
				</a>
			</div>


		</div>
		<!--End banner-->
		<!--Begin line-->
		<div class="lineContainer">
			<div class="line"></div>
			<div class="txtLine">
				<span>Sản phẩm đang HOT</span>
			</div>
			<div class="line"></div>
		</div>
		<!--End line-->
		<!--Begin Products-->
		<div class="productWrapper">
			<!--Begin Product Container-->
			<div class="productContainer">
				<c:forEach var="item" items="${listNoiTieng}">
					<!--Begin product-->
					<div class="product">
						<div class="productImage">
							<a href="http://localhost:8080/DoAn/detail/${item.id}.htm">
								<div class="over">
									<img class="imgLayer" src="images/products/${item.link}" />
								</div>
								<div class="${item.discount !=0.0 ? 'percent': ''}" ><f:formatNumber value="${item.discount}" type="percent"/></div>
								
							</a>
						</div>
						<div class="productTitle">
							<span>${item.name }</span>
						</div>
						<div class="productPrice">
							<div class="txtPrice">
								${item.discount !=0.0 ? item.price: ''}<span style="text-decoration: underline;">${ item.discount !=0.0 ?'đ':''}</span>
							</div>
							<div class="txtPriceSale">
								<f:formatNumber value="${item.price-item.price*item.discount}" type="currency"/><span
									style="text-decoration: underline;"></span>
							</div>
						</div>
						<div class="productButton">
							<a href="http://localhost:8080/DoAn/cart/${item.id}.htm">
								<div class="button">
									<span class="textButton">Mua ngay</span>
								</div>
							</a>
						</div>
					</div>
					<!--End product-->
				</c:forEach>

			</div>
			<!--End ProductContainer-->

			<!--Button Xem them-->
			<div class="productButton btnXemThem">
				<a href="http://localhost:8080/DoAn/product.htm">
					<div class="button">
						<span class="textButton">Xem thêm</span>
					</div>
				</a>
			</div>
			<!--End button xem them-->
			<!--End ProductContainer-->
		</div>
		<!--End Products-->
		<!--Begin line-->
		<div class="lineContainer">
			<div class="line"></div>
			<div class="txtLine">
				<span>SẢN PHẨM MỚI</span>
			</div>
			<div class="line"></div>
		</div>
		<!--End line-->
		<!--Begin Products-->
		<div class="productWrapper">
			<!--Begin Product Container-->
			<div class="productContainer">
				<c:forEach var="item" items="${listNew}">
					<!--Begin product-->
					<div class="product">
						<div class="productImage">
							<a href="http://localhost:8080/DoAn/detail/${item.id}.htm">
								<div class="over">
									<img class="imgLayer" src="images/products/${item.link}" />
								</div>
								<div class="${item.discount !=0.0 ? 'percent': ''}" ><f:formatNumber value="${item.discount}" type="percent"/></div>
							</a>
						</div>
						<div class="productTitle">
							<span>${item.name }</span>
						</div>
						<div class="productPrice">
							<div class="txtPrice">
								${item.discount !=0.0 ? item.price: ''}<span style="text-decoration: underline;">${ item.discount !=0.0 ?'đ':''}</span>
							</div>
							<div class="txtPriceSale">
								<f:formatNumber value="${item.price-item.price*item.discount}" type="currency"/><span
									style="text-decoration: underline;"></span>
							</div>
						</div>
						<div class="productButton">
							<a href="http://localhost:8080/DoAn/cart/${item.id}.htm">
								<div class="button">
									<span class="textButton">Mua ngay</span>
								</div>
							</a>
						</div>
					</div>
					<!--End product-->
				</c:forEach>
			</div>
			<!--End ProductContainer-->

			<!--Button Xem them-->
			<div class="productButton btnXemThem">
				<a href="http://localhost:8080/DoAn/product.htm">
					<div class="button">
						<span class="textButton">Xem thêm</span>
					</div>
				</a>
			</div>
			<!--End button xem them-->
		</div>
		<!--End Products-->
		
		<!--FOOTER-->
		<div class="footerWrapper">
			<div class="footerContainer">
				<div class="txtFooter">

					<h3 class="titleFooter">Về chúng tôi</h3>
					<p>
						<span style="font-size: 85%;">Chúng tôi tự hào là nhà cung
							cấp đặc sản Bình Định hàng đầu tại Việt Nam, với hơn 10 năm kinh
							nghiệm cung cấp đặc sản Bình Định cho thị trường Việt Nam, cũng
							như xuất khẩu. </span>
					</p>
				</div>
				<div class="txtFooter" style="line-height: 30px;">


					<h4 class="titleFooter">
						ĐẶC SẢN BÌNH ĐỊNH<br>
					</h4>
					<p>
						<img src="images/icons/diachi.png"> NGÃ 3 PHÚ TÀI - QUY NHƠN
						- BÌNH ĐỊNH
					</p>
					<p>
						<img src="images/icons/download-1.png"> 0966347617
					</p>
					<p>
						<img src="images/icons/download-2.png"><a
							href="https://www.facebook.com/nthanhto97" style="color: white;">Fb.com/xunaufood.net</a>
					</p>
					<p>
						<img src="images/icons/download-3.png">Youtube/XuNauFood<br>
						<a title="DMCA.com Protection Status" class="dmca-badge"
							href="https://www.dmca.com/Protection/Status.aspx?ID=05a6c298-fe6a-411b-ad50-c30d988ca85b&amp;refurl=https://xunaufood.net/">
							<img alt="DMCA.com Protection Status"
							src="//images.dmca.com/Badges/dmca_protected_sml_120m.png?ID=05a6c298-fe6a-411b-ad50-c30d988ca85b">
						</a>
						<script src="//images.dmca.com/Badges/DMCABadgeHelper.min.js">
							
						</script>
					</p>

				</div>

				<div class="txtFooter">
					<h3 class="titleFooter">Tin Tức</h3>
					<a href="#" style="color: #fff;">Cách làm bắp rang bơ vị
						caramel - Cooky TV</a> <br> <br> <a href="#"
						style="color: #fff;">Khóa học nấu canh chua</a> <br> <br>
					<a href="#" style="color: #fff;">Hướng dẫn 5 cách cắt cà rốt
						đẹp giúp món ăn nhìn ngon hơn</a>
				</div>
				<div class="txtFooter">

					<h3 class="titleFooter">Mua hàng &amp; Thanh toán</h3>
					<ul>
						<li>Nhận giao hàng tận nơi (có tính phí hoặc miễn phí)</li>
						<li>Đặt Hàng Nhanh Chóng Giao Nhận Toàn Quốc</li>
						<li>Hotline : 0966347617</li>
						<li>Thanh toán khi nhận hàng</li>
					</ul>


				</div>
			</div>
			<div class="end">Copyright 2019 by NGUYEN THANH TO FOOD</div>
		</div>
		<!--FOOTER-->
	</div>
	<script src="js/swiper.min.js"></script>
	<script src="js/index.js"></script>


</body>

</html>