package com.onroad.common.config;

import com.jfinal.config.Constants;
import com.jfinal.config.Handlers;
import com.jfinal.config.Interceptors;
import com.jfinal.config.JFinalConfig;
import com.jfinal.config.Plugins;
import com.jfinal.config.Routes;
import com.jfinal.kit.PropKit;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.c3p0.C3p0Plugin;
import com.onroad.common.model._MappingKit;

/**
 * API����ʽ����
 */
public class DemoConfig extends JFinalConfig {

	/**
	 * ���ó���
	 */
	public void configConstant(Constants me) {
		// ���ر�Ҫ���ã�������PropKit.get(...)��ȡֵ
		PropKit.use("config.txt");
		me.setDevMode(PropKit.getBoolean("devMode", false));
	}

	/**
	 * �������ݿ⣬url���û���������
	 */
	public static C3p0Plugin createC3p0Plugin() {
		return new C3p0Plugin(PropKit.get("jdbcUrl"), PropKit.get("user"),
				PropKit.get("password").trim());
	}

	/**
	 * ���ò��
	 */
	public void configPlugin(Plugins me) {
		// ����C3p0���ݿ����ӳز��/
		C3p0Plugin C3p0Plugin = createC3p0Plugin();
		me.add(C3p0Plugin);

		// ����ActiveRecord���
		ActiveRecordPlugin arp = new ActiveRecordPlugin(C3p0Plugin);
		me.add(arp);

		// ���������� MappingKit �и㶨
		_MappingKit.mapping(arp);
	}

	/**
	 * ����ȫ��������
	 */
	public void configInterceptor(Interceptors me) {

	}

	/**
	 * ���ô�����
	 */
	public void configHandler(Handlers me) {

	}

	@Override
	public void configRoute(Routes me) {
		me.add("onroad", HelloController.class);
	}

}
