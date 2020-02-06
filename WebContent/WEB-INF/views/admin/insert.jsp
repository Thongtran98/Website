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
	<h2>Thêm sản phẩm mới</h2>
	${message}
	<form action="admin/insert.htm" method="post"
		enctype="multipart/form-data">
		<div class="form-group">
			<div>Name</div>
			<input type="text" name="name" required>
		</div>
		<div class="form-group">
			<div>Type</div>
			<select name="id_type" required>
				<option value="1">Bánh đặc sản Bình Định</option>
				<option value="2">Nem, chả , tré Bình Định</option>
				<option value="3">Hải Sản Khô Quy Nhơn</option>
				<option value="4">Bánh Tráng</option>
				<option value="5">Bún Song Thằn</option>
				<option value="6">Đặc Sản Khác</option>
				<option value="7">Mật Ong Rừng</option>
				<option value="8">Rượu Bầu Đá</option>
				<option value="9">slider</option>
				<option value="10">Sản phẩm mới</option>
				<option value="11">Sản phẩm nổi tiếng</option>
				<option value="12">Quà biếu</option>
			</select>
		</div>
		<div class="form-group">
			<div>Price</div>
			<input type="text" name="price" required />
		</div>
		<div class="form-group">
			<div>Description</div>
			<textarea name="description">
						</textarea>
		</div>
		<div class="form-group">
			<div>Discount</div>
			<input type="text" name="discount" required />
		</div>
		<div class="form-group">
			<div>Hình ảnh</div>
			<input type="file" name="photo" required />
		</div>

		<div class="form-group">
			<button>Upload</button>
		</div>
		<div>
			${message}
		</div>
	</form>
</body>
</html>