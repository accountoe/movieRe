package controller;

import java.util.List;

import com.jfinal.core.Controller;

import model.Goods;

public class IndexController extends Controller{
	public void index() {
		render("firstPage.jsp");
	}
	public void baojian() {
		List<Goods> goods = Goods.dao.find("select * from goods where type = '保健'");
		setAttr("goods",goods);
		System.out.println("得到数据"+ goods.size()+"个");
		render("Ungoods.jsp");
	}
	public void weibing() {
		List<Goods> goods = Goods.dao.find("select * from goods where type = '胃病'");
		setAttr("goods",goods);
		System.out.println("得到数据"+ goods.size()+"个");
		render("Ungoods.jsp");
	}
}
