<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>payCart</title>
<link href="../../css/sp.css" rel="stylesheet" type="text/css" />
<link href="../../css/demo.css" rel="stylesheet" type="text/css" />
<link href="../../css/cartstyle.css" rel="stylesheet" type="text/css" />
<link href="../../css/jsstyle.css" rel="stylesheet" type="text/css" />
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
	
	<div class="concent">
			<!--地址 -->
			<div class="paycont">
				<div class="address">
					<h3>确认收货地址 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>
					
					<h3><a href="../renewAddr/${name }">使用新地址</a></h3>
					
					<div class="clear"></div>
					<ul>
						<div class="per-border"></div>
						<li class="user-addresslist defaultAddr" style="border: 1px solid #ddd;">

							<div class="address-left">
								<div class="user DefaultAddr">

									<span class="buy-address-detail">   
                                       <span class="buy-user">${name } </span>
									<span class="buy-phone"></span>
									</span>
								</div>
								<div class="default-address DefaultAddr">
									<span class="buy-line-title buy-line-title-type">收货地址：</span>
									<span class="buy--address-detail">
							   <span class="province">安徽</span>省
									<span class="city">合肥</span>市
									<span class="dist">瑶海</span>区
									<span class="street">(安徽中医药大学(少荃湖校区))</span>
									</span>

									
								</div>
								<ins class="deftip">默认地址</ins>
							</div>
							
							<div class="clear"></div>

							<div style="margin-top: 30px; float: right">
								<a href="#" class="hidden">设为默认</a>
								<span class="new-addr-bar hidden">|</span>
								<a href="../renewAddr/${name }">编辑</a>
								<span class="new-addr-bar">|</span>
								<a href="javascript:void(0);" onclick="delClick(this);">删除</a>
							</div>

						</li>
						<div class="per-border"></div>
					</ul>

					<div class="clear"></div>
				</div>
				<!--物流 -->
				<div class="logistics">
					<h3>默认物流方式</h3>
					<ul class="op_express_delivery_hot">
						
						<li data-value="shunfeng" class="OP_LOG_BTN  op_express_delivery_hot_bottom">
							<i class="c-gap-right" style="background-position:0px -180px"></i>
							顺丰<span></span>
						</li>
					</ul>
				</div>
				<div class="clear"></div>

				<!--支付方式-->
				<div class="logistics">
					<h3>默认支付方式</h3>
					<ul class="pay-list">
						
						<li class="pay taobao"><img src="../../img/zhifubao.jpg">支付宝<span></span></li>
					</ul>
				</div>
				<div class="clear"></div>

				<!--订单 -->
				<div class="concent">
					<div id="payTable">
						<h3>确认订单信息</h3>
						<div class="cart-table-th">
							<div class="wp">

								<div class="th th-item">
									<div class="td-inner">商品信息</div>
								</div>
								<div class="th th-price">
									<div class="td-inner">单价</div>
								</div>
								<div class="th th-amount">
									<div class="td-inner">数量</div>
								</div>
								<div class="th th-sum">
									<div class="td-inner">金额</div>
								</div>
								<div class="th th-oplist">
									<div class="td-inner">配送方式</div>
								</div>

							</div>
						</div>
						<div class="clear"></div>
						  <c:forEach items="${pay }" var="goodsPay">
							<div class="bundle  bundle-last">

								<div class="bundle-main">
									<ul class="item-content clearfix">
										<div class="pay-phone">
											<li class="td td-item">
												<div class="item-pic">
													<a href="#" class="J_MakePoint">
														<img src="../../img/${goodsPay.gid }.jpg" class="itempic J_ItemImg"></a>
												</div>
												<div class="item-info">
													<div class="item-basic-info">
														<a href="#" class="item-title J_MakePoint" data-point="tbcart.8.11"></a>
													</div>
												</div>
											</li>
											<li class="td td-info">
												<div class="item-props">
													<span class="sku-line">商品编号:${goodsPay.gid }</span>
													
												</div>
											</li>
											<li class="td td-price">
												<div class="item-price price-promo-promo">
													<div class="price-content">
														<em class="J_Price price-now">${goodsPay.price }</em>
													</div>
												</div>
											</li>
										</div>
										<li class="td td-amount">
											<div class="amount-wrapper ">
												<div class="item-amount ">
													<span class="phone-title">购买数量</span>
													<div class="sl">
														${goodsPay.number }
													</div>
												</div>
											</div>
										</li>
										<li class="td td-sum">
											<div class="td-inner">
												<em tabindex="0" class="J_ItemSum number">${goodsPay.price*goodsPay.number }</em>
											</div>
										</li>
										<li class="td td-oplist">
											<div class="td-inner">
												<span class="phone-title">配送方式</span>
												<div class="pay-logis">
													快递<b class="sys_item_freprice">10</b>元
												</div>
											</div>
										</li>

									</ul>
									<div class="clear"></div>

								</div>
						
								<div class="clear"></div>
							</div>
						</c:forEach>
							
						<div class="clear"></div>
						<div class="pay-total">
					<!--留言-->
						<div class="order-extra">
							<div class="order-user-info">
								<div id="holyshit257" class="memo">
									<label>买家留言：</label>
									<input title="选填,对本次交易的说明（建议填写已经和卖家达成一致的说明）" placeholder="选填,建议填写和卖家达成一致的说明"  type="text" style="width: 600px; height: 50px;">
								
									<div class="msg hidden J-msg">
										<p class="error">最多输入500个字符</p>
									</div>
								</div>
							</div>

						</div>
						<!--优惠券 -->
						
						<div class="clear"></div>
						</div>
						<!--含运费小计 -->
						<div class="buy-point-discharge ">
							<p class="price g_price ">
								合计（含运费） <span>¥</span><em class="pay-sum">${totalPrice + 10 }</em>
							</p>
						</div>

						<!--信息 -->
						<div class="order-go clearfix">
							<div class="pay-confirm clearfix">
								<div class="box">
									<div tabindex="0" id="holyshit267" class="realPay"><em class="t">实付款：</em>
										<span class="price g_price ">
                                   <span>¥</span> <em class="style-large-bold-red " id="J_ActualFee">${totalPrice + 10 }</em>
										</span>
									</div>

									<div id="holyshit268" class="pay-address">

										<p class="buy-footer-address">
											<span class="buy-line-title buy-line-title-type">寄送至：</span>
											<span class="buy--address-detail">
							   				<span class="province">安徽</span>省
											<span class="city">合肥</span>市
											<span class="dist">瑶海</span>区
											<span class="street">安徽中医药大学(少荃湖校区)</span>
											</span>
											
										</p>
										<p class="buy-footer-address">
											<span class="buy-line-title">收货人：</span>
											<span class="buy-address-detail">   
                                        <span class="buy-user">${name } </span>
											<span class="buy-phone">15871145629</span>
											</span>
										</p>
									</div>
								</div>

								<div id="holyshit269" class="submitOrder">
									<div class="go-btn-wrap">
										<a id="J_Go" href="../pay/${name }" class="btn-go" tabindex="0" title="点击此按钮，提交订单">支付</a>
									</div>
								</div>
								<div class="clear"></div>
							</div>
						</div>
					</div>

					<div class="clear"></div>
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