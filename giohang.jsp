<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Insert title here</title>
	<link rel="stylesheet" href="../reources/giohang.css">
</head>
<body>
	 <header>
		<div class="a1">
			<div class="v1">
				<a href="/JavaWed/api/manager"><p>Kênh Người Bán |</p></a>
					<p>Trở thành Người bán Shopee |</p>
					<p>Tải ứng dụng |</p>
					<p>Kết nối</p> <i class="fa-brands fa-facebook"></i> <i
					class="fa-brands fa-instagram"></i> 
			</div>

			<div class="v2">
					<p>Thông báo</p>
					<p>Hỗ Trợ</p>
					<p>Tiếng Việt</p>
					<a href="single"><p>Đăng Ký |</p></a>
					<a href="login"><p>Đăng Nhập</p></a>
				
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
				<i class="fa-solid fa-cart-shopping"></i>
			</div>
		</div>
	</header>
    <main>
        <div class="product">
			<div class="product-left">
				<div class="sanpham">
					<p>Sản Phẩm</p>
				</div>
			</div>

			<div class="product-right">
				<div class="dongia">
					<p>Đơn Giá</p>
				</div>
				<div class="soluong">
					<p>Số Lượng</p>
				</div>
				<div class="sotien">
					<p>Số Tiền</p>
				</div>
				<div class="xoa">
					<p>Xoá</p>
				</div>
			</div>
		</div>
	<c:forEach items="${items}" var="item">
		<div class="product">
			<div class="product-left">
				<div class="img">
					<img src="${item.image}" alt="">
				</div>
				<div class="ten">
					<p>${item.name}</p>
				</div>
			</div>

			<div class="product-right">
				<div class="dongia">
					<p>100.00</p>
				</div>
				<div class="soluong">
					<p>100</p>
				</div>
				<div class="sotien">
					<p>${item.price}</p>
				</div>
				<div class="xoa">
					  <a href="">Xóa</a>
				</div>
			</div>
		</div>
		</c:forEach>
		
    </main>
</body>
</html>