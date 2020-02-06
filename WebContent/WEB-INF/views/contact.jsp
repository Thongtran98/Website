<%@ page pageEncoding="utf-8"%>
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
<title>Liên hệ</title>


</head>

<body>
	<div class="wrapper">
		<!--Begin Header-->
		<div class="header">
			<!--Logo-->
			<div class="logo">
				<a href="http://localhost:8080/DoAn/index.htm"
					title="Chào mừng bạn đến với website VAPE">
					<img src="./images/home1.jpg" width="200" height="80" />
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
				<div class="txtMenu">
					<div>
						<a href="http://localhost:8080/DoAn/product.htm">Sản phẩm <i class="fa fa-angle-down"></i></a>
					</div>
					<div class="dropdown-content">
						<a href="http://localhost:8080/DoAn/product/1.htm">Nem, Chả, Tré</a>
						<a href="http://localhost:8080/DoAn/product/2.htm">Bánh Đặc Sản</a>
						<a href="http://localhost:8080/DoAn/product/3.htm">Hải Sản Khô</a> <a
							href="http://localhost:8080/DoAn/product/4.htm">Nắm Đặc Sản</a> <a
							href="http://localhost:8080/DoAn/product/5.htm">Đặc Sản Khác</a>
					</div>
				</div>
				<a href="http://localhost:8080/DoAn/contact.htm">
					<div class="txtMenu active">Liên hệ</div>
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
		<!--Contact container-->
		<div class="contactWrapper">
			<div class="googleMap">
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.3985005536433!2d106.69736001411647!3d10.78075986206326!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752f37d1a32473%3A0x5333f84c666c3ef8!2zNDcgTMOqIER14bqpbiwgQuG6v24gTmdow6ksIFF14bqtbiAxLCBI4buTIENow60gTWluaCwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1573717209422!5m2!1svi!2s" width="100%" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
			</div>
			<div class="contactContainer">
				<div class="contact">
					<h2 style="color: #5C2200;">LIÊN HỆ VỚI CHÚNG TÔI</h2>
					<h3>Xứ Nẫu Food - Đặc sản Bình Định</h3>
					<div>Ngã 3 Phú Tài - Tp Quy Nhơn - Tỉnh Bình Định</div>
					<div>Hotline :0966.347.617</div>
					<div>Email: xunaufood.net@gmail.com</div>
					<div>Website:xunaufood.net</div>
				</div>

				<form class="formContact" action="contact/send.htm">
					
					<h2 style="align-self: center; color: #5C2200;">LIÊN HỆ TƯ VẤN
						KHÁCH HÀNG</h2>
					<input class="inputContact" name="name"
						placeholder="Họ tên của bạn..." required/> <input class="inputContact"
						name="phone" placeholder="Số điện thoại..."  required/>
					<textarea class="areaContact" name="content"
						placeholder="Nội dung cần tư vấn..."></textarea>
					<div class="contactButton">
						<button class="button contactButton">							
								<span class="textButton">Gửi liên hệ</span></button>							
						</button>
						<div>${message}</div>
					</div>
				</form>

			</div>
		</div>
		<!--Contact container-->
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
						<img src="images/icons/diachi.png"> NGÃ 3 PHÚ TÀI - QUY
						NHƠN - BÌNH ĐỊNH
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