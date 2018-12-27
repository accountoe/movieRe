package controller;

import java.net.URLDecoder;
import java.util.List;

import com.jfinal.core.Controller;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Record;

import model.Admin;
import model.Cart;
import model.Goods;
import model.User;

public class UserController extends Controller {

	public void index() {
		String type1 = "感冒药";
		String type2 = "口腔溃疡";
		String type3 = "皮肤瘙痒";
		String type4 = "上火";
		String type5 = "肠胃药";
		List<Goods> ganmao = Goods.dao.find("select * from goods where type = ? limit 0,10",type1);
		setAttr("ganmao",ganmao);
		List<Goods> kuiyang = Goods.dao.find("select * from goods where type = ? limit 0,10",type2);
		setAttr("kuiyang",kuiyang);
		List<Goods> pifu = Goods.dao.find("select * from goods where type = ? limit 0,10",type3);
		setAttr("pifu",pifu);
		List<Goods> shanghuo = Goods.dao.find("select * from goods where type = ? limit 0,10",type4);
		setAttr("shanghuo",shanghuo);
		List<Goods> changwei = Goods.dao.find("select * from goods where type = ? limit 0,10",type5);
		setAttr("changwei",changwei);
		
		render("firstPage.jsp");
	}
	
	public void loginU() {
		render("loginU.jsp");
	}
	//用户登录
	public void submitU() {
		String name = getPara("name");
		String password = getPara("password");
		User user = User.dao.findFirst("select * from user where name=?",name);
		
		if(user!=null) {
			if(password.equals(user.getStr("password"))) {
				getSession().setAttribute("name", user.getStr("name"));
				System.out.println("登录成功");
				redirect("/user/show");
			}else {
				System.out.println("密码不正确，请重新登录");
				//问题：会把之前输入的清空了。
				redirect("/user/login");
			}
		}else {
			System.out.println("账号不存在，请重新登录");
			redirect("/user/login");
		}
	}
	/*
	 * 管理员登录
	 */
	public void loginM() {
		render("loginM.jsp");
	}
	public void submitM() {
		String name = getPara("name");
		String password = getPara("password");
		Admin admin = Admin.dao.findFirst("select * from admin where name=?",name);
		
		if(admin!=null) {
			if(password.equals(admin.getStr("password"))) {
				getSession().setAttribute("name", admin.getStr("name"));
				List<Goods> goods = Goods.dao.find("select * from goods");
				setAttr("goods", goods);
				System.out.println("登录成功");
				render("manage.jsp");
			}else {
				System.out.println("密码不正确，请重新登录");
				//问题：会把之前输入的清空了。
				redirect("/user/loginM");
			}
		}else {
			System.out.println("账号不存在，请重新登录");
			redirect("/user/loginM");
		}
	}
	/*
	 * 新增药品
	 */
	public void addGoods() {
		render("addG.jsp");
	}
	public void submitAddG() {
		String name = getPara("goods.name");
		Goods goods1 = Goods.dao.findFirst("select * from goods where name = ?",name);
		if(goods1 == null) {
			Goods goods2 = getModel(Goods.class,"goods");
			goods2.save();

			List<Goods> goods = Goods.dao.find("select * from goods");
			setAttr("goods", goods);
			System.out.println("添加成功!");
			render("manage.jsp");
		}else {
			System.out.println("您输入的药品已经存在！请重新添加!");
			redirect("/user/addG");
		}
	}
	/*
	 * 修改药品
	 */
	public void alterGoods() {
		int gid = getParaToInt(0);
		Goods goods = Goods.dao.findById(gid);
		setAttr("goods", goods);
		render("alterG.jsp");
	}
	public void submitAlterG() {
		int id = getParaToInt("goods.id");
		String name = getPara("goods.name");
		String type = getPara("goods.type");
		double price = Double.parseDouble(getPara("goods.price"));
		String number = getPara("goods.number");
		String date = getPara("goods.date");
		
		Db.update("update goods goods set name = ?,type = ?,price = ?,number = ?,date = ? where id = ?",name,type,price,number,date,id);
		List<Goods> goods = Goods.dao.find("select * from goods");
		setAttr("goods", goods);
		System.out.println("修改成功!");
		render("manage.jsp");
	}
	/*
	 * 删除药品
	 * 小问题：删除后的页面渲染，url会多一层
	 * 解决方法：重新设一个新页面manage1.jsp
	 */
	public void dropGoods() {
		int id = getParaToInt(0);
		Db.delete("delete from goods where id = ?",id);
		List<Goods> goods = Goods.dao.find("select * from goods");
		setAttr("goods", goods);
		System.out.println("删除成功!");
		render("manage1.jsp");
	}
	//用户登录之后的首页
	public void show() {
		//重复，能不能调用转向另一个action，可以防止代码的重复编写
		String type1 = "感冒药";
		String type2 = "口腔溃疡";
		String type3 = "皮肤瘙痒";
		String type4 = "上火";
		String type5 = "肠胃药";
		List<Goods> ganmao = Goods.dao.find("select * from goods where type = ? limit 0,10",type1);
		setAttr("ganmao",ganmao);
		List<Goods> kuiyang = Goods.dao.find("select * from goods where type = ? limit 0,10",type2);
		setAttr("kuiyang",kuiyang);
		List<Goods> pifu = Goods.dao.find("select * from goods where type = ? limit 0,10",type3);
		setAttr("pifu",pifu);
		List<Goods> shanghuo = Goods.dao.find("select * from goods where type = ? limit 0,10",type4);
		setAttr("shanghuo",shanghuo);
		List<Goods> changwei = Goods.dao.find("select * from goods where type = ? limit 0,10",type5);
		setAttr("changwei",changwei);
		
		render("show.jsp");
	}
	
