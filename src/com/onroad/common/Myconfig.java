package com.onroad.common;

import org.bee.tl.core.GroupTemplate;
import org.bee.tl.ext.jfinal.BeetlRenderFactory;

import com.alibaba.fastjson.JSONObject;
import com.jfinal.config.Constants;
import com.jfinal.config.Handlers;
import com.jfinal.config.Interceptors;
import com.jfinal.config.JFinalConfig;
import com.jfinal.config.Plugins;
import com.jfinal.config.Routes;
import com.jfinal.core.JFinal;
import com.jfinal.ext.interceptor.SessionInViewInterceptor;
import com.jfinal.kit.StringKit;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.c3p0.C3p0Plugin;
import com.jfinal.plugin.druid.DruidPlugin;
import com.jfinal.plugin.ehcache.EhCachePlugin;
import com.onroad.config.Context;
import com.onroad.ext.beetl.IsSame;
import com.onroad.ext.beetl.PrintTime;
import com.onroad.handler.APINotFoundHandler;
import com.onroad.handler.ContextHandler;
import com.onroad.interceptor.ErrorInterceptor;
import com.onroad.interceptor.GlobalInterceptor;
import com.onroad.model.DayWord;
import com.onroad.model.FeedBack;
import com.onroad.model.Module;
import com.onroad.model.Post;
import com.onroad.model.RegisterCode;
import com.onroad.model.Reply;
import com.onroad.model.Topic;
import com.onroad.model.User;
import com.onroad.plugin.HikariCPPlugin;
import com.onroad.router.APIRouter;
import com.onroad.router.ActionRouter;

/**
 * 感谢 @波总 的JFinal，@闲.大赋 的beetl，向你们致敬！ ：） 如有问题，可以加 JFinal-BBS QQ群：206034609 讨论
 */
public class Myconfig extends JFinalConfig {
	private String json = java.lang.System.getenv("VCAP_SERVICES");
	private boolean isLocal = StringKit.isBlank(json);

	/**
	 * 配置常量
	 */
	public void configConstant(Constants me) {
		loadPropertyFile("classes/config.txt");
		if (isLocal) {
			me.setDevMode(true);// 开启开发模式
			me.setEncoding("UTF-8");
			// me.setViewType(ViewType.JSP);
		}
		me.setError404View("/common/404.html");
		me.setError500View("/common/500.html");
		me.setMainRenderFactory(new BeetlRenderFactory());
		GroupTemplate gt = BeetlRenderFactory.groupTemplate;
		gt.registerFunction("isSame", new IsSame());
		gt.registerFunction("printTime", new PrintTime());
		gt.setStatementStart("@");
		gt.setStatementEnd(null);
	}

	/**
	 * 配置路由
	 */
	@Override
	public void configRoute(Routes me) {
		me.add(new APIRouter());// 接口路由
		me.add(new ActionRouter()); // 页面路由
	}

	/**
	 * 配置插件
	 */
	@Override
	public void configPlugin(Plugins me) {
//		 String jdbcUrl, username, password, driver;
//		 driver = getProperty("driverClass");
//		 if (isLocal) {
//		 jdbcUrl = getProperty("jdbcUrl");
//		 username = getProperty("username");
//		 password = getProperty("password");
//		 } else {
//		 JSONObject json = JSONObject.parseObject(this.json)
//		 .getJSONArray("mysql-5.6.25").getJSONObject(0)
//		 .getJSONObject("credentials");
//		 username = json.getString("username");
//		 password = json.getString("password");
//		 jdbcUrl = "jdbc:mysql://" + json.getString("host") + ":"
//		 + json.getString("port") + "/" + json.getString("name");
//		 }
//		 DruidPlugin druidPlugin = new DruidPlugin(jdbcUrl, username,
//		 password,
//		 driver);
//		 druidPlugin.setInitialSize(3).setMaxActive(10);
//		 me.add(druidPlugin);
//		 // 配置ActiveRecord插件
//		 ActiveRecordPlugin arp = new ActiveRecordPlugin(druidPlugin);
//		 if (isLocal) {
//		 arp.setShowSql(true);
//		 }
//		 arp.addMapping("module", Module.class).addMapping("topic",
//		 Topic.class)
//		 .addMapping("post", Post.class);
//		 arp.addMapping("reply", Reply.class).addMapping("user", User.class);
//		 me.add(arp);
//		 // 缓存插件
//		 me.add(new EhCachePlugin());
		
		// 初始化连接池插件
		loadPropertyFile("jdbc.properties");
		HikariCPPlugin hcp = new HikariCPPlugin(getProperty("jdbcUrl"),
				getProperty("user"), getProperty("password"),
				getProperty("driverClass"), getPropertyToInt("maxPoolSize"));

		me.add(hcp);
		// // 缓存插件
		me.add(new EhCachePlugin());

		ActiveRecordPlugin arp = new ActiveRecordPlugin(hcp);
		me.add(arp);
		if (isLocal) {
			arp.setShowSql(true);
		}
		arp.addMapping("user", User.USER_ID, User.class);// 用户表
		arp.addMapping("registerCode", RegisterCode.MOBILE, RegisterCode.class); // 注册验证码对象
		arp.addMapping("feedback", FeedBack.class); // 意见反馈表
		arp.addMapping("dayword", DayWord.class); // 每日一言表
		arp.addMapping("module", Module.class); 

	}

	/**
	 * 配置全局拦截器
	 */
	@Override
	public void configInterceptor(Interceptors me) {
		me.add(new SessionInViewInterceptor());
		me.add(new GlobalInterceptor());
		me.add(new ErrorInterceptor());
	}

	/**
	 * 配置处理器
	 */
	public void configHandler(Handlers me) {
		me.add(new ContextHandler());
		me.add(new APINotFoundHandler());
	}

	/**
	 * 初始化常量
	 */
	public void afterJFinalStart() {
		Context.me().init();

		MyConstants.TOPIC_PAGE_SIZE = getPropertyToInt("topic_page_size", 12);
		MyConstants.POST_PAGE_SIZE = getPropertyToInt("post_page_size", 8);
		MyConstants.REPLY_PAGE_SIZE = getPropertyToInt("reply_page_size", 5);
		MyConstants.SIDEBAR_TOPIC_SIZE = getPropertyToInt("sidebar_topic_size",
				10);
		MyConstants.PAGE_SIZE_FOR_ADMIN = getPropertyToInt(
				"page_size_for_admin", 30);
		MyConstants.ADMIN_EMAIL = getProperty("admin_email");
	}

	@Override
	public void beforeJFinalStop() {
		Context.me().destroy();
	}

	/**
	 * 建议使用 JFinal 手册推荐的方式启动项目 运行此 main
	 * 方法可以启动项目，此main方法可以放置在任意的Class类定义中，不一定要放于此 第一个参数填写的是“WEB-INF”文件夹的父文件夹名称
	 * 第二个参数是设置访问的端口号 第三个参数是设置该项目的访问根目录 第四个参数是设置jetty每隔几秒钟扫描文件变化并重启应用
	 */
	public static void main(String[] args) throws Exception {
		JFinal.start("WebRoot", 80, "/", 5);
	}
}
