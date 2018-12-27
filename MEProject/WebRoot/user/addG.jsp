<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../css/zhuce.css" type="text/css" />
<title>添加药品</title>
<script type="text/javascript">

</script>

</head>
  <body>
	<div id="header">
		<h3>添加药品</h3>
	</div>
	<div id="content">
	  <form action="submitAddG" method="post">
		<div class="line">
			<span class="text"><b>*</b>药品名：</span>
			<span class="ipt"><input class="kuang1 user" type="text" name="goods.name"/></span>
		</div>
		<div class="line">
			<span class="text"><b>*</b>药品类型：</span>
			<span class="ipt"><input class="kuang1 psw" type="text" name="goods.type"/></span>
		</div>
		<div class="line">
			<span class="text"><b>*</b>药品价格：</span>
			<span class="ipt"><input class="kuang1 psw" type="text" name="goods.price"/></span>
		</div>
		<div class="line">
			<span class="text"><b>*</b>药品数量：</span>
			<span class="ipt"><input class="kuang1 phone" type="text" name="goods.number"/></span>
		</div>
		<div class="line">
			<span class="text"><b>*</b>药品有效期：</span>
			<span class="ipt"><input class="kuang1 yanzheng" type="text" name="goods.date"/></span>
		</div>
		<div class="line">
			<span class="ipt zhuce">
				<input class="tijiao" type="submit" value="提交" >
				<input class="chongzhi" type="reset" value="重置">
			</span>
		</div>
	  </form>
	</div>
  </body>
</html>