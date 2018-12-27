<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="../../css/nr.css" />  
<title>Welcome to goodsList</title>
<style type="text/css">

</style>
</head>
	<body>
		<!--头部开始-->
		<header>
			<div id="header_top">
				<div id="top_1200">
					<b>客服热线：400-000-0000 (工作时间：9:00-21:00)</b>
					<ul>
						<c:if test="${name !=null }">
							<li><a href="../showCart/${name }">我的购物车</a></li>
							<li>您好，${name }</li>
						</c:if>
						<c:if test="${name == null }">
							<li>您好，请<a href="../loginU">登录</a></li>
							<li><a href="../register">注册</a></li>
						</c:if>
						<li><a href="#">帮助中心</a></li>
					</ul>
				</div>
			</div>
		</header>
		<div id="search">
		<div class="re-search">
			<div class="form">
			 <c:if test="${name !=null }">
			  <form action="../search/${name }" method="post">
				<input maxlength="64" class="search" placeholder="请输入药品名" name="inputSearch" type="text">
				<input type="submit" value="提交" class="button">
			  </form>
			 </c:if>
			 <c:if test="${name ==null }">
			  <form action="../search" method="post">
				<input maxlength="64" class="search" placeholder="请输入药品名" name="inputSearch" type="text">
				<input type="submit" value="提交" class="button">
			  </form>
			 </c:if>
			</div>
		</div>
		</div>
		<div id="navi">
			<div id="all_cate">
				<div id="cate_title"><a href="#">全部商品分类</a>
					<i></i>
				</div>
			</div>
			<div id="navi_main">
				<ul>
					<c:if test="${name ==null }">
						<li><a href="../index">首页</a></li>
					</c:if>
					<c:if test="${name !=null }">
						<li><a href="../show">首页</a></li>
					</c:if>
					<li><a href="../medicineList/0">感冒发烧</a></li>
					<li><a href="../medicineList/1">口腔溃疡</a></li>
					<li><a href="../medicineList/2">皮肤瘙痒</a></li>
					<li><a href="../medicineList/3">上火</a></li>
					<li><a href="../medicineList/4">肠胃药</a></li>
				</ul>
			</div>
		</div>
		<div id="wrapper">
			<div id="title">
				<ul>
					<c:if test="${name ==null }">
						<li><a href="../index">首页</a></li>
					</c:if>
					<c:if test="${name !=null }">
						<li><a href="../show">首页</a></li>
					</c:if>
					<li>&gt;</li>
					<li><a href="#">${type }</a></li>
				</ul>
			</div>
			<div id="fenlei">
				<div class="shaixuan">
					<span>
						<em>商品筛选</em>	
					</span>
				</div>
				<div class="attribute">
					
					<div class="item">
						<div class="item-key">品牌:</div>
						<div class="item-value">
							<div class="option" style="height: 34px;">
								<ul>
									<li><a href="../brandList/益尔">益尔</a></li>
									<li><a href="../brandList/德众">德众</a></li>
									<li><a href="../brandList/中族">中族</a></li>
									<li><a href="../brandList/盛生">盛生</a></li>
								</ul>
							</div>
						</div>
					</div>
					
					<div class="item bb">
						<div class="item-key">单价:</div>
						<div class="item-value">
							<div class="option" style="height: 34px;">
								<ul>
									<li><a href="../priceList/5">&lt;5</a></li>
									<li><a href="../priceList/10">5&lt;X&lt;10</a></li>
									<li><a href="../priceList/15">10&lt;X&lt;15</a></li>
									<li><a href="../priceList/20">15&lt;X&lt;20</a></li>
									<li><a href="../priceList/25">&gt;20</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="chanpin">
				<div class="search">
					<div class="sort">
						<div class="re-search">
							<input class="input" placeholder="在结果中搜索" value="" type="text" />
							<a href="#" class="re-btn">搜索</a>
							<em><i>1</i>/5</em>
						</div>
					</div>
				</div>
				<div class="product-list">
					<ul>
					  <c:forEach items="${goods }" var="goods">
						<li>
						  <!-- 循环开始 -->
						  
							<div class="package"></div>
							<div class="wrap">
								<div class="items">
									<a href="../showDetails/${goods.id }">
										<img src="../../img/${goods.id }.jpg" />
									</a>
									<p>
								       <span class="opr">
								       	    <em class="rmb">¥</em>${goods.price }
								       </span>       	 
								    </p>
								    <a href="../showDetails/${goods.id }" class="name">
								    	${goods.name }&nbsp;${goods.number }
								    </a>
								    <div class="extra"> 
										<span class="lib">
											包邮
										</span>
								    </div>
								    <div class="btn">
								    	<a class="look" href="../showDetails/${goods.id }">查看详情</a>
								    	<a class="collect" href="#">
								    		<i></i>
								    		收藏
								    	</a>
								    </div>
								</div>
							</div>
						 </li>
					  </c:forEach>
					</ul>	
				</div>	
			</div>
		</div>
		<div id="yeshu">
			<div id="content-foot">
			    <ul class="yemian">
				    <li><a href="xiju1.html">1</a></li>
				    <li><a href="xiju2.html">2</a></li>		
				    <li><a href="xiju3.html">3</a></li>
				    <li><a href="xiju1.html4">4</a></li>
				    <li><a href="xiju5.html5">5</a></li>
			    </ul>
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