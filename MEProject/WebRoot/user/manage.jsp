<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../css/bootstrap.min.css">
<title>Insert title here</title>
<script type="text/javascript">
	function drop() {
		var flag = confirm("确定删除吗？");
		if(flag) {
			windows.location.href = "dropGoods/id";
		}
	}
</script>
</head>
<body>
	<div class="container">
	  <div class="row">
		<div class="col-lg-12 col-sm-12 col-md-12">
		  <div class="pull-left">
		  	<a href="index" class="btn btn-primary">返回首页</a>
		  </div>
		  <div class="pull-right">
		    <a href="addGoods" class="btn btn-primary">新增药品</a>
		  </div>
		  <table class="table table-hover table-bordered">
		  	<thead>
		  	  <th>ID</th>
		  	  <th>药品名</th>
		  	  <th>类型</th>
		  	  <th>有效期</th>
		  	  <th>价格</th>
		  	  <th>操作</th>
		  	</thead>
		  	<tbody>
		  	  <c:forEach items="${goods }" var="goods">
		  	  	<tr>
		  	  	  <td>${goods.id }</td>
		  	  	  <td>${goods.name }</td>
		  	  	  <td>${goods.type }</td>
		  	  	  <td>${goods.date }</td>
		  	  	  <td>${goods.price }</td>
		  	  	  <td align="center">
		  	  	    <a href="alterGoods/${goods.id }" class="btn btn-success btn-sm">修改</a>
		  	  	    <!-- 同理，这里好像有点问题1024 -->
		  	  	    <a href="dropGoods/${goods.id }" id="dropG" name="${goods.id }" class="btn btn-danger btn-sm" onclick="drop();">删除</a>
		  	  	  </td>
		  	  	</tr>
		  	  	
		  	  </c:forEach>
		  	</tbody>
		  </table>
		</div>	
	  </div>
	</div>
	
	<script src="../js/jquery.min.js"></script>
 <script src="../js/bootstrap.min.js"></script>
</body>
</html>