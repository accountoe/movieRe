<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../css/huiyuanzhongxin1.css" type="text/css">
<link rel="stylesheet" href="../../css/admin.css" type="text/css">
<link rel="stylesheet" href="../../css/amazeui.css" type="text/css">
<link rel="stylesheet" href="../../css/personal.css" type="text/css">
<link rel="stylesheet" href="../../css/addstyle.css" type="text/css">
</head>
<body>
  	<header>
	<div id="header_top">
		<div id="top_1200">
			<b>客服热线：400-000-0000 (工作时间：9:00-21:00)</b>
			<ul>
				<li><a href="../show">返回首页</a></li>
				<li><a href="../showCart/${name }">我的购物车</a></li>
				<li><a href="../mime/${name }">个人中心</a></li>
				<li><strong>你好，${name }</strong></li>
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
			<div class="user-address">
				<!--标题 -->
				<div class="am-cf am-padding">
					<div class="am-fl am-cf">
						<strong class="am-text-danger am-text-lg">
							地址管理
						</strong> 
						/ 
						<small>
							Address&nbsp;list
						</small>
					</div>
				</div>
				<hr>
				<ul class="am-avg-sm-1 am-avg-md-3 am-thumbnails">

					<li class="user-addresslist defaultAddr">
						<span class="new-option-r">
							<i class="am-icon-check-circle">	
							</i>
							默认地址
						</span>
						<p class="new-tit new-p-re">
							<span class="new-txt">${name }</span>
							<span class="new-txt-rd2">159****1591</span>
						</p>
						<div class="new-mu_l2a new-p-re">
							<p class="new-mu_l2cw">
								<span class="title">地址：</span>
								<span class="province">安徽</span>省
								<span class="city">合肥</span>市
								<span class="dist">瑶海</span>区
								<span class="street">
									安徽中医药大学(少荃湖校区)
								</span>
							</p>
						</div>
						<div class="new-addr-btn">
							<a href="#">		
								编辑
							</a>
							<span class="new-addr-bar">|</span>
							<a href="javascript:void(0);" onclick="delClick(this);">
								删除
							</a>
						</div>
					</li>
					<li class="user-addresslist">
						<span class="new-option-r">
							<i class="am-icon-check-circle"></i>
							设为默认
						</span>
						<p class="new-tit new-p-re">
							<span class="new-txt">小明</span>
							<span class="new-txt-rd2">159****1622</span>
						</p>
						<div class="new-mu_l2a new-p-re">
							<p class="new-mu_l2cw">
								<span class="title">地址：</span>
								<span class="province">湖北</span>省
								<span class="city">武汉</span>市
								<span class="dist">洪山</span>区
								<span class="street">
									雄楚大道666号
								</span>
							</p>
						</div>
						<div class="new-addr-btn">
							<a href="#">编辑</a>
							<span class="new-addr-bar">|</span>
							<a href="javascript:void(0);" onclick="delClick(this);">
		
								删除
							</a>
						</div>
					</li>
					
				</ul>
				<div class="clear"></div>
				<a class="new-abtn-type" data-am-modal="{target: '#doc-modal-1', closeViaDimmer: 0}">添加新地址</a>
				<!--例子-->
				<div class="" id="doc-modal-1">

					<div class="add-dress">

						<!--标题 -->
						<div class="am-cf am-padding">
							<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">新增地址</strong> / <small>Add&nbsp;address</small></div>
						</div>
						<hr>

						<div class="am-u-md-12 am-u-lg-8" style="margin-top: 20px;">
							<form class="am-form am-form-horizontal">

								<div class="am-form-group">
									<label for="user-name" class="am-form-label">收货人</label>
									<div class="am-form-content">
										<input id="user-name" placeholder="收货人" type="text">
									</div>
								</div>

								<div class="am-form-group">
									<label for="user-phone" class="am-form-label">手机号码</label>
									<div class="am-form-content">
										<input id="user-phone" placeholder="手机号必填" type="email">
									</div>
								</div>
								<div class="am-form-group">
									<label for="user-address" class="am-form-label">所在地</label>
									<div class="am-form-content address">
										<div class="am-selected am-dropdown " id="am-selected-aspi5" data-am-dropdown="">
											
											<input type="text" class="am-selected-btn am-btn am-dropdown-toggle am-btn-default" placeholder="省">
										</div>
										
										<div class="am-selected am-dropdown " id="am-selected-06p18" data-am-dropdown="">
											<input type="text" class="am-selected-btn am-btn am-dropdown-toggle am-btn-default" placeholder="市">
		
										</div>
										<div class="am-selected am-dropdown " id="am-selected-47oex" data-am-dropdown="">
											<input type="text" class="am-selected-btn am-btn am-dropdown-toggle am-btn-default" placeholder="区">
											</button> 
											
										</div> 
									</div>
								</div>

								<div class="am-form-group">
									<label for="user-intro" class="am-form-label">详细地址</label>
									<div class="am-form-content">
										<textarea class="" rows="3" id="user-intro" placeholder="输入详细地址"></textarea>
										<small>100字以内写出你的详细地址...</small>
									</div>
								</div>

								<div class="am-form-group">
									<div class="am-u-sm-9 am-u-sm-push-3">
										<a href="../renewAddr/${name }" class="am-btn am-btn-danger">保存</a>
										<a href="#" class="am-close am-btn am-btn-danger" >取消</a>
									</div>
								</div>
							</form>
						</div>

					</div>

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
				<a href="#">会员中心</a>
			</li>
			<li class="person">
				<a href="../mine/${name }-0">个人资料</a>
				<ul>
					<li> <a href="../mine/${name }-1">个人信息</a></li>
					<li> <a href="../mine/${name }-2">安全设置</a></li>
					<li class="active"><a href="../renewAddr/${name }">收货地址</a></li>
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
					<li> <a href="#">优惠券 </a></li>
					<li> <a href="#">红包</a></li>
					<li> <a href="#">账单明细</a></li>
				</ul>
			</li>

			<li class="person">
				<a href="#">我的小窝</a>
				<ul>
					<li> <a href="#">收藏</a></li>
					<li> <a href="#">足迹</a></li>
					<li> <a href="#">评价</a></li>
					<li> <a href="#">消息</a></li>
				</ul>
			</li>

		</ul>

	</aside>
</div>
</body>
</html>