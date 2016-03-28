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
 * API����ʽ����
 */
public class CoreConfig extends JFinalConfig {

	/**
	 * ���ó���
	 */
	public void configConstant(Constants me) {
		// ���ر�Ҫ���ã�������PropKit.get(...)��ȡֵ
		PropKit.use("onroad_config.txt");
		// ���ÿ���ģʽ
		me.setDevMode(PropKit.getBoolean("devMode", false));
		// ������ͼ����ΪJsp������Ĭ��ΪFreeMarker
		me.setViewType(ViewType.JSP);

	}

	/**
	 * ����·��
	 */
	@Override
	public void configRoute(Routes me) {
		me.add("/", IndexController.class, "/index");
		// ����������Ϊ��Controller����ͼ���·��
		me.add("/quotation", QuotationController.class);
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
		// ����Mysql
		arp.setDialect(new MysqlDialect());

		// �������������ֶ�������Сд��������������
		arp.setContainerFactory(new CaseInsensitiveContainerFactory());
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

	/**
	 * ����ʹ�� JFinal �ֲ��Ƽ��ķ�ʽ������Ŀ ���д� main
	 * ��������������Ŀ����main�������Է����������Class�ඨ���У���һ��Ҫ���ڴ�
	 */
	public static void main(String[] args) {
		JFinal.start("WebRoot", 80, "/", 5);
	}
}
