package com.onroad.common.config;

import com.jfinal.config.Constants;
import com.jfinal.config.Handlers;
import com.jfinal.config.Interceptors;
import com.jfinal.config.JFinalConfig;
import com.jfinal.config.Plugins;
import com.jfinal.config.Routes;
import com.jfinal.core.JFinal;
import com.jfinal.kit.PropKit;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.activerecord.CaseInsensitiveContainerFactory;
import com.jfinal.plugin.activerecord.dialect.MysqlDialect;
import com.jfinal.plugin.c3p0.C3p0Plugin;
import com.jfinal.render.ViewType;
import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;
import com.onroad.common.model._MappingKit;
import com.onroad.controller.IndexController;
import com.onroad.controller.QuotationController;

/**
 * API引导式配置
 */
public class CoreConfig extends JFinalConfig {

	/**
	 * 配置常量
	 */
	public void configConstant(Constants me) {
		// 加载必要配置，随后可用PropKit.get(...)获取值
		PropKit.use("onroad_config.txt");
		// 设置开发模式
		me.setDevMode(PropKit.getBoolean("devMode", false));
		// 设置视图类型为Jsp，否则默认为FreeMarker
		me.setViewType(ViewType.JSP);

	}

	/**
	 * 配置路由
	 */
	@Override
	public void configRoute(Routes me) {
		me.add("/", IndexController.class, "/index");
		// 第三个参数为该Controller的视图存放路径
		me.add("/quotation", QuotationController.class);
	}

	/**
	 * 配置数据库，url、用户名、密码
	 */
	public static C3p0Plugin createC3p0Plugin() {
		return new C3p0Plugin(PropKit.get("jdbcUrl"), PropKit.get("user"),
				PropKit.get("password").trim());
	}

	/**
	 * 配置插件
	 */
	public void configPlugin(Plugins me) {
		// 配置C3p0数据库连接池插件/
		C3p0Plugin C3p0Plugin = createC3p0Plugin();
		me.add(C3p0Plugin);

		// 配置ActiveRecord插件
		ActiveRecordPlugin arp = new ActiveRecordPlugin(C3p0Plugin);
		me.add(arp);
		// 配置Mysql
		arp.setDialect(new MysqlDialect());

		// 配置属性名（字段名）大小写不敏感容器工厂
		arp.setContainerFactory(new CaseInsensitiveContainerFactory());
		// 所有配置在 MappingKit 中搞定
		_MappingKit.mapping(arp);
	}

	/**
	 * 配置全局拦截器
	 */
	public void configInterceptor(Interceptors me) {

	}

	/**
	 * 配置处理器
	 */
	public void configHandler(Handlers me) {

	}

	/**
	 * 建议使用 JFinal 手册推荐的方式启动项目 运行此 main
	 * 方法可以启动项目，此main方法可以放置在任意的Class类定义中，不一定要放于此
	 */
	public static void main(String[] args) {
		JFinal.start("WebRoot", 80, "/", 5);
	}
}
