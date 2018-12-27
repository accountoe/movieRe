package model;

import com.jfinal.plugin.activerecord.Model;

public class Goods extends Model<Goods> {
	public static final Goods dao = new Goods();
	
	public Goods getGoodsId(int userId) {
		return dao.findFirst("select * from goods where id = ? limit 1", userId);
	}
	
}
