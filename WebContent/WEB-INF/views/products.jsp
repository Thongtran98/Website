<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
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
<title>Cửa hàng bán vape chính hãng</title>

</head>

<body>
	<div class="wrapper">
		<!--Begin Header-->
		<div class="header">
			<!--Logo-->
			<div class="logo">
				<a href="http://localhost:8080/DoAn/index.htm"
					title="Chào mừng bạn đến với website VAPE">
					<img src="./images/home1.jpg" width="200" height="100" />
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
					<div class="txtMenu">Trang chủ</div>
				</a>
				<div class="txtMenu active">
					<div>
						<a href="http://localhost:8080/DoAn/product.htm">Sản phẩm <i class="fa fa-angle-down"></i></a>
					</div>
					<div class="dropdown-content">
						<a href="http://localhost:8080/DoAn/product/1.htm">Thiết bị hút vape</a>
						<a href="http://localhost:8080/DoAn/product/2.htm">Tinh dầu vape</a>
						<a href="http://localhost:8080/DoAn/product/10.htm">Phụ kiện vape</a> <a
							href="http://localhost:8080/DoAn/product/4.htm">Sản phẩm HOT</a> <a
							href="http://localhost:8080/DoAn/product/5.htm">Khác</a>
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
		<!--BANNER-->
		<div class="banner"></div>
		<!--BANNER-->
		<!--products-->
		<div class="content">
			
			<div class="items">
				<!--Begin Product Container-->
				<div class="productContainer">
					<c:forEach var="item" items="${list}">
						<!--Begin product-->
						<div class="product productType">
							<div class="productImage">
								<div class="over">
									<img class="imgLayer" src="images/products/${item.link}" />
								</div>
								<div class="percent">-15%</div>
							</div>
							<div class="productTitle">
								<span>${item.name}</span>
							</div>
							<div class="productPrice">
								<div class="txtPrice">
									${item.price}<span style="text-decoration: underline;">đ</span>
								</div>
								<div class="txtPriceSale">
									${item.price-item.price*0.15}<span
										style="text-decoration: underline;">đ</span>
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
			</div>
		</div>
		<!--products-->
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