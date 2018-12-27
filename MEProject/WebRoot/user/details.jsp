<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>welcome to details</title>
<link rel="stylesheet" type="text/css" href="../../css/yp.css" />  
<style type="text/css">
	.span{
	     padding:0 6px;
	     border:1px #c0c0c0 solid;
	     cursor:pointer;
	}
</style>
<script type="text/javascript">
	function add() {
	   var num = parseInt(document.getElementById("number").value);
	   if(num<100) {
	      document.getElementById("number").value = ++num;
	   }
	}
	function sub() {
	   var num = parseInt(document.getElementById("number").value);
	   if(num>1) {
	      document.getElementById("number").value = --num;
	   }
	}
	function addCart() {
		window.alert("添加成功！");
	}
</script>
</head>
	<body>
		<!--头部开始-->
		<header>
			<div id="header_top">
				<div id="top_1200">
					<b>客服热线：400-000-0000 (工作时间：9:00-21:00)</b>
					<ul>
						<li><a href="../mine/${name }" >个人中心</a></li>
					    <li><a href="../showCart/${name }">我的购物车</a></li>
						<c:if test="${name == null }">
							<li>您好，请<a href="../loginU">登录</a></li>
							<li><a href="../register">注册</a></li>
						</c:if>
						<c:if test="${name !=null }">
							<li>您好，${name }</li>
						</c:if>
					</ul>
				</div>
			</div>
		</header>
		<div id="search">
			<div class="re-search">
				<div class="form">
				  <form action="../search/${name }" method="post">
					<input maxlength="64" class="search" placeholder="请输入药品名" name="inputSearch" type="text">
					<input type="submit" value="提交" class="button">
				  </form>
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
						<li><a href="../../index">首页</a></li>
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
					<li><a href="#">首页</a></li>
					<li>&gt;</li>
					<li><a href="medicineList/${goods.type }">${goods.type }</a></li>
					<li>&gt;</li>
					<li><a href="#">${goods.name }</a></li>
				</ul>
			</div>
			<div id="xiangqing">
				<div class="product-intro">
					<div class="preview" style="text-align: center;">
						<div id="show" 
							style="border: 1px solid #ddd; 
							display: table-cell; vertical-align: middle;">
							<img src="../../img/${goods.id }.jpg" />
						</div>
					</div>
		            <div class="inner">
		            	<h1>${goods.name }&nbsp;${goods.number }</h1>
		            	<span class="f_title">
		            		${goods.function }
		            	</span>
		            	<div class="summary">
						<ul>
							<li>
								<div id="oprText" class="dt">
									<em>国药价：</em>
								</div>
								<div class="dd">
									<span id="opr" class="opr">
										${goods.price }
									</span>
									
								</div>
							</li>
							<li>
								<div id="oprText" class="dt"style="line-height: 30px;">
									促销：
								</div>
								<div style="overflow: hidden;margin-top: 4px;">
						     		<div class="stemdiv">
						     			<div class="dd">
								            <span class=" Promotionkist">
								            	<span class="Promotionspan">包邮</span>
								            	<span class="zk_center">在线支付满88元包邮</span>
								            </span>
							            </div>
						        	</div>
							    </div>
							</li>
						</ul>
					    </div>	
					    <div>
					    	<ul>
							    <li class="manufactor_name">
							    	<div id="oprText" class="dt">
									生产厂家：
							    	</div>
							    	${goods.manufacture }
							    </li>
						    </ul>	
					    </div>
					    <form action="../addToCart/${goods.id }-${name }" method="post">
					    	<input type="hidden" name="price" value="${goods.price }">
					   		<div class="choose">
					    		<div class="dt">数&nbsp;&nbsp;量：</div>
					    		<span id="sub" class="span" onclick="sub();">-</span>
								<input type="text" id="number" name="number" value="1" size="2"/>
								<span id="add" class="span" onclick="add();">+</span>
							</div>
							<input class="append" type="submit" value="加入购物车" onclick="addCart();" style="pointer-events: auto; background: rgb(250, 70, 45) none repeat scroll 0% 0%;" />
					    </form>
		            </div>
				</div>	
			</div>
		</div>
		<div id="shuoming">
			<div class="span5">
				<div class="product-detail">
					<div class="tab">
						<ul class="tab_nav">
							<li class="cur"><a href="#">说明书</a></li>
							
						</ul>
					</div>
					<div class="tab_content">
						<div id="instructions" class="tab_con" style="display: block;">
								<table id="instruc_list">
									<tbody>
										<tr>
											<td width="100" align="left">商品名</td>
											<td width="970px">${goods.name }</td>
										</tr>
										<tr>
											<td width="100" align="left">规格</td>
											<td width="970px">${goods.number }</td>
										</tr>
										<tr>
											<td width="100" align="left">批准文号</td>
											<td width="970px">国药准字H199831${goods.id }</td>
										</tr>
										  										<tr>
											<td width="100" align="left">生产厂家</td>
											<td width="970px">${goods.manufacture }</td>
										</tr>
										<tr>
											<td width="100" align="left">成分</td>
											<td width="970px">布洛芬本品每粒含主要成份布洛芬0.3g。辅料为：糖、淀粉、硬脂酸、聚乙烯吡咯烷酮。</td>
										</tr>
										<tr>
											<td width="100" align="left">性状</td>
											<td width="970px">本品内容物为白色球形小丸。</td>
										</tr>
										<tr>
											<td width="100" align="left">适应症</td>
											<td width="970px">用于缓解轻至中度疼痛如头痛、关节痛、偏头痛、牙痛、肌肉痛、神经痛、痛经。也用于普通感冒或流行性感冒引起的发热。</td>
										</tr>
										<tr>
											<td width="100" align="left">用法用量</td>
											<td width="870px">口服。成人，一次1粒，一日2次（早晚各一次）。</td>
										</tr>
										<tr>
											<td width="100" align="left">不良反应</td>
											<td width="970px"> 
												1．少数病人可出现恶心、呕吐、胃烧灼感或轻度消化不良、胃肠道溃疡及出血、转氨酶升高、头痛、头晕、耳鸣、视力模糊、精神紧张、嗜睡、
												下肢水肿或体重骤增。
												 2．罕见皮疹、过敏性肾炎、膀胱炎、肾病综合征、肾乳头坏死或肾功能衰竭、支气管痉挛。 
												 3．罕见过敏性肾炎、膀胱炎、肾病综合征、肾乳头坏死或肾功能衰竭，尤其注意在长期使用时通常伴有血清尿素水平升高和水肿，罕见支气管痉挛。
												 4．有肠道疾病如溃疡性结肠炎和免隆氏病(Crohn's disease)既往史者，有可能加重病情。 
												 5．极罕见造血障碍（贫血、白细胞减少症、血小板减少症、全血细胞减少症、粒细胞缺乏症。初始症状为发热、咽喉痛、浅表性口腔溃疡、流感样症状、重度疲劳、出现原因不明的瘀伤或出血）可肝病。
												 6．极罕见严重过敏反应，症状包括：面部、舌和咽喉水肿，呼吸困难，心动过速，低血压（过敏反应，血管性水肿 或休克）。 
												 7．用非甾体抗炎药治疗，有出现水肿、高血压和心力衰竭的报道。 
												 8．在自身免疫性疾病患者中，（如系统性红斑狼疮、混合性结缔组织病）布洛芬治疗间有发生无菌性脑膜炎症状的个别案例，如颈强直、头痛、恶心、呕吐、发热或意识混乱。
											</td>
										</tr>
										<tr>
											<td width="100" align="left">禁忌</td>
											<td width="970px"> 
												1．活动期消化道溃疡患者禁用； 
												2．对本药物过敏者，因服用阿司匹林和其他非类固醇类抗炎药诱发哮喘、鼻炎或荨麻疹的患者禁用；
												3．对其他非甾体类抗炎药过敏者禁用；
												4．孕妇及哺乳期妇女禁用；
												5．对阿司匹林过敏的哮喘患者禁用。
											</td>
										</tr>
										<tr>
											<td width="100" align="left">注意事项</td>
											<td width="970px"> 
												1．本品为对症治疗药，自我用药不宜长期或大量使用，用于止痛不得超过5天，用于解热不得超过3天，如症状不缓解，请咨询医师或药师。 
												2．本品最好在餐中或餐后服用。 
												3．对本品及其他解热、镇痛抗炎药物过敏者禁用。过敏体质者慎用。 
												4．第一次使用本品如出现皮疹、粘膜损伤或过敏症状，应停药并咨询医师。 
												5．必须整粒吞服，不得打开或溶解后服用。
												6．不能同时服用其他含有解热镇痛药的药品（如某些复方抗感冒药）。 
											    7．服用本品期间不得饮酒或含有酒精的饮料。
												8．肠胃病患者使用前请咨询医师或药师，既往有与使用非甾体类抗炎药治疗相关的上消化道出血或穿孔史者禁用。
											    9．有下列情况患者慎用：60岁以上、支气管哮喘、肝肾功能不全、凝血机制或血小板功能障碍（如血友病或其他出血性疾病）。 
											    10．下列情况患者应在医师指导下使用：有消化性溃疡史、胃肠道出血、近期进行过胃部手术、慢性肠炎或克隆氏病(Crohn's disease)，心功能不全、高血压。
											    11．有系统性红斑狼疮或混合性结缔组织病，免疫系统疾病导致关节疼痛、皮肤改变和其他器官的病症患者应慎用，因有增加无菌性脑膜炎的风险。
											    12．如出现胃肠道出血或溃疡、肝、肾功能损害、尿液混浊或尿中带血、背部疼痛、视力或听力障碍、血象异常、胸痛、气短、无力、言语含糊等情况，应停药并咨询医师。 
											    13．总体而言，小剂量布洛芬（每日≤1.2克）不会导致心肌梗塞风险增加。而在采用高剂量和延长治疗时，应警惕这种风险增加的可能。
						      				    14．本布洛芬胶囊制剂仅适用于成人。 
											    15．准备怀孕的妇女应慎用或在医师指导下使用，因布洛芬属于非甾体类抗炎药，有可能削弱女性生育力，但停药后具有可逆性。
											    16．勿过量服药，如服用过量或出现严重不良反应，应立即就医。
										        17．本品性状发生改变时禁止使用。
									   	        18．请将本品放在儿童不能接触的地方。
										        19．如正在使用其他药品，使用本品前请咨询医师或药师。
                                                                                                                                             【儿童用药】尚不明确。
                                                                                                                                             【老年患者用药】尚不明确。
                                                                                                                                             【孕妇及哺乳期妇女用药】孕妇及哺乳期妇女禁用。
											</td>
										</tr>
										<tr>
											<td width="100" align="left">药物相互作用</td>
											<td width="970px">
												1．本品与其他解热、镇痛、抗炎药物同用时可增加胃肠道不良反应，并可能导致溃疡， 
												2．本品与肝素双香豆素类（如华法林）等抗凝药同用时可导致凝血酶原时间延长增加出血倾同。 
												3．本品与地高辛、甲氨蝶呤、口服降血糖药物同用时，能使这些药物的血药浓度增高，不宜同用。
												4．本品与呋塞米（呋喃苯胺酸）同用时，后者的排钠和降压作用减弱；与抗高血压药同用时，也降低后者的降压效果。 
												5．布洛芬与氨基糖苷类、糖皮质激素、抗血小板药物如阿司匹林、环孢霉素、利尿剂、锂、喹诺酮类药物、齐多夫定、
												选择性5-羟色胺再摄取抑制剂联合使用已有相互作用的报道，应慎用或在医师指导下使用。 
												6．如与其他药物同时使用可能会发生药物相互作用，详情请咨询医师或药师。
											</td>
										</tr>
                                        <tr>
											<td width="100" align="left">贮藏</td>
											<td width="870px">密封</td>
										</tr>
										<tr>
											<td width="100" align="left">包装</td>
											<td width="870px">盒</td>
										</tr>
										<tr>
											<td width="100" align="left">保质期</td>
											<td width="970px">${goods.date }</td>
										</tr> 
									</tbody>
								</table>

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