package model;

import com.jfinal.plugin.activerecord.Model;

public class Cart extends Model<Cart> {
	public static final Cart dao = new Cart();
	/*
	//购买商品的集合
	private HashMap<Goods,Integer> carts;
	//购物车的总金额
	private double totalprice;
	
	//构造方法
	public Cart() {
		carts = new HashMap<Goods,Integer>();
		totalprice = 0.0;
	}
	public HashMap<Goods, Integer> getCarts() {
		return carts;
	}
	public void setCarts(HashMap<Goods, Integer> carts) {
		this.carts = carts;
	}
	public double getTotalprice() {
		return totalprice;
	}
	public void setTotalprice(double totalprice) {
		this.totalprice = totalprice;
	}
	
	//添加商品进购物车的方法
	public boolean addGoodsInCart(Goods item,int number) {
		carts.put(item, number);
		calTotalprice();		//重新计算购物车的总金额
		return true;
	}
	//删除商品的方法
	public boolean removeGoodsFromCart(Goods item) {
		carts.remove(item);
		calTotalprice();		//重新计算购物车的总金额
		return true;
	}
	//统计购物车的总金额
	public double calTotalprice() {
		double sum = 0.0;
		Set<Goods> keys = carts.keySet();	//获得键的集合
		Iterator<Goods> it = keys.iterator();
		while(it.hasNext()) {
			Goods i = it.next();
			//sum += i.getprice()* carts.get(i); 
		}
		this.setTotalprice(sum);			//设置购物车的总金额
		return this.getTotalprice();
	}
	*/
}
