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
<title>Document</title>
<link rel="stylesheet" href="../reources/trangchu.css">
<link rel="stylesheet"
	href="../reources/fontawesome-free-6.1.2-web/css/all.min.css">
</head>
<body>
	<header>
		<div class="a1">
			<div class="v1">
				<a href="">
					<a href="/JavaWeb/api/manager"><p>Kênh Người Bán |</p></a>
					<p>Trở thành Người bán Shopee |</p>
					<p>Tải ứng dụng |</p>
					<p>Kết nối</p> <i class="fa-brands fa-facebook"></i> <i
					class="fa-brands fa-instagram"></i> 
				</a>
			</div>

			<div class="v2">
				<a href="">
					<p>Thông báo</p>
					<p>Hỗ Trợ</p>
					<p>Tiếng Việt</p>
					<a href="signup"><p>Đăng Ký |</p></a>
					<a href="login"><p>Đăng Nhập</p>
					<a href="logout"><p>Đăng Xuất</p>
					
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
					<form action="seach" method="post" id="form_search">
						<input type="text" id="input_search" name="Seach" placeholder="Giảm Giá Với Vouche 70!">
						<input type="submit" name="btn_search" id="btn_search" value="Tìm Kiếm">
					</form>
				</div>
			</div>
			<div class="b3">
				<a href="/JavaWeb/api/gio">
					<i class="fa-solid fa-cart-shopping"></i>
				</a>
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
		<div class="m1">
			<div class="s1">
				<img src="../reources/imgshoppe/hinh1.png" alt="">
			</div>

			<div class="s2">
				<img src="../reources/imgshoppe/hinh2.jfif" alt=""> <img
					src="../reources/imgshoppe/hinh3.jfif" alt="">
			</div>
		</div>

		<div class="m2">
			<a href="">
				<div class="l1">
					<img src="../reources/imgshoppe/logo 1.jfif" alt="">
					<p>
						Gì Cũng rẻ - Mua là <br> Freeship</br>
					</p>
				</div>
				<div class="l1">
					<img src="../reources/imgshoppe/logo 2.png" alt="">
					<p>Flash Sale</p>
				</div>
				<div class="l1">
					<img src="../reources/imgshoppe/logo 3.png" alt="">
					<p>Miễn Phí Vận Chuyển</p>
				</div>
				<div class="l1">
					<img src="../reources/imgshoppe/logo 4.jfif" alt="">
					<p>Bắt Trend - Giá Sốc</p>
				</div>
				<div class="l1">
					<img src="../reources/imgshoppe/logo5.jfif" alt="">
					<p>Hoàn Xu Xtra Từ 100k</p>
				</div>
				<div class="l1">
					<img src="../reources/imgshoppe/logo6.jfif" alt="">
					<p>Hàng Hiệu Giá Tốt</p>
				</div>
				<div class="l1">
					<img src="../reources/imgshoppe/logo7.jfif" alt="">
					<p>
						Hàng Quốc Tế - Thương <br> Hiệu 59k
					</p>
				</div>
				<div class="l1">
					<img src="../reources/imgshoppe/logo8.jfif" alt="">
					<p>Nạp Thẻ & Dịch Vụ</p>
				</div> <a href=""></a>
		</div>
		<div class="m3">
			<img src="../reources/imgshoppe/30bf417c70dea40332f5820c16f6d4ce.png"
				alt="">
		</div>

		<div class="m4">
			<div class="t">
				<div class="dm">
					<p>Danh Mục</p>
				</div>

				<div class="d1">
					<a href="">
						<div class="h1">
							<img src="../reources/imgshoppe/m1.jfif" alt="">
						</div>
						<div class="c">
							<p>Thời Trang Nam</p>
						</div>
					</a> <a href="">
						<div class="h1">
							<img src="../reources/imgshoppe/m2.jfif" alt="">
						</div>
						<div class="c">
							<p>Quần Áo Trẻ Em</p>
						</div>
					</a> <a href="">
						<div class="h1">
							<img src="../reources/imgshoppe/m3.jfif" alt="">
						</div>
						<div class="c">
							<p>Đồ Bộ Cho Nữ</p>
						</div>
					</a> <a href="">
						<div class="h1">
							<img src="../reources/imgshoppe/m4.jfif" alt="">
						</div>
						<div class="c">
							<p>Đồ Chơi Trẻ Em</p>
						</div>
					</a> <a href="">
						<div class="h1">
							<img src="../reources/imgshoppe/m5.jfif" alt="">
						</div>
						<div class="c">
							<p>Đồ Mỹ Phẩm</p>
						</div>
					</a> <a href="">
						<div class="h1">
							<img src="../reources/imgshoppe/m6.jfif" alt="">
						</div>
						<div class="c">
							<p>Thiệt Bị Điện Tử</p>
						</div>
					</a> <a href="">
						<div class="h1">
							<img src="../reources/imgshoppe/m7.jfif" alt="">
						</div>
						<div class="c">
							<p>PC & LapTop</p>
						</div>
					</a> <a href="">
						<div class="h1">
							<img src="../reources/imgshoppe/m8.jfif" alt="">
						</div>
						<div class="c">
							<p>Máy Ảnh & Máy Quay Phim</p>
						</div>
					</a> <a href="">
						<div class="h1">
							<img src="../reources/imgshoppe/m9.jfif" alt="">
						</div>
						<div class="c">
							<p>Đồng Hồ VipPro</p>
						</div>
					</a> <a href="">
						<div class="h1">
							<img src="../reources/imgshoppe/m10.jfif" alt="">
						</div>
						<div class="c">
							<p>Giày Dép Nữ</p>
						</div>
					</a>
				</div>

				<div class="d2">
					<div class="d1">
						<a href="">
							<div class="h1">
								<img src="../reources/imgshoppe/m12.jfif" alt="">
							</div>
							<div class="c">
								<p>Thời Trang Nữ</p>
							</div>
						</a> <a href="">
							<div class="h1">
								<img src="../reources/imgshoppe/m11.jfif" alt="">
							</div>
							<div class="c">
								<p>Tủ Lạnh & Đông</p>
							</div>
						</a> <a href="">
							<div class="h1">
								<img src="../reources/imgshoppe/m13.jfif" alt="">
							</div>
							<div class="c">
								<p>Vật Dụng Trẻ Em</p>
							</div>
						</a> <a href="">
							<div class="h1">
								<img src="../reources/imgshoppe/m14.jfif" alt="">
							</div>
							<div class="c">
								<p>Túi Ví Cho Nữ</p>
							</div>
						</a> <a href="">
							<div class="h1">
								<img src="../reources/imgshoppe/m15.jfif" alt="">
							</div>
							<div class="c">
								<p>Thiết Bị Di Động</p>
							</div>
						</a> <a href="">
							<div class="h1">
								<img src="../reources/imgshoppe/m16.jfif" alt="">
							</div>
							<div class="c">
								<p>Nhà Sách Online</p>
							</div>
						</a> <a href="">
							<div class="h1">
								<img src="../reources/imgshoppe/m17.jfif" alt="">
							</div>
							<div class="c">
								<p>Giày Dép Nam</p>
							</div>
						</a> <a href="">
							<div class="h1">
								<img src="../reources/imgshoppe/m18.jfif" alt="">
							</div>
							<div class="c">
								<p>Máy Tập Gym</p>
							</div>
						</a> <a href="">
							<div class="h1">
								<img src="../reources/imgshoppe/m19.jfif" alt="">
							</div>
							<div class="c">
								<p>Thuôc Tăng IQ</p>
							</div>
						</a> <a href="">
							<div class="h1">
								<img src="../reources/imgshoppe/m20.jfif" alt="">
							</div>
							<div class="c">
								<p>Phụ Kiện Balo</p>
							</div>
						</a>
					</div>
				</div>
			</div>
			<div class="m5">
				<div class="g">
					<h2>Gợi Ý Hôm Nay</h2>
				</div>
				<div class="slide01">
					<c:forEach items="${product}" var="p">
						<div class="slide1">
							<a href="/JavaWeb/api/product?cid=${p.id}">
								<div class="nen1">
									<img src="${p.image}" alt="">
								</div>
								<div class="title1">
									<c:out value="${p.name }" />
								</div>
								<div class="title2">
									<div class="gia">
										<u>đ</u>
										<c:out value="${p.price}" />
									</div>
									<div class="ban">
										<p>Đã Bán 22k</p>
									</div>
								</div>
							</a>
						</div>
					</c:forEach>
					<div class="foottrang">Trang</div>
					<c:forEach begin="1" end="${end}" var="i">
								<a href="count?homes=${i}"><button>${i}</button> </a>
							</c:forEach>
					<footer>
							
							
					</footer>
				</div>
			</div>
	</main>
</body>
</html>