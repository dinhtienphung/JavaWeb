<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../reources/signup.css">
<link
	href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.no-icons.min.css"
	rel="stylesheet">
<link
	href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/fontawesome.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/regular.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/regular.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/solid.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/svg-with-js.min.css">
<link rel="icon" href="../resource/img/shopee-logo.png"
	type="image/x-icon">
<title>Đăng ký ngay | Shopee Việt Nam</title>
</head>

<body>
	<header>
		<div class="header_content">
			<div class="content">
				<div class="header_logo">
					<a href=""><img src="../reources/img/Shopee.svg" alt="erro"></a>
					<div class="header_text">Đăng Nhập</div>
				</div>
				<div class="header_helps">
					<a href="">Bạn cần giúp đỡ?</a>
				</div>
			</div>
	</header>
	<main>
		<div class="main_content">
			<div class="main_logo">
				<div class="main_logo_logo">
					<img src="../reources/img/logo_shopee.png" width="210">
				</div>
				<div class="main_logo_slogan">
					<p>Nền tảng thương mại điện tử</p>
					<p>yêu thích ở Đông Nam Á & Đài Loan</p>
				</div>
			</div>
			<div class="main_form">
				<div class="text">Đăng ký</div>
				<div class="form_login">
					<form action="signup" method="post" class="form_login">
						<label for="username"></label> 
						<input type="text" id="username" name="username" placeholder="Email/Số điện thoại/ Tên đăng nhập"><br>
						<label for="password"></label> 
						<input type="text" id="password" name="password" placeholder="Mật khẩu"><br>
						<input type="submit" value="Đăng ký" id="button_signup">
					</form>
					<div class="form_or">
						<div class="form_or_text">------------------------------
							HOẶC ------------------------------</div>
					</div>
					<br>
					<div class="login_socials">
						<a href="" class="login_social">
							<div class="social_logo">
								<img src="../resource/img/fblogo.webp" width="20px">
							</div>
							<div class="social_name">Facebook</div>
						</a> <a href="" class="login_social">
							<div class="social_logo">
								<img src="../resource/img/gg.png" width="20px">
							</div>
							<div class="social_name">Google</div>
						</a>
					</div>
					<div class="private">
						<div class="private_text">Bằng việc đăng kí, bạn đã đồng ý
							với Shopee về</div>
						<div class="private_text">
							<a href="">Điều khoản dịch vụ </a>&<a href=""> Chính sách bảo
								mật</a>
						</div>
					</div>
					<div class="new_signup">
						<div class="signup_text">Bạn đã có tài khoản?</div>
						<div class="signup_link">
							<a href="login">Đăng nhập</a>
						</div>
					</div>
				</div>
			</div>
	</main>

	<footer>
		<div class="footer_top">
			<div class="about_shopee">
				<div class="shopee">
					<div class="about_maintext">CHĂM SÓC KHÁCH HÀNG</div>
					<div class="list_service">
						<ul>
							<li><a href="">Trung tâm trợ giúp</a></li>
							<li><a href="">Shopee Blog</a></li>
							<li><a href="">Shopee Mall</a></li>
							<li><a href="">Hướng dẫn mua hàng</a></li>
							<li><a href="">Thanh toán</a></li>
							<li><a href="">Shopee Xu</a></li>
							<li><a href="">Vận Chuyển</a></li>
							<li><a href="">Trả Hàng & Hoàn Tiền</a></li>
							<li><a href="">Chăm Sóc Khách Hàng</a></li>
							<li><a href="">Chính sách Bảo Hành</a></li>
						</ul>
					</div>
				</div>
				<div class="shopee">
					<div class="about_maintext">VỀ SHOPEE</div>
					<div class="list_service">
						<ul>
							<li><a href="">Giới Thiệu Về Shopee Việt Nam</a></li>
							<li><a href="">Tuyển Dụng</a></li>
							<li><a href="">Điều Khoản Shopee</a></li>
							<li><a href="">Chính sách Bảo Mật</a></li>
							<li><a href="">Chính Hãng</a></li>
							<li><a href="">Kênh Người Bán</a></li>
							<li><a href="">Flash Sales</a></li>
							<li><a href="">Chương Trình Tiếp Thị Liên Kết Shopee</a></li>
							<li><a href="">Liên Hệ Với Truyền Thông</a></li>
						</ul>
					</div>
				</div>
				<div class="shopee">
					<div class="about_maintext">THANH TOÁN</div>
					<div class="top_payment">
						<div class="three_methods">
							<a href=""><img src="../reources/img/visa.JPG" height="25px"
								width="55px"></a> <a href=""><img
								src="../reources/img/master.JPG" height="25px" width="55px"></a>
							<a href=""><img src="../reources/img/jcb.JPG" height="25px"
								width="55px"></a>
						</div>
						<div class="three_methods">
							<a href=""><img src="../reources/img/aexpress.JPG"
								height="25px" width="55px"></a> <a href=""><img
								src="../reources/img/cod.JPG" height="25px" width="55px"></a>
							<a href=""><img src="../reources/img/gop.JPG" height="25px"
								width="55px"></a>
						</div>
						<div class="three_methods">
							<a href=""><img src="../reources/img/pay.JPG" height="25px"
								width="55px"></a> <a href=""><img
								src="../reources/img/spay.JPG" height="25px" width="55px"></a>
						</div>
					</div>
					<div class="about_maintext">ĐƠN VỊ VẬN CHUYỂN</div>
					<div class="bottom_payment">
						<div class="three_methods">
							<a href=""><img src="../reources/img/shopeeex.JPG"
								height="25px" width="55px"></a> <a href=""><img
								src="../reources/img/ghtk.JPG" height="25px" width="55px"></a>
							<a href=""><img src="../reources/img/ghn.JPG" height="25px"
								width="55px"></a>
						</div>
						<div class="three_methods">
							<a href=""><img src="../reources/img/visa.JPG" height="25px"
								width="55px"></a> <a href=""><img
								src="../reources/img/vnpost.JPG" height="25px" width="55px"></a>
							<a href=""><img src="../reources/img/JT.JPG" height="25px"
								width="55px"></a>
						</div>
						<div class="three_methods">
							<a href=""><img src="../reources/img/grab.JPG" height="25px"
								width="55px"></a> <a href=""><img
								src="../reources/img/ninjavan.JPG" height="25px" width="55px"></a> <a
								href=""><img src="../reources/img/best.JPG" height="25px"
								width="55px"></a>
						</div>
						<div class="three_methods">
							<a href=""><img src="../reources/img/be.JPG" height="25px"
								width="55px"></a>
						</div>
					</div>
				</div>
				<div class="shopee">
					<div class="about_maintext">THEO DÕI CHÚNG TÔI TRÊN</div>
					<div class="list_service">
						<ul>
							<li><a href=""><i class="fa-brands fa-facebook"></i>
									Facebook</a></li>
							<li><a href=""><i class="fa-brands fa-square-instagram"></i>
									Instagram</a></li>
							<li><a href=""><i class="fa-brands fa-linkedin"></i>
									Linkedin</a></li>
						</ul>
					</div>
				</div>
				<div class="shopee">
					<div class="about_maintext">TẢI ỨNG DỤNG SHOPEE NGAY THÔI</div>
					<div class="download_icon">
						<div class="download_QR">
							<img src="../reources/img/qr.png" width="90px">
						</div>
						<div class="source_download">
							<a href=""><i class="fa-brands fa-app-store-ios"></i> App
								Store</a> <a href=""><i class="fa-brands fa-google-play"></i>
								Google Play</a> <a href=""><i class="fa-solid fa-calendar-check"></i>
								AppGallery</a>
						</div>
					</div>
				</div>
			</div>

		</div>
		<div class="footer_bottom">
			<div class="footer_bottom_content">
				<div class="footer_bottom_content_left">© 2022 Shopee. Tất cả
					các quyền được bảo lưu.</div>
				<div class="footer_bottom_content_space"></div>
				<div class="footer_bottom_content_right">Quốc gia & Khu vực:
					Singapore| Indonesia| Đài Loan| Thái Lan| Malaysia| Việt Nam|
					Philippines| Brazil| México| Colombia| Chile| Poland</div>
			</div>
		</div>
	</footer>

</body>

</html>
    
