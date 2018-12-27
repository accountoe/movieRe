<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-type" content="text/html; charset=UTF-8">
	<meta name="description" content="">
	<meta name="Keywords" content="">
	<title>我的购物车</title>
	<link rel="stylesheet" href="../../css/sp.css" type="text/css">	
	<script type="text/javascript">
		//删除按钮
		function conf() {
			var flag = confirm("确定删除吗？");
			if(flag) {
				window.location.href = "../deleteGoods/${goodsCart.id }-${name }";
			}
		}
		//计算价格
		function cal() {
			document.getElementById("totalPrice").value = "${totalPrice}";
			document.getElementById("checkEach").checked = "checked";
			
		}
			
			
	</script>
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
		<div id="search">
		<div class="re-search">
			<div class="form">
			  <form action="searchM" method="post">
				<input maxlength="64" class="search" placeholder="请输入药品名" name="inputSearch" type="text">
				<input type="submit" value="提交" class="button">
			  </form>
			</div>
		</div>
	</div>
		
	    <div class="w1200">
	    	<h1>购物车</h1>
	    	<div class="shopcart">
	    		<div class="cart">
	    			<div class="w1200 js_shop_main">
	    			    <h2>全部商品</h2>
	    			<div class="cart-thead">
	    				<div class="column t-checkbox">
	    					<div class="cart-checkbox selected">
	    						<input type="checkbox" name="checkAll" id="checkAll" onclick="cal();" value="">
	    					</div>
	    					全选
	    				</div>
	    				<div class="column t-goods">商品信息</div>
	    				<div class="column t-props"></div>
	    				<div class="column t-price">单价(元)</div>
	    				<div class="column t-quantity">数量</div>
	    				<div class="column t-sum">小计(元)</div>
	    				<div class="column t-action">操作</div>
	    			</div>
	    			
	    			<div class="cart-list shopcart-list">
	    				<div class="cart-item-list">
	    				  <c:forEach items="${cart }" var="goodsCart">
	    				   
	    					<div class="cart-tbody">
	    						<div class="item-list">
	    							<div class="goodcodeItem">
	    								<div class="codeItemHeader">
	    									<span class="codeText">
	    										商品编码：GWM0102758
	    									</span>
	    								</div>
	    								<div class="codeItemList">
	    									<div class="item-single item-item selected">
	    										<div class="item-form">
	    											<div class="cell p-checkbox">
	    												<div class="cart-checkbox">
	    													<input type="checkbox" name="checkEach" id="checkEach"  onclick="" value="${goodsCart.id }" >
	    												</div>
	    											</div>
	    											<div class="cell p-goods">
	    											
	    												<div class="goods-item cf">
	    													<div class="p-img"> 
	    														<a href="../showDetails/${goodsCart.gid }">
	    															<img src="../../img/${goodsCart.gid }.jpg">
	    														</a> 
	    													</div>
	    													<div class="item-msg">
	    														<div class="p-name ellipsis">
	    															<a href="#">
	    																${goodsCart.name }&nbsp;
	    															</a>
	    														</div>
	    														<div class="p-extend">
	    															<span></span>
	    														</div>
	    													</div>
	    												</div>
	    											</div>
	    											<div class="cell p-props p-props-new">
	    												
	    											</div>
	    											<div class="cell p-price">
	    												<strong>${goodsCart.price }</strong>
	    											</div>
	    											<div class="cell p-quantity">
	    												<div class="quantity-form">  
	    													<strong>
	    													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    													${goodsCart.number }
	    													</strong>
	    												</div>
	    												<div class="ac ftx-03 quantity-txt ">
	    													有货
	    												</div>
	    											</div>
	    											<div class="cell p-sum cf">
	    												<strong class="price">
	    													<!-- EL表达式两层嵌套 -->
	    													${goodsCart.price * goodsCart.number }
	    												</strong>
	    											</div>
	    											<div class="cell p-ops">
	    												<!-- 路径跳转在js中写的，href中不用写，那样必跳转 -->
	    												<a class="js_delbtn" href="../deleteGoods/${goodsCart.id }-${name }" onclick="conf();">
	    													删除
	    												</a>
	    											</div>
	    											<div class="item-extra">	
	    											</div>
	    										</div>
	    									</div>
	    								</div>
	    							</div>
	    						</div>
	    						<div class="invalidList" style="display:none;">
	    							<div class="item-header item-invalid-header">
	    								<div class="f-txt ellipsis hd">
	    									<span class="badge">
	    										失效商品
	    									</span>
	    									商品已失效
	    								</div>
	    							</div>
	    							<div class="invalidBody">
	    								
	    							</div>
	    						</div>
	    					</div>
	    				  </c:forEach>
	    				</div>
	    			</div>
	    		</div>
	    		    <div class="cart-warp">
	    		    	<div class="cart-floatbar">
	    		    		<div class="shopcart-bar">
	    		    			<div class="select-all fl selected">
	    		    				
	    		    				
	    		    			</div>
	    		    			<div class="action fl">
	    		    				<a href="javascript:void(0);" class="js_delbtn_sel">
	    		   
	    		    				</a>
	    		    			</div>
	    		    			<div class="fr">
	    		    				<div class="quantity-sum fl">
	    		    					
	    		    				</div>
	    		    				<div class="price-sum fl">
	    		    					<p>
	    		    						总价（不含运费）
	    		    						<span class="opr">
	    		    							￥<input type="text" id="totalPrice" value="0.0">
	    		    						</span>
	    		    					</p>
	    		    					<p>
	    		    						已节省
	    		    						-
	    		    						<span class="text-number">
	    		    							￥0.00
	    		    						</span>
	    		    					</p>
	    		    				</div>
	    		    				<div class="btn fl">
	    		    				<!-- 为什么找不到路由呢，因为路由传输带.是过去不的。找不到404 -->
	    		    					<a href="../payCarts/${name }" class="js_order_btn" id="cart_tj">
	    		    						去结算
	    		    					</a>
	    		    				</div>
	    		    			</div>
	    		    			
	    		    		</div>
	    		    	</div>
	    		    </div>
	    	    </div>
	    	</div>
	    </div>
	    
	    <div id="footer">
			<div id="tiaofu">
				<ul>
					<li>权威荣誉</li>
					<li>药监认证</li>
					<li>品牌授权</li>
					<li>正品保证</li>
					<li>退换无忧</li>
					<li>隐私包装</li>
				</ul>
			</div>
			<ul id="footer-link">
				<li>
					<a href="#">关于我们</a>
					<span>|</span>
				</li>
				<li>
					<a href="#">联系我们</a>
					<span>|</span>
				</li>
				<li>
					<a href="#">人才招聘</a>
					<span>|</span>
				</li>
				<li>
					<a href="#">商家入驻</a>
					<span>|</span>
				</li>
				<li>
					<a href="#">广告服务</a>
					<span>|</span>
				</li>
				<li>
					<a href="#">手机京东</a>
					<span>|</span>
				</li>
				<li>
					<a href="#">友情链接</a>
					<span>|</span>
				</li>
				<li>
					<a href="#">销售联盟</a>
					<span>|</span>
				</li>
				<li>
					<a href="#">京东社区</a>
					<span>|</span>
				</li>
				<li>
					<a href="#">京东公益</a>
				</li>
			</ul>
			<div class="copy">
				<a href="#">京公网安备 11000002000088号</a>|京ICP证070359号|
				<a href="#">互联网药品信息服务资格证编号(京)-经营性-2014-0008</a> |新出发京零 字第大120007号<br />
                                        互联网出版许可证编号新出网证(京)字150号|<a href="#">出版物经营许可证</a> |
                <a href="#">网络文化经营许可证京网文[2014]2148-348号</a> |违法和不良信息举报电话：4006561155<br />
                Copyright © 2004 - 2018  京东JD.com 版权所有|消费者维权热线：4006067733&nbsp;
                <a href="#">经营证照</a> 
                |(京)网械平台备字(2018)第00003号|<a href="#">营业执照</a> <br />
                                        京东旗下网站：京东钱包|京东云
			</div>
		</div>
	   
    </body>
</html>