	/*
	 * 点击首页上的注册按钮，映射到注册页面
	 */
	public void register() {
		render("register.jsp");
	}
	
	public void submitR() {
		String name = getPara("user.name");
		User user1 = User.dao.findFirst("select * from user where name = ?",name);
		if(user1 == null) {
			User user2 = getModel(User.class,"user");
			user2.save();
			System.out.println("注册成功!");
			render("firstPage.jsp");
		}else {
			System.out.println("您输入的用户名已经存在！请重新注册!");
			redirect("/user/register");
		}
	}
	/*
	 * 搜索模块
	 */
	public void search() {
		String name = "";
		String input = getPara("inputSearch");
		String dealInput = "%"+input+"%";
		Goods goods = Goods.dao.findFirst("select * from goods where name like ?",dealInput);
		setAttr("goods", goods);
		if(goods == null) {
			//为什么两个render都执行了？问题。。。。。。。。。。。。。10.17
			System.out.println("未找到你要的药品名！");
			render("firstPage.jsp");
		}else {
			if(getPara(0) == null) {
				name = null;
			}else {
				name = URLDecoder.decode(getPara(0));
			}
			setAttr("name", name);
			render("details.jsp");
		}
	}
	
	//个人中心
	public void mine() {
		//未登录，不能访问。渲染到登录页
		if(getPara(0) == null) {
			render("login.jsp");
		}else {
			String name = URLDecoder.decode(getPara(0));
			setAttr("name", name);
			User username = User.dao.findFirst("select * from user where name = ?",name);
			setAttr("username", username);
			//通过不同的index，跳转到同类的不同页面
			int index = getParaToInt(1);
			switch(index) {
			case 0 : render("mine1.jsp");break;
			case 1 : render("mine2.jsp");break;
			case 2 : render("mine3.jsp");break;
			default: render("mine1.jsp");
			}
		}
	}
	//药品展示，根据类型分类
	public void medicineList() {
		String index = "";
		if(getPara(0) == null) {
			index = null;
		}else {
			index = URLDecoder.decode(getPara(0));
		}
		
		switch(index){
		case "0": index = "感冒药";break;
		case "1": index = "口腔溃疡";break;
		case "2": index = "皮肤瘙痒";break;
		case "3": index = "上火";break;
		case "4": index = "肠胃药";break;
		default:  index = "感冒药";
		}
		List<Goods> goods = Goods.dao.find("select * from goods where type = ? limit 0,10",index);
		setAttr("goods",goods);
		setAttr("type",index);
		System.out.println("得到数据"+ goods.size()+"个");
		render("goods.jsp");
	}
	//药品展示，根据品牌分类。无趣
	//没写index，观察
	public void brandList() {
		List<Goods> goods = Goods.dao.find("select * from goods where detail = ?",URLDecoder.decode(getPara(0)));
		setAttr("goods", goods);
		System.out.println("得到数据"+ goods.size()+"个");
		render("goods.jsp");
	}
	/*
	 * 药品展示，根据价格分类。也无趣
	 */
	public void priceList() {
		List<Goods> goods = Goods.dao.find("select * from goods where price < ?",URLDecoder.decode(getPara(0)));
		setAttr("goods", goods);
		System.out.println("得到数据"+ goods.size()+"个");
		render("goods.jsp");
	}
	/*
	 * 药品详情
	 */
	public void showDetails() {
		int gid = getParaToInt(0);
		String name = null;
		if(getPara(1) != null) {
			name = URLDecoder.decode(getPara(1));
		}
		//这里用户可以未登录，即name可为空
		setAttr("name", name);
		Goods goods = Goods.dao.findById(gid);
		setAttr("goods", goods);
		render("details.jsp");
	}
	/*
	 * 查看当前用户的购物车
	 */
	public void showCart() {
		if(getPara(0) == null) {
			render("login.jsp");
		}else {
			String name = URLDecoder.decode(getPara(0));
			List<Cart> mycart = Cart.dao.find("select * from cart where username = ?",name);
			setAttr("cart",mycart);
			System.out.println("得到数据"+mycart.size()+"个");
			//计算总的金额
			double totalPrice = 0.0;
			for (Cart cart : mycart) {
				totalPrice += cart.getDouble("price")*cart.getInt("number");
			}
			setAttr("totalPrice", totalPrice);
			render("cart.jsp");
		}
	}
	
