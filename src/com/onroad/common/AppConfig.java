package com.onroad.common;

import com.jfinal.config.Constants;
import com.jfinal.config.Handlers;
import com.jfinal.config.Interceptors;
import com.jfinal.config.JFinalConfig;
import com.jfinal.config.Plugins;
import com.jfinal.config.Routes;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.render.ViewType;
import com.onroad.config.Context;
import com.onroad.handler.APINotFoundHandler;
import com.onroad.handler.ContextHandler;
import com.onroad.interceptor.ErrorInterceptor;
import com.onroad.model.FeedBack;
import com.onroad.model.RegisterCode;
import com.onroad.model.User;
import com.onroad.plugin.HikariCPPlugin;
import com.onroad.router.APIRouter;
import com.onroad.router.ActionRouter;

/**
 * JFinal总配置文件，挂接所有接口与插件
 * @author mlongbo
 */
public class AppConfig extends JFinalConfig {

    /**
     * 常量配置
     */
	@Override
	public void configConstant(Constants me) {
		me.setDevMode(true);//开启开发模式
		me.setEncoding("UTF-8");
        me.setViewType(ViewType.JSP);
	}

    /**
     * 所有接口配置
     */
	@Override
	public void configRoute(Routes me) {
		me.add(new APIRouter());//接口路由
        me.add(new ActionRouter()); //页面路由
	}

    /**
     * 插件配置
     */
	@Override
	public void configPlugin(Plugins me) {
//		C3p0Plugin cp = new C3p0Plugin(loadPropertyFile("jdbc.properties"));
//		me.add(cp);
        
        //初始化连接池插件
        loadPropertyFile("jdbc.properties");
        HikariCPPlugin hcp = new HikariCPPlugin(getProperty("jdbcUrl"), 
                getProperty("user"), 
                getProperty("password"), 
                getProperty("driverClass"), 
                getPropertyToInt("maxPoolSize"));
        
        me.add(hcp);
        
        ActiveRecordPlugin arp = new ActiveRecordPlugin(hcp);
		me.add(arp);
		
		arp.addMapping("t_user", User.USER_ID, User.class);//用户表
        arp.addMapping("t_register_code", RegisterCode.MOBILE, RegisterCode.class); //注册验证码对象
        arp.addMapping("t_feedback", FeedBack.class); //意见反馈表
	}

    /**
     * 拦截器配置
     */
	@Override
	public void configInterceptor(Interceptors me) {
		me.add(new ErrorInterceptor());
		
	}

    /**
     * handle 配置*
     */
	@Override
	public void configHandler(Handlers me) {
        me.add(new ContextHandler());
		me.add(new APINotFoundHandler());
	}

    @Override
    public void afterJFinalStart() {
        Context.me().init();
    }

    @Override
    public void beforeJFinalStop() {
        Context.me().destroy();
    }
}