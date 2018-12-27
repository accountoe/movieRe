package config;

import com.jfinal.config.Constants;
import com.jfinal.config.Handlers;
import com.jfinal.config.Interceptors;
import com.jfinal.config.JFinalConfig;
import com.jfinal.config.Plugins;
import com.jfinal.config.Routes;
import com.jfinal.kit.PropKit;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.c3p0.C3p0Plugin;
import com.jfinal.render.ViewType;
import com.jfinal.template.Engine;

import controller.IndexController;
import controller.UserController;
import model.Admin;
import model.Cart;
import model.Goods;
import model.User;

public class DemoConfig extends JFinalConfig {

	@Override
	public void configConstant(Constants me) {
		// TODO Auto-generated method stub
		me.setViewType(ViewType.JSP);
		PropKit.use("config.properties");
	}

	@Override
	public void configRoute(Routes me) {
		// TODO Auto-generated method stub
		me.add("/user", UserController.class);
		me.add("/",IndexController.class);
		
	}

	@Override
	public void configEngine(Engine me) {
		// TODO Auto-generated method stub

	} 

	@Override
	public void configPlugin(Plugins me) {
		// TODO Auto-generated method stub
		C3p0Plugin cp = new C3p0Plugin(PropKit.get("jdbcUrl"),PropKit.get("user"),PropKit.get("password"));
		me.add(cp);
		
		ActiveRecordPlugin arp = new ActiveRecordPlugin(cp);
		me.add(arp);
		//展示调用的每一句sql
		arp.setShowSql(true);
		
		arp.addMapping("user", User.class);
		
		arp.addMapping("admin", Admin.class);
		
		arp.addMapping("goods", Goods.class);
		
		arp.addMapping("cart", Cart.class);
		
	}

	@Override
	public void configInterceptor(Interceptors me) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void configHandler(Handlers me) {
		// TODO Auto-generated method stub

	}

}
