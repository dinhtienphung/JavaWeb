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
<link rel="stylesheet" href="../reources/productmanager.css">
<title>Insert title here</title>
</head>
<body>
	<main>
		<h1>List Student</h1>
			<a href="/JavaWeb/api/add">
				<button>Add Student</button>
			</a>
		<header>
			<div class="h1">
				<h4>Name Product</h4>
			</div>
			<div class="h1">
				<h4>Price </h4>
			</div>
			<div class="h1">
				<h4>image</h4>
			</div>
			<div class="h1">
				<h4>Actions</h4>
			</div>
		</header>
		<c:forEach items="${product2}" var="list">
			<div class="main1">
				<div class="slide">
					<c:out value="${list.name}" />
				</div>
				<div class="slide">
					<c:out value="${list.price}" />
				</div>
				<div class="slide">
					<c:out value="${list.image}" />
				</div>
				<div class="slide">
					<a href="">
						<div class="up">
							<a href="update?id=${list.id}"><button>Update</button></a>
						</div>
					</a>
						<div class="del">
							<a href="delete?sid=${list.id}"><button>Delete</button></a>
						</div>					
				</div>
			</div>
		</c:forEach>
	</main>
</body>
</html>