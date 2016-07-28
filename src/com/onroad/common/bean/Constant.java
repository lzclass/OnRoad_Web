package com.onroad.common.bean;

import com.onroad.config.AppProperty;

/**
 * @description 
 * @author liuzhao
 * @date 2016年7月28日下午4:00:22
 */
public class Constant {
	private static Constant me = new Constant();

	private String resourceServer;

	/**
	 * 获取单例对象
	 * 
	 * @return
	 */
	public static Constant me() {
		return me;
	}

	public String getResourceServer() {
		return AppProperty.me().resourcePrefix();
	}

	public void setResourceServer(String resourceServer) {
		this.resourceServer = resourceServer;
	}
}
