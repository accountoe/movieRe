<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
		<link href="../../css/nr.css" rel="stylesheet"  type="text/css" />
        <link href="../../css/admin.css" rel="stylesheet" type="text/css">
        <link href="../../css/demo.css" rel="stylesheet" type="text/css" />
        <link href="../../css/sustyle.css" rel="stylesheet" type="text/css" />
</head>
<body>
		<header>
			<div id="header_top">
				<div id="top_1200">
					<b>客服热线：400-000-0000 (工作时间：9:00-21:00)</b>
					<ul>
						<li><a href="../show">返回首页</a></li>
						<li><a href="../showCart/${name }">我的购物车</a></li>
						<li><a href="../mine/${name }" >个人中心</a></li>
						<li><strong>你好，${name }</strong></li>
						<li><a href="../loginU">重新登录</a></li>
					</ul>
						
				</div>
			</div>
		</header>
		
		<div class="concent">
			<div class="take-delivery">
   <div class="status">
   <h2>您已成功付款</h2>
   <div class="successInfo">
     <ul>
       <li>付款金额<em>${totalPrice + 10 }</em></li>
       <div class="user-info">
         <p>收货人：${name }</p>
         <p>联系电话：15956971591</p>
         <p>收货地址：安徽省 合肥市 瑶海区 安徽中医药大学</p>
       </div>
       <li>请认真核对您的收货信息，如有错误请联系客服</li>
                               
     </ul>
     <div class="option">
       <span class="info">您可以</span>
        
        <a href="../order/${name }" class="J_MakePoint">查看<span>交易详情</span></a>
     </div>
    </div>
  </div>
</div>
		<div class="footer">
			<div class="footer-hd">
				<p>
					<a href="#">恒望科技</a>
					<b>|</b>
					<a href="#">商城首页</a>
					<b>|</b>
					<a href="#">支付宝</a>
					<b>|</b>
					<a href="#">物流</a>
				</p>
			</div>
			<div class="footer-bd">
				<p>
					<a href="#">关于恒望</a>
					<a href="#">合作伙伴</a>
					<a href="#">联系我们</a>
					<a href="#">网站地图</a>
					<em>© 2015-2025 Hengwang.com 版权所有</em>
				</p>
			</div>
		</div>
	</div>
</body>
</html>