<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<base href="${pageContext.servletContext.contextPath}/">
<meta charset="utf-8" />
<title>Upload file</title>
<style>
.form-group {
	margin: 10px;
}
</style>
</head>
<body>
	<h2>Sửa sản phẩm</h2>
	
	<form action="admin/edit.htm" method="post" 
		enctype="multipart/form-data">
		<div class="form-group">
			<div>Hình ảnh</div>
			<img  src="images/products/${product.link}" style="width: 150px; height: 150px;">
		</div>
		<div class="form-group">
			<div>Name</div>
			<input type="text" name="name" value="${product.name}" required>
		</div>
		<div class="form-group">
			<div>Type</div>
			<select name="id_type" required >
				<option value="1">Thiết bị hút vape</option>
				<option value="2">Tinh dầu vape</option>
				<option value="3">Phụ kiện vape</option>
			</select>
		</div>
		<div class="form-group">
			<div>Price</div>
			<input type="text" value="${product.price}" name="price" required />
		</div>
		<div class="form-group">
			<div>Description</div>
			<textarea name="description">
				${product.description }
						</textarea>
		</div>
		<div class="form-group">
			<div>Discount</div>
			<input value="${product.discount }" type="text" name="discount" required />
		</div>
		

		<div class="form-group">
			<button>Thay đổi </button>
		</div>
		<div>
			${message}
		</div>
	</form>
</body>
</html>