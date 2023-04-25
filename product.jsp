<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../reources/product.css">
<link rel="stylesheet"
	href="../reources/fontawesome-free-6.1.2-web/css/all.min.css">
<title>Insert title here</title>
</head>
<body>
	<header>
		<div class="a1">
			<div class="v1">
				<a href=""><p>Kênh Người Bán |</p>
					<p>Trở thành Người bán Shopee |</p>
					<p>Tải ứng dụng |</p>
					<p>Kết nối</p> <i class="fa-brands fa-facebook"></i> <i
					class="fa-brands fa-instagram"></i> </a>
			</div>

			<div class="v2">
				<a href="abc">
					<p>Thông báo</p>
					<p>Hỗ Trợ</p>
					<p>Tiếng Việt</p>
					<p>Đăng Ký |</p>
					<p>Đăng Nhập</p>
				</a>
			</div>
		</div>

		<div class="a2">
			<div class="b1">
				<a href=""><img
					src="../reources/imgshoppe/cach-lay-hoa-don-do-tren-shopee-764x400.jpg"
					alt=""></a>
			</div>
			<div class="b2">
				<div class="n1">
					<input type="text"
						placeholder="Đăng ký và nhận voucher bạn mới đến 70k!"> <a
						href=""><i class="fa-solid fa-magnifying-glass"></i></a>
				</div>
			</div>
			<div class="b3">
				<i class="fa-solid fa-cart-shopping"></i>
			</div>
		</div>

		<div class="a3">
			<a href="">
				<p>Dép</p>
				<p>Áo Khoác</p>
				<p>Túi Xách Nữ</p>
				<p>Áo Croptop</p>
				<p>Ốp iPhone</p>
				<p>Váy</p>
				<p>Áo Khoác Nam</p>
				<p>Tai Nghe Bluetooth</p>
			</a>
		</div>
	</header>
	<main>
		<div class="asidetong">
			<div class="asidetop">
				<a href=""> <b>Shoppe</b><i class="fa-solid fa-terminal"></i> <b>Thời
						Trang Nữ</b><i class="fa-solid fa-terminal"></i> <b>Hoodle và Áo
						Nỉ</b><i class="fa-solid fa-terminal"></i>
				</a>
				<p>${product1.name}</p>
			</div>

			<div class="aside-mid">
				<div class="aside-left">
					<div class="hm">
						<a href=""> <img src="${product1.image}" alt="">
						</a>
					</div>
					<div class="hp">
						<a href=""> <img src="${product1.image}" alt=""> <img
							src="${product1.image}" alt=""> <img
							src="${product1.image}" alt=""> <img
							src="${product1.image}" alt=""> <img
							src="${product1.image}" alt="">
						</a>
					</div>
					<div class="golobot">
						<div class="chiase">
							<p>Chia sẻ :</p>
							<a href=""> <i class="fa-solid fa-bolt"></i> <i
								class="fa-solid fa-hippo"></i> <i
								class="fa-solid fa-paper-plane"></i> <i class="fa-solid fa-key"></i>
							</a>
						</div>
						<div class="dathich">
							<a href=""> <i class="fa-regular fa-heart"></i>
								<p>Đã Thích (2,3k)</p>
							</a>
						</div>
					</div>
				</div>
				<div class="aside-right">
					<div class="title">
						<h1>${product1.name}</h1>
					</div>
					<div class="title2">
						<div class="danhgiatong">
							<div class="sao">
								<a href=""></a> <u>4.4</u> <i class="fa-solid fa-star"></i> <i
									class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
								<i class="fa-solid fa-star"></i> <i
									class="fa-solid fa-star-half-stroke"></i> </a>
							</div>
							<div class="danhgia">
								<a href=""> <u>23</u>
									<p>Đánh Giá</p>
								</a>
							</div>
							<div class="daban">
								<u>2.2k</u>
								<p>Đã Bán</p>
							</div>
						</div>
						<div class="tocao">
							<a href="">
								<p>Tố cáo</p>
							</a>
						</div>
					</div>
					<div class="title3">
						<div class="gia1">
							<u>đ</u>
							<p>
								${product1.sold} - <u>đ</u>198.000
							</p>
						</div>
						<div class="gia2">
							<h1>
								<u>đ</u>${product1.price} - <u>đ</u>99.00
							</h1>
						</div>
						<div class="gia3">
							<p>50% Giảm</p>
						</div>
					</div>
					<div class="title4">
						<div class="vanchuyen">
							<p>Vận Chuyển</p>
						</div>
						<div class="mienphi">
							<div class="mpvanchuyen">
								<p>
									<i class="fa-sharp fa-solid fa-truck-fast"></i> Miễn Phí Vận
									Chuyển
								</p>
							</div>
							<div class="vctoi">
								<p>
									<i class="fa-sharp fa-solid fa-truck-front"></i> Vận Chuyển Tới
								</p>
								<a href=""> <b>Phường Tràng Tiền, Quận Hoàn Kiếm <i
										class="fa-solid fa-chevron-down"></i></b>
								</a>
							</div>
							<div class="phivanchuyen">
								<p>Phí Vận Chuyển</p>
								<u>đ</u><a href="">0 <i class="fa-solid fa-chevron-down"></i></a>
							</div>
						</div>
					</div>

					<div class="title5">
						<div class="vanchuyen">
							<p>Màu</p>
						</div>
						<div class="color">
							<a href="">
								<p>K68-Đen</p>
								<p>K68-Xám</p>
								<p>K39-Đen</p>
								<p>K39-Xám</p>
								<p>S10-Trắng</p>
								<p>H22-Xám</p>
								<p>S12-Trắng</p>
								<p>K75-Đen</p>
								<p>K75-Trắng</p>
								<p>H38-Xám</p>
								<p>AQ-Xanh</p>
								<p>B12-Đen</p>
							</a>
						</div>
					</div>
					<div class="title6">
						<div class="soluong">
							<p>Số Lượng</p>
						</div>
						<div class="cong0">
							<div class="tru">
								<button onclick="decrement()">-</button>
							</div>
							<div class="so">
								<input id=demoInput type=number min=1 max=20 value="1">
							</div>
							<div class="cong1">
								<button onclick="increment()">+</button>
							</div>
							<script>
								function increment() {
									document.getElementById('demoInput')
											.stepUp();
								}
								function decrement() {
									document.getElementById('demoInput')
											.stepDown();
								}
							</script>
						</div>
						<div class="sanphamco">
							<p>106562 Sản Phẩm Có Sẳn</p>
						</div>
					</div>
					<div class="title7">
							<form action="cartadd" method="post">
									<a href="cartadd?pid=${product1.id}" target="_top">
									<button class="product-add-button">
										<i class="fa-solid fa-cart-shopping"></i> Thêm Vào Giỏ Hàng
									</button>
								</a>
							</form>
							<div class="input2">
								<input type="button" value="Mua Ngay">
					</div>
				</div>
				<div class="title8">
					<div class="dambao">
						<i class="fa-solid fa-shield-dog"></i>
						<p>Shoppe Đảm Bảo</p>
					</div>
					<div class="hoantien">
						<p>3 Ngày Trả Hàng / Hoàn Tiền</p>
					</div>
				</div>

			</div>
		</div>
		<div class="asidebottom"></div>
		</div>

	</main>
</body>
</html>