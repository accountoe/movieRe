<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>登录首页展示</title>
	<link rel="stylesheet" type="text/css" href="../css/shouye.css" />  
</head>
<body>
	<!--头部开始-->
	<header>
		<div id="header_top">
			<div id="top_1200">
				<b>客服热线：400-000-0000 (工作时间：9:00-21:00)</b>
				<ul>
					<li><a href="register" >免费注册</a></li>
					<li><a href="mine" >个人中心</a></li>
					<li><a href="loginM">管理员登录</a></li>
				</ul>
				<strong><a href="loginU">用户登录</a></strong>
			</div>
		</div>
	</header>
	<div id="search">
		<div class="re-search">
			<div class="form">
			  <form action="search" method="post">
				<input maxlength="64" class="search" placeholder="请输入药品名" name="inputSearch" type="text">
				<input type="submit" value="提交" class="button">
			  </form>
			</div>
		</div>
	</div>
	<div id="navi">
		<div id="all_cate">
			<div id="cate_title"><a href="#">家庭常备药</a>
				<i></i>
			</div>
			<div id="cate_main">
				<div class="adv">
					<dl class="adv-img">
					<dt><img src="../img/beijing_1.jpg" /></dt>
					</dl>
				</div>
				<div class="cate_line" >
					<h3>
						<a href="#">感冒发烧</a>
					</h3>
					<div class="sub_cate">	
						<div class="sub_cate_pop">
							<ul>
								<li>
									<a href="medicineList/0">解热镇痛&gt;</a><br />
									<span class="devider">|</span>	
									<a href="showDetails/1">感冒灵颗粒</a>
									<span class="devider">|</span>
									<a href="showDetails/2">布洛芬胶囊</a><br />
									<span class="devider">|</span>
									<a href="showDetails/3">复方感冒灵</a>
									<span class="devider">|</span>
									<a href="showDetails/4">感冒咳嗽灵</a><br />
									<span class="devider">|</span>
									<a href="showDetails/5">苏黄止咳灵</a>
									<span class="devider">|</span>
									<a href="showDetails/6">鲜竹沥液</a>
								</li>
								<li>
									<a href="medicineList/0">止咳化痰&gt;</a><br />
								    <span class="devider">|</span>
									<a href="showDetails/8">金银花颗粒 </a>
									<span class="devider">|</span>
									<a href="showDetails/9">防风通圣丸</a><br />
									<span class="devider">|</span>
									<a href="showDetails/10">感冒灵胶囊</a>
									<span class="devider">|</span>
									<a href="showDetails/11">维生素B2片</a>
								</li>
								<li>
									<a href="medicineList/0">祛风通窍&gt;</a><br />
									<span class="devider">|</span>
									<a href="showDetails/4">苏黄止咳</a>
									<span class="devider">|</span>
									<a href="showDetails/6">鲜竹沥液</a><br />
									<span class="devider">|</span>
									<a href="showDetails/14">冬凌草片</a>
								</li>
								<li>
									<a href="#">风邪犯肺&gt;</a><br />
									<span class="devider">|</span>
									<a href="showDetails/7">辛芩颗粒</a>
								</li>
							</ul>
						</div>
						<div class="ins_img">
							<dl>
							    <dt><a href="showDetails/1"><img src="../img/1.jpg"/></a></dt>
								<dd></dd>
							</dl>
							<dl>
						        <dt><a href="showDetails/2"><img src="../img/2.jpg"/></a></dt>
						        <dd></dd>       
							</dl>		
						</div>
						
						<div class="x">X</div>
					</div>
				</div>
				<div class="cate_line" >
					<h3>
						<a href="#">口腔溃疡</a>
					</h3>
					<div class="sub_cate">	
						<div class="sub_cate_pop">
							<ul>
								<li>
									<a href="#">消肿散结&gt;</a><br />
									<span class="devider">|</span>	
									<a href="#">强生</a>
									<span class="devider">|</span>
									<a href="#">海昌</a><br />
									<span class="devider">|</span>
									<a href="#">博士伦</a>
									<span class="devider">|</span>
									<a href="#">卫康</a><br />
									<span class="devider">|</span>
									<a href="#">视康</a>
									<span class="devider">|</span>
									<a href="#">库博/酷柏</a>
								</li>
								<li>
									<a href="#">利咽止痛&gt;</a><br />
									<span class="devider">|</span>
									<a href="#">强生</a>
									<span class="devider">|</span>
									<a href="#">博士伦</a><br />
									<span class="devider">|</span>
									<a href="#">海昌 </a>
									<span class="devider">|</span>
									<a href="#">视康</a><br />
									<span class="devider">|</span>
									<a href="#">实瞳/SEED</a>
									<span class="devider">|</span>
									<a href="#">海俪恩</a>
								</li>
								<li>
									<a href="#">牙龈肿痛&gt;</a><br />
									<span class="devider">|</span>
									<a href="#">护理液</a>
									<span class="devider">|</span>
									<a href="#">润眼液</a><br />
									<span class="devider">|</span>
									<a href="#">眼睛伴侣</a>
								</li>
								<li>
									<a href="#">牙痛阵作&gt;</a><br />
									<a href="#">日抛</a>
									<span class="devider">|</span>
									<a href="#">双周抛</a><br />
									<span class="devider">|</span>
									<a href="#">月抛</a>
									<span class="devider">|</span>
									<a href="#">半年抛</a><br />
									<span class="devider">|</span>
									<a href="#">年抛</a>
								</li>
							</ul>
						</div>
						<div class="ins_img">
							<dl>
							    <dt><a href="showDetails/11"><img src="../img/11.jpg"/></a></dt>
								<dd></dd>
							</dl>
							<dl>
						        <dt><a href="showDetails/12"><img src="../img/12.jpg"/></a></dt>
						        <dd></dd>       
							</dl>		
						</div>
						<div class="x">X</div>
					</div>
				</div>
				<div class="cate_line" >
					<h3>
						<a href="#">皮肤瘙痒</a>
					</h3>
					<div class="sub_cate">	
						<div class="sub_cate_pop">
							<ul>
								<li>
									<a href="#">护肤品&gt;</a><br />
									<span class="devider">|</span>	
									<a href="#">洁面</a>
									<span class="devider">|</span>
									<a href="#">爽肤水/化妆水</a><br />
									<span class="devider">|</span>
									<a href="#">精华液</a>
									<span class="devider">|</span>
									<a href="#">面霜/乳液</a><br />
									<span class="devider">|</span>
									<a href="#">护肤套装</a>
									<span class="devider">|</span>
									<a href="#">面膜</a>
								</li>
								<li>
									<a href="#">口腔护理&gt;</a><br />
									<span class="devider">|</span>
									<a href="#">牙膏</a>
									<span class="devider">|</span>
									<a href="#">牙刷</a><br />
									<span class="devider">|</span>
									<a href="#">漱口水</a>
									<span class="devider">|</span>
									<a href="#">牙线</a><br />
									<span class="devider">|</span>
									<a href="#">假牙清洁</a>
								</li>
								<li>
									<a href="#">休闲食品&gt;</a><br />
									<span class="devider">|</span>
									<a href="#">巧克力</a>
									<span class="devider">|</span><
									<a href="#">食品</a>
								</li>
								<li>
									<a href="#">家纺&gt;</a><br />
									<span class="devider">|</span>
									<a href="#">床上用品</a>
								</li>
							</ul>
						</div>
						<div class="ins_img">
							<dl>
							    <dt><a href="showDetails/21"><img src="../img/21.jpg"/></a></dt>
								<dd></dd>
							</dl>
							<dl>
						        <dt><a href="showDetails/22"><img src="../img/22.jpg"/></a></dt>
						        <dd></dd>       
							</dl>		
						</div>
						<div class="x">X</div>
					</div>
				</div>
				<div class="cate_line" >
					<h3>
						<a href="#">上火</a>
					</h3>
					<div class="sub_cate">	
						<div class="sub_cate_pop">
							<ul>
								<li>
									<a href="#">喂养器具&gt;</a><br />
									<span class="devider">|</span>	
									<a href="#">奶瓶</a>
									<span class="devider">|</span>
									<a href="#">奶嘴</a>
									<span class="devider">|</span>
									<a href="#">水杯</a>
									<span class="devider">|</span><br />
									<a href="#">餐具</a>
									<span class="devider">|</span>
									<a href="#">牙胶安抚</a>
									<span class="devider">|</span>
									<a href="#">食物存储</a>
								</li>
								<li>
									<a href="#">护理用品&gt;</a><br />
									<a href="#">洗浴用品&gt;</a><br />
									<a href="#">3段奶粉&gt;</a><br />
									<a href="#">童车童床&gt;</a><br />
								</li>
								<li>
									<a href="#">成人尿裤&gt;</a><br />
									<a href="#">尿片湿巾&gt;</a><br />
									<a href="#">玩具乐器&gt;</a><br />
								</li>
							</ul>
						</div>
						<div class="ins_img">
							<dl>
							    <dt><a href="showDetails/31"><img src="../img/31.jpg"/></a></dt>
								<dd></dd>
							</dl>
							<dl>
						        <dt><a href="showDetails/32"><img src="../img/32.jpg"/></a></dt>
						        <dd></dd>       
							</dl>		
						</div>
						<div class="x">X</div>
					</div>
				</div>	
				<div class="cate_line" >
					<h3>
						<a href="#">肠胃药</a>
					</h3>
					<div class="sub_cate">	
						<div class="sub_cate_pop">
							<ul>
								<li>
									<a href="#">喂养器具&gt;</a><br />
									<span class="devider">|</span>	
									<a href="#">奶瓶</a>
									<span class="devider">|</span>
									<a href="#">奶嘴</a>
									<span class="devider">|</span>
									<a href="#">水杯</a>
									<span class="devider">|</span><br />
									<a href="#">餐具</a>
									<span class="devider">|</span>
									<a href="#">牙胶安抚</a>
									<span class="devider">|</span>
									<a href="#">食物存储</a>
								</li>
								<li>
									<a href="#">护理用品&gt;</a><br />
									<a href="#">洗浴用品&gt;</a><br />
									<a href="#">3段奶粉&gt;</a><br />
									<a href="#">童车童床&gt;</a><br />
								</li>
								<li>
									<a href="#">成人尿裤&gt;</a><br />
									<a href="#">尿片湿巾&gt;</a><br />
									<a href="#">玩具乐器&gt;</a><br />
								</li>
							</ul>
						</div>
						<div class="ins_img">
							<dl>
							    <dt><a href="showDetails/41"><img src="../img/41.jpg"/></a></dt>
								<dd></dd>
							</dl>
							<dl>
						        <dt><a href="showDetails/42"><img src="../img/42.jpg"/></a></dt>
						        <dd></dd>       
							</dl>		
						</div>
						<div class="x">X</div>
					</div>
				</div>	
			</div>		
		</div>
		<div id="navi_main">
			<ul>
				<li><a href="#">首页</a></li>
				<li><a href="medicineList/0">感冒发烧</a></li>
				<li><a href="medicineList/1">口腔溃疡</a></li>
				<li><a href="medicineList/2">皮肤瘙痒</a></li>
				<li><a href="medicineList/3">肠胃药</a></li>
				<li><a href="medicineList/4">上火</a></li>
			</ul>
		</div>
	</div>
	<div id="content">
		<div class="floor">
			<div class="ct-l">
			    <table cellspacing="0">
				    <tr>
				    	<td class="bt-bj">&nbsp;1F &nbsp;<br />
				    	<b id="1f">感冒发烧</b></td>
				    </tr>
				</table>
		    </div>
		    <div class="ct-r">
		    	<div class="ct-prd">
		    		<ul>
		    		  <c:forEach items="${ganmao }" var="ganmao">
		    			<li>
		    				<dl>
		    					<dt><a href="showDetails/${ganmao.id }"><img src="../img/${ganmao.id }.jpg"/></a></dt>
		    					<dd><a href="showDetails/${ganmao.id }">${ganmao.name }&nbsp;${ganmao.number }</a></dd>
		    				</dl>
		    				<b>￥${ganmao.price }</b>
		    			</li>
		    		  </c:forEach>
		    		</ul>
		    	</div>
		    </div>
		    
		</div>
		<div class="jiange"></div>
		<div class="floor">
			<div class="ct-l">
			    <table cellspacing="0">
				    <tr>
				    	<td class="bt-bj">&nbsp;2F&nbsp;<br />
				    	<b id="2f">口腔溃疡</b></td>
				    </tr>
				</table>
		    </div>
		    <div class="ct-r">
		    	<div class="ct-prd">
		    		<ul>
		    			<c:forEach items="${kuiyang }" var="kuiyang">
		    			<li>
		    				<dl>
		    					<dt><a href="showDetails/${kuiyang.id }"><img src="../img/${kuiyang.id }.jpg"/></a></dt>
		    					<dd><a href="showDetails/${kuiyang.id }">${kuiyang.name }&nbsp;${kuiyang.number }</a></dd>
		    				</dl>
		    				<b>￥${kuiyang.price }</b>
		    			</li>
		    		  </c:forEach>
		    		</ul>
		    	</div>
		    </div>
		</div>
		<div class="jiange">
		</div>
		<div class="floor">
			<div class="ct-l">
			    <table cellspacing="0">
				    <tr>
				    	<td class="bt-bj">&nbsp;3F&nbsp;<br />
				    	<b id="3f">皮肤瘙痒</b></td>
				    </tr>
			    </table>
		    </div>
		    <div class="ct-r">
		    	<div class="ct-prd">
		    		<ul>
		    			<c:forEach items="${pifu }" var="pifu">
		    			<li>
		    				<dl>
		    					<dt><a href="showDetails/${pifu.id }"><img src="../img/${pifu.id }.jpg"/></a></dt>
		    					<dd><a href="showDetails/${pifu.id }">${pifu.name }&nbsp;${pifu.number }</a></dd>
		    				</dl>
		    				<b>￥${pifu.price }</b>
		    			</li>
		    		  </c:forEach>
		    		</ul>
		    	</div>
		    </div>
		</div>
		<div class="jiange"></div>
		<div class="floor">
			<div class="ct-l">
			    <table cellspacing="0">
				    <tr>
				    	<td colspan="2" class="bt-bj">&nbsp;4F&nbsp;<br />
				    	<b id="4f">上火</b></td>
				    </tr>
			    </table>
		    </div>
		    <div class="ct-r">
		    	<div class="ct-prd">
		    		<ul>
		    			<c:forEach items="${shanghuo }" var="shanghuo">
		    			<li>
		    				<dl>
		    					<dt><a href="showDetails/${shanghuo.id }"><img src="../img/${shanghuo.id }.jpg"/></a></dt>
		    					<dd><a href="showDetails/${shanghuo.id }">${shanghuo.name }&nbsp;${shanghuo.number }</a></dd>
		    				</dl>
		    				<b>￥${shanghuo.price }</b>
		    			</li>
		    		    </c:forEach>
		    		</ul>
		    	</div>
		    </div>
		</div>
		<div class="jiange"></div>
		<div class="floor">
			<div class="ct-l">
			    <table cellspacing="0">
				    <tr>
				    	<td colspan="2" class="bt-bj">&nbsp;5F&nbsp;<br />
				    	<b id="5f">肠胃药</b></td>
				    </tr>
			    </table>
		    </div>
		    <div class="ct-r">
		    	<div class="ct-prd">
		    		<ul>
		    			<c:forEach items="${changwei }" var="changwei">
		    			<li>
		    				<dl>
		    					<dt><a href="showDetails/${changwei.id }"><img src="../img/${changwei.id }.jpg"/></a></dt>
		    					<dd><a href="showDetails/${changwei.id }">${changwei.name }&nbsp;${changwei.number }</a></dd>
		    				</dl>
		    				<b>￥${changwei.price }</b>
		    			</li>
		    		    </c:forEach>
		    			
		    		</ul>
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