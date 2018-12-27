<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="../../css/huiyuanzhongxin1.css" type="text/css">
	<link rel="stylesheet" href="../../css/admin.css" type="text/css">
	<link rel="stylesheet" href="../../css/amazeui.css" type="text/css">
	<link rel="stylesheet" href="../../css/personal.css" type="text/css">
	<link rel="stylesheet" href="../../css/infstyle.css" type="text/css">
</head>
<body>
<header>
	<div id="header_top">
		<div id="top_1200">
			<b>客服热线：400-000-0000 (工作时间：9:00-21:00)</b>
			<ul>
				<li><a href="../show">返回首页</a></li>
				<li><a href="../mine/${name }" >个人中心</a></li>
			    <li><a href="../showCart/${name }">我的购物车</a></li>
				<li>您好，${name }</li>
				<li><a href="../loginU">重新登录</a></li>
			</ul>
		</div>
	</div>
</header>
<div class="header_ed w1200"></div>
<div class="header">
	<div class="header-body">
		<div class="w1200">
			<div class="header_box">
				<span class="huizx">
					会员中心
				</span>
			</div>
		</div>
	</div>
</div>
<div class="center">
	<div class="col-main">
		<div class="main-wrap">

			<div class="user-info">
				<!--标题 -->
				<div class="am-cf am-padding">
					<div class="am-fl am-cf">
						<strong class="am-text-danger am-text-lg">
							个人资料
						</strong> 
						/ 
						<small>
							Personal&nbsp;information
						</small>
					</div>
				</div>
				<hr>

				<!--头像 -->
				<div class="user-infoPic">

					<div class="filePic">
						<input class="inputPic" allowexts="gif,jpeg,jpg,png,bmp" accept="image/*" type="file">
						<img class="am-circle am-img-thumbnail" src="../../img/getAvatar.do.jpg" alt="">
					</div>

					<p class="am-form-help">头像</p>

					<div class="info-m">
						<div><b>用户名：<i>${name }</i></b></div>
						<div class="u-level">
							<span class="rank r2">
					             <s class="vip1"></s><a class="classes" href="#">铜牌会员</a>
				            </span>
						</div>
						<div class="u-safety">
							<a href="safety.html">
							 账户安全
							<span class="u-profile"><i class="bc_ee0000" style="width: 60px;" width="0">60分</i></span>
							</a>
						</div>
					</div>
				</div>

				<!--个人信息 -->
				<div class="info-main">
					<form class="am-form am-form-horizontal">

						<div class="am-form-group">
							<label for="user-name2" class="am-form-label">昵称</label>
							<div class="am-form-content">
								<input id="user-name2" placeholder="nickname" type="text">

							</div>
						</div>

						<div class="am-form-group">
							<label for="user-name" class="am-form-label">姓名</label>
							<div class="am-form-content">
								<input id="user-name2" placeholder="name" type="text">

							</div>
						</div>

						<div class="am-form-group">
							<label class="am-form-label">性别</label>
							<div class="am-form-content sex">
								<label class="am-radio-inline">
									<input name="radio10" value="male"  type="radio">
									<span class="am-ucheck-icons">
					
										<i class="am-icon-checked">
											
										</i>
									</span>
									 男
								</label>
								<label class="am-radio-inline">
									<input name="radio10" value="female"type="radio">
									<span class="am-ucheck-icons">
										
										<i class="am-icon-checked">
											
										</i>
									</span> 女
								</label>
								<label class="am-radio-inline">
									<input name="radio10" value="female"type="radio">
									<span class="am-ucheck-icons">
										
										<i class="am-icon-checked">
											
										</i>
									</span> 
									保密
								</label>
							</div>
						</div>

						<div class="am-form-group">
							<label for="user-birth" class="am-form-label">
								生日
							</label>
							<div class="am-form-content birth">
								<div class="birth-select">
									
									<div class="am-selected am-dropdown " id="am-selected-lsd86" data-am-dropdown=""> 
										
											<input type="text" class="am-selected-status am-fl">														
									</div>
									<em>年</em>
								</div>
								<div class="birth-select2">
									
									<div class="am-selected am-dropdown " id="am-selected-s1aex" data-am-dropdown=""> 
										
											<input type="text" class="am-selected-status am-fl">
									</div>
									<em>月</em>
								</div>
								<div class="birth-select2">
									
									<div class="am-selected am-dropdown " id="am-selected-s1aex" data-am-dropdown=""> 
										
											<input type="text" class="am-selected-status am-fl">
									</div>
									<em>日</em>
								</div>
							</div>
					
						</div>
						<div class="am-form-group">
							<label for="user-phone" class="am-form-label">电话</label>
							<div class="am-form-content">
								<input id="user-phone" placeholder="telephonenumber" type="tel">

							</div>
						</div>
						<div class="am-form-group">
							<label for="user-email" class="am-form-label">电子邮件</label>
							<div class="am-form-content">
								<input id="user-email" placeholder="Email" type="email">

							</div>
						</div>
						<div class="info-btn">
							<div class="am-btn am-btn-danger">保存修改</div>
						</div>

					</form>
				</div>
			</div>

		</div>
		<!--底部-->
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

	<aside class="menu">
		<ul>
			<li class="person">
				<a href="#">个人中心</a>
			</li>
			<li class="person">
				<a href="../mine/${name }-0">个人资料</a>
				<ul>
					<li class="active"> <a href="../mine/${name }-1">个人信息</a></li>
					<li> <a href="../mine/${name }-2">安全设置</a></li>
					<li> <a href="../renewAddr/${name }">收货地址</a></li>
				</ul>
			</li>
			<li class="person">
				<a href="../order/${name }">我的交易</a>
				<ul>
					<li><a href="../order/${name }">订单管理</a></li>
					<li> <a href="../order/${name }">退款售后</a></li>
				</ul>
			</li>
			<li class="person">
				<a href="#">我的资产</a>
				<ul>
					<li> <a href="#">账单明细</a></li>
				</ul>
			</li>

			<li class="person">
				<a href="#">我的小窝</a>
				<ul>
					
					<li> <a href="#">评价</a></li>
					<li> <a href="#">消息</a></li>
				</ul>
			</li>

		</ul>
	</aside>
</div>
</body>
</html>