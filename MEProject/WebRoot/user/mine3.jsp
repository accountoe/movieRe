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
			<div class="user-safety">
				<div class="am-cf am-padding">
					<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">账户安全</strong> / <small>Set&nbsp;up&nbsp;Safety</small></div>
				</div>
				<hr>

				<!--头像 -->
				<div class="user-infoPic">

					<div class="filePic">
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

				<div class="check">
					<ul>
						<li>
			
							<div class="m-left">
								<div class="fore1">登录密码</div>
								<div class="fore2">
									<small>为保证您购物安全，建议您定期更改密码以保护账户安全。</small>
								</div>
							</div>
							<div class="fore3">
								<a href="#">
									<div class="am-btn am-btn-secondary">修改</div>
								</a>
							</div>
						</li>
						<li>
						
							<div class="m-left">
								<div class="fore1">支付密码</div>
								<div class="fore2"><small>启用支付密码功能，为您资产账户安全加把锁。</small></div>
							</div>
							<div class="fore3">
								<a href="#">
									<div class="am-btn am-btn-secondary">立即启用</div>
								</a>
							</div>
						</li>
						<li>
							
							<div class="m-left">
								<div class="fore1">手机验证</div>
								<div class="fore2"><small>您验证的手机：159XXXXXXXX 若已丢失或停用，请立即更换</small></div>
							</div>
							<div class="fore3">
								<a href="#">
									<div class="am-btn am-btn-secondary">换绑</div>
								</a>
							</div>
						</li>
						
						
						
					</ul>
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
					<li> <a href="../mine/${name }-1">个人信息</a></li>
					<li class="active"> <a href="../mine/${name }-2">安全设置</a></li>
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
					<li> <a href="bill.html">账单明细</a></li>
				</ul>
			</li>

			<li class="person">
				<a href="#">我的小窝</a>
				<ul>
					
					<li> <a href="comment.html">评价</a></li>
					<li> <a href="news.html">消息</a></li>
				</ul>
			</li>

		</ul>

	</aside>
</div>
</body>
</html>