	/*
	 * 添加购物车
	 * 查找数据库中是否有当前用户添加的这个商品进购物车
	 * 若没有则新建添加一条记录进购物车
	 * 若有则改变当前购物车中商品数量（累加）
	 */
	public void addToCart() {
		int gid = getParaToInt(0);
		String name = null;
		if(getPara(1) == null) {
			render("login.jsp");
		}else {
			name = URLDecoder.decode(getPara(1));
		}
		int number = getParaToInt("number");
		double price = Double.parseDouble(getPara("price"));
		//方法1：Db模式不提供insert方法，一定有。但不选择了，避免歧义
		//Db.insert("insert into cart (goods_id,username,number) values(?,?,?)",gid,name,number);
		Cart findCart = Cart.dao.findFirst("select * from cart where gid = ? and username = ?",gid,name);
		if(findCart == null) {
			Record cart = new Record().set("gid", gid).set("username",name).set("number", number).set("price", price);
			Db.save("cart", cart);
		}else {
			Db.update("update cart set number = ? where gid = ? and username = ?",number,gid,name);
		}
		Goods goods = Goods.dao.findById(gid);
		setAttr("goods", goods);
		render("details.jsp");
		
	}
	/*
	 * 删除商品
	 */
	public void deleteGoods() {
		int id = getParaToInt(0);
		String name = null;
		if(getPara(1) == null) {
			name = null;
		}else {
			name = URLDecoder.decode(getPara(1));
		}
		Db.delete("delete from cart where id = ?",id);
		List<Cart> mycart = Cart.dao.find("select * from cart where username = ?",name);
		setAttr("cart",mycart);
		System.out.println("得到数据"+mycart.size()+"个");
		double totalPrice = 0.0;
		for (Cart cart : mycart) {
			totalPrice += cart.getDouble("price")*cart.getInt("number");
		}
		setAttr("totalPrice", totalPrice);
		render("cart.jsp");
	}
	/*
	 * 支付结算
	 */
	public void payCarts() {
		String name = URLDecoder.decode((getPara(0)));
		List<Cart> mycart = Cart.dao.find("select * from cart where username = ?",name);
		setAttr("pay",mycart);
		System.out.println("得到数据"+mycart.size()+"个");
		
		double totalPrice = 0.0;
		for (Cart cart : mycart) {
			totalPrice += cart.getDouble("price")*cart.getInt("number");
		}
		setAttr("totalPrice", totalPrice);
		render("pay.jsp");
	}
	/*
	 * 新地址切换
	 */
	public void renewAddr() {
		
		render("address.jsp");
	}
	/*
	 * 支付。。。
	 */
	public void pay() {
		String name = URLDecoder.decode((getPara(0)));
		List<Cart> mycart = Cart.dao.find("select * from cart where username = ?",name);
		setAttr("pay",mycart);
		System.out.println("得到数据"+mycart.size()+"个");
		
		double totalPrice = 0.0;
		for (Cart cart : mycart) {
			totalPrice += cart.getDouble("price")*cart.getInt("number");
		}
		setAttr("totalPrice", totalPrice);
		
		render("success.jsp");
	}
	/*
	 * 订单管理页面
	 */
	public void order() {
		String name = URLDecoder.decode((getPara(0)));
		List<Cart> mycart = Cart.dao.find("select * from cart where username = ?",name);
		setAttr("order",mycart);
		System.out.println("得到数据"+mycart.size()+"个");
		
		double totalPrice = 0.0;
		for (Cart cart : mycart) {
			totalPrice += cart.getDouble("price")*cart.getInt("number");
		}
		setAttr("totalPrice", totalPrice);
		
		render("order.jsp");
	}
	/*
	 * 删除订单
	 */
	public void deleteOrder() {
		render("order.jsp");
	}
}
