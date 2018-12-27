<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>订单管理</title>
	<link rel="stylesheet" href="../../css/huiyuanzhongxin1.css" type="text/css">
	<link rel="stylesheet" href="../../css/admin.css" type="text/css">
	<link rel="stylesheet" href="../../css/amazeui.css" type="text/css">
	<link rel="stylesheet" href="../../css/personal.css" type="text/css">
	<link rel="stylesheet" href="../../css/orstyle.css" type="text/css">
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
					<div class="user-order">

						<!--标题 -->
						<div class="am-cf am-padding">
							<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">订单管理</strong> / <small>Order</small></div>
						</div>
						<hr>

						<div class="am-tabs am-tabs-d2 am-margin" data-am-tabs="">

							<ul class="am-avg-sm-5 am-tabs-nav am-nav am-nav-tabs">
								<li class="am-active"><a href="#">所有订单</a></li>
								<li><a href="#">待付款</a></li>
								<li><a href="#">待发货</a></li>
								<li><a href="#">待收货</a></li>
								<li><a href="#">待评价</a></li>
							</ul>

							<div class="am-tabs-bd" style="touch-action: pan-y; -moz-user-select: none;">
								<div class="am-tab-panel am-fade am-active am-in " id="tab1">
									<div class="order-top">
										<div class="th th-item">
											商品
										</div>
										<div class="th th-price">
											单价
										</div>
										<div class="th th-number">
											数量
										</div>
										<div class="th th-operation">
											商品操作
										</div>
										<div class="th th-amount">
											合计
										</div>
										<div class="th th-status">
											交易状态
										</div>
										<div class="th th-change">
											交易操作
										</div>
									</div>

									<div class="order-main">
										<div class="order-list">
											
											<!--交易成功-->
											<div class="order-status5">
												<div class="order-title">
													<div class="dd-num">
														订单编号：
														<a href="javascript:;">
															16014
															${id }
														</a>
													</div>
													
													<!--    <em>店铺：小桔灯</em>-->
												</div>
												<div class="order-content">
													<div class="order-left">
													  <c:forEach items="${order }" var="order">
														<ul class="item-list">
															<li class="td td-item">
																<div class="item-pic">
																	<a href="#" class="J_MakePoint">
																		<img src="../../img/${order.gid }.jpg" class="itempic J_ItemImg">
																	</a>
																</div>
																<div class="item-info">
																	<div class="item-basic-info">
																		<a href="#">
																			<p></p>
																			<p class="info-little">
																				商品编码：1420${order.gid }
																		    </p>
																		</a>
																	</div>
																</div>
															</li>
															<li class="td td-price">
																<div class="item-price">
																	${order.price }
																</div>
															</li>
															<li class="td td-number">
																<div class="item-number">
																	<span>×</span>${order.number }
																</div>
															</li>
															<li class="td td-operation">
																<div class="item-operation">
																	
																</div>
															</li>
														</ul>
													 </c:forEach>
													</div>
													<div class="order-right">
														<li class="td td-amount">
															<div class="item-amount">
																合计：${totalPrice + 10 }
																<p>含运费：<span>10.00</span></p>
															</div>
														</li>
														<div class="move-right">
															<li class="td td-status">
																<div class="item-status">
																	<p class="Mystatus">交易成功</p>
																</div>
															</li>
															<li class="td td-change">
																<div class="am-btn am-btn-danger anniu">
																	<a href="#">删除订单</a>
																	
																</div>
															</li>
														</div>
													</div>
												</div>
											</div>								
										</div>

									</div>

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
						<a href="#">个人中心</a>
					</li>
					<li class="person">
						<a href="../mine/${name }-0">个人资料</a>
						<ul>
							<li> <a href="../mine/${name }-1">个人信息</a></li>
							<li> <a href="../mine/${name }-2">安全设置</a></li>
							<li> <a href="../renewAddr/${name }">收货地址</a></li>
						</ul>
					</li>
					<li class="person">
						<a href="../order/${name }">我的交易</a>
						<ul>
							<li class="active"><a href="../order/${name }">订单管理</a></li>
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