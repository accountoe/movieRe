<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="x-ua-compatible" content="IE-edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/bootstrap.min.css">
<title>Insert title here</title>
<style type="text/css">
	body,button,input {
		font-family:Microsoft Yahei
	}
	.search {
		background-image: url(img/9.jpg);
		background-size:cover;
		-webkit-backgroud-size:cover;
		min-height: 600px;
		margin-top:-20px;
	}
	.reservation {
		padding: 60px 60px;
		width:50%;
		background: rgba(255,255,255,0.7);
		margin: 0 auto;
		margin-top:15%;
		font-weight:500;
		color:#f2f0f1;
		font-size:1.2em;
		outline: none;
	}
	.btn{
		width: 50%;
		backgound: #D96B66;
		color:#fff;
		padding:5px;
		border:none;
		border-radius:4px;
		-webkit-border-radius:4px;
	}
	.form-control {
		color:#8e908d;
	}
	.searchbtn {
		text-align: center;
	}
	
</style>
</head>
<body>
	<div class="search">
		<div class="container">
			<div class="reservation">
				<form action="" class="form-horizontal" role="form">
					<div class="form-group">
						<div class="col-sm-12 col-md-12 col-lg-12">
							<input type="text" class="form-control input-lg" id="name" placeholder="请输入用户名">
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-12 col-md-12 col-lg-12">
							<input type="text" class="form-control input-lg" id="name" placeholder="请输入密码">
						</div>
					</div>
					<div class="form-group">
						<div class="searchbtn">
							<button type="submit" class="btn btn-success btn-lg" >登录</button>
						</div>
					</div>
				</form>
			</div>
	</div>
	</div>
	<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
	
</body>
</html>