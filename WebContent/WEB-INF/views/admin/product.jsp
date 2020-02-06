<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf8">
<base href="${pageContext.servletContext.contextPath}/">
<title>Danh sánh sản phẩm</title>

</head>
<style>
table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	line-height: 25px;
	border: 1px solid black;
	padding: 5px;
}

th {
	background-color: gray;
}
</style>

<body>
	<div>
		<div>
			<div>Xin Chào: ${user.name} | <a href="http://localhost:8080/DoAn/admin/login.htm">Đăng Xuất</a></div>
			<div>
				<a href="http://localhost:8080/DoAn/admin/product.htm">product</a>
				|
				<a href="http://localhost:8080/DoAn/admin/cart.htm">cart</a>
			</div>
		</div>
		<table class="table table-hover">
			<tr>
				<th>id</th>
				<th>hinh</th>
				<th>name</th>				
				<th>type</th>
				<th>price</th>
				<th>description</th>
				<th>discount</th>
				<th></th>
				<th></th>
			</tr>
			<c:forEach var="item" items="${items}">
				<tr>
					<td>${item.id}</td>
					<td><img style="width: 200px;height:150px;" src="images/products/${item.link}" /></td>
					<td>${item.name}</td>					
					<td>${item.product_type.name}</td>
					<td>${item.price}</td>
					<td>${item.description}</td>
					<td>${item.discount}</td>
					<td><a href="admin/delete/${item.id}.htm">Xóa</a></td>
					<td><a href="admin/edit/${item.id}.htm">Sửa</a></td>
				</tr>
			</c:forEach>
		</table>
		<a href="admin/insert.htm">Thêm mới</a>
		<div>${message}</div>
	</div>
</body>
</